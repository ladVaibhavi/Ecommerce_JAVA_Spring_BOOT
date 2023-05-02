package com.family.family;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.family.DAO.UserCrud;
import com.family.model.Address;
import com.family.model.Cart;
import com.family.model.Customer;
import com.family.model.Order;
import com.family.model.Order_Details;
import com.family.model.Product;
import com.family.service.CartService;
import com.family.service.OrderService;
import com.family.service.UserServiceImpl;
import com.family.utils.SpringContext;
import com.itextpdf.html2pdf.ConverterProperties;
import com.itextpdf.html2pdf.HtmlConverter;
import com.itextpdf.io.source.ByteArrayOutputStream;

@Controller
public class MainController {

	@Autowired
	private UserServiceImpl userService;

	@Autowired
	private CartService cartService;

	@Autowired
	private UserCrud userCrud;

	@Autowired
	private OrderService orderservice;

	@RequestMapping("index")
	public String homepage(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		if (session.getAttribute("id") != null) {
			model.addAttribute("customer_id", session.getAttribute("id"));
		}
		int total_fruits = userService.number_of_product("fruit");
		int total_grocerys = userService.number_of_product("grocery");
		model.addAttribute("fruits", total_fruits);
		model.addAttribute("grocery", total_grocerys);
		return "home";
	}

	@RequestMapping(value = "UpdateCustomerrProfile", method = RequestMethod.POST)
	public String UpdateCustomerrProfile(@RequestParam("image") MultipartFile file, String firstname,
			@RequestParam("lastname") String lastname, @RequestParam("number") String number,
			@RequestParam("email") String email, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("id") == null) {
			return "home";
		}
		String id = session.getAttribute("id").toString();

		byte[] arr = file.getBytes();
		ApplicationContext context = SpringContext.getAppContext();
		Customer customer = context.getBean(Customer.class);
		customer.setEmail(email);
		customer.setFirstname(firstname);
		customer.setLastName(lastname);
		customer.setImage(arr);
		customer.setPhone_no(Long.parseLong(number));

		userService.updateMyProfile(customer, Integer.parseInt(id));
		return "redirect:my-profile";
	}

	@RequestMapping(value = "Registration", method = RequestMethod.POST)
	public String Registration(@RequestParam("email") String email, @RequestParam("password") String password,
			@RequestParam("cpassword") String cpassword) {

		ApplicationContext context = SpringContext.getAppContext();
		Customer customer = context.getBean(Customer.class);
		customer.setEmail(email);
		customer.setPassword(password);

		userService.AddCustomer(customer);
		Address address = context.getBean(Address.class);
		address.setCustomer_id(customer.getId());
		address.setAddress_type('s');
		userService.addAddress(address);
		Address address1 = context.getBean(Address.class);
		address1.setCustomer_id(customer.getId());
		address1.setAddress_type('b');

		userService.addAddress(address1);
		return "home";
	}

	@RequestMapping("AdminPage")
	public String AdminPage() {
		return "AdminPage";
	}

	@RequestMapping(value = "Login", method = RequestMethod.POST)
	public String Login(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpServletRequest request) {
		if (email.equals("admin@gmail.com") && password.equals("admin")) {
			return "redirect:AdminPage";
		}
		ApplicationContext context = SpringContext.getAppContext();
		Customer customer = context.getBean(Customer.class);
		customer.setEmail(email);
		customer.setPassword(password);
		int id = userService.Authentication(customer);
		if (id != 0) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			session.setMaxInactiveInterval(10 * 60);
			return "redirect:my-profile";
		}

		return "home";
	}

	@RequestMapping("logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/index";
	}

	@RequestMapping("my-profile")
	public String myprofile(HttpServletRequest request, Model model) throws UnsupportedEncodingException {
		HttpSession session = request.getSession();
		if (session.getAttribute("id") == null) {
			return "home";
		}
		Customer customer = userCrud.get_customer((Integer) session.getAttribute("id"));
		model.addAttribute("customer_id", session.getAttribute("id"));
		byte[] arr = customer.getImage();
		if (arr != null) {
			byte[] encodeBase64 = Base64.getEncoder().encode(arr);
			String base64Encoded = new String(encodeBase64, "UTF-8");
			model.addAttribute("userImage", base64Encoded);

		}
		model.addAttribute("customer", customer);
		return "my-profile";
	}

	@RequestMapping("about")
	public String aboutpage() {
		return "about";
	}

	@RequestMapping("cart/update")
	public String remove_product(HttpServletRequest request, String quan, String product_id) {
		HttpSession session = request.getSession();
		if (session.getAttribute("id") == null) {
			return "redirect:/home";
		}
		Cart cart = cartService.get_cart((Integer) session.getAttribute("id"), Integer.parseInt(product_id));
		cart.setProduct_quantity(Integer.parseInt(quan));
		cartService.update_cart(cart);
		return "redirect:/cart";
	}

	@RequestMapping("cart/remove/{product_id}")
	public String remove_product(HttpServletRequest request, @PathVariable(value = "product_id") String id) {
		HttpSession session = request.getSession();
		if (session.getAttribute("id") == null) {
			return "home";
		}
		int customer_id = (Integer) session.getAttribute("id");
		int product_Id = Integer.parseInt(id);
		cartService.remove_product(customer_id, product_Id);
		return "redirect:/cart";
	}

	@RequestMapping("cart")
	public String cart(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		if (session.getAttribute("id") == null) {
			return "home";
		}

		model.addAttribute("customer_id", session.getAttribute("id"));
		int id = (Integer) (session.getAttribute("id"));
		List<Cart> cart = cartService.get_cart(id);
		List<Product> products = new ArrayList<Product>();
		for (int i = 0; i < cart.size(); i++) {
			products.add(userService.getProduct(cart.get(i).getProduct_id()));
		}
		model.addAttribute("products", products);
		model.addAttribute("carts", cart);
		return "cart";
	}

	@RequestMapping("checkout")
	public String checkout(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		if (session.getAttribute("id") == null) {
			return "home";
		}
		int customer_id = (Integer) (session.getAttribute("id"));
		model.addAttribute("customer_id", session.getAttribute("id"));
		Address shipping = userService.get_address(customer_id, 's');
		Address billing = userService.get_address(customer_id, 'b');
		Customer customer = userService.get_customer(customer_id);
		model.addAttribute("phone", customer.getPhone_no());
		model.addAttribute("shipping", shipping);
		model.addAttribute("billing", billing);
		return "checkout";
	}

	@RequestMapping("faq")
	public String faq() {
		return "faq";
	}

	@RequestMapping("my-address")
	public String myaddress(HttpServletRequest request, Model model) throws UnsupportedEncodingException {
		HttpSession session = request.getSession();
		if (session.getAttribute("id") == null) {
			return "home";
		}
		int customer_id = (Integer) (session.getAttribute("id"));
		model.addAttribute("customer_id", session.getAttribute("id"));
		Customer customer = userService.get_customer(customer_id);
		Address shipping = userService.get_address(customer_id, 's');
		Address billing = userService.get_address(customer_id, 'b');
		byte[] arr = customer.getImage();
		if (arr != null) {
			byte[] encodeBase64 = Base64.getEncoder().encode(arr);
			String base64Encoded = new String(encodeBase64, "UTF-8");
			model.addAttribute("userImage", base64Encoded);

		}
		model.addAttribute("customer", customer);
		model.addAttribute("shipping", shipping);
		model.addAttribute("billing", billing);
		return "my-address";
	}

	@RequestMapping("update-address")
	public String updateAddress(HttpServletRequest request, @RequestParam("scountry") String scountry,
			@RequestParam("scity") String scity, @RequestParam("spincode") String spincode,
			@RequestParam("sstate") String sstate, @RequestParam("saddress") String saddress,
			@RequestParam("bcountry") String bcountry, @RequestParam("bcity") String bcity,
			@RequestParam("bpincode") String bpincode, @RequestParam("bstate") String bstate,
			@RequestParam("baddress") String baddress) {
		HttpSession session = request.getSession();
		if (session.getAttribute("id") == null) {
			return "home";
		}
		int customer_id = (Integer) (session.getAttribute("id"));
		Address shipping = userService.get_address(customer_id, 's');
		Address billing = userService.get_address(customer_id, 'b');
		shipping.setCity(scity);
		shipping.setState(sstate);
		shipping.setPincode(Integer.parseInt(spincode));
		shipping.setAddress(saddress);
		shipping.setCountry(scountry);
		userCrud.updateAddres(shipping);

		billing.setCountry(bcountry);
		billing.setCity(bcity);
		billing.setState(bstate);
		billing.setPincode(Integer.parseInt(bpincode));
		billing.setAddress(baddress);

		userCrud.updateAddres(billing);

		return "redirect:my-address";
	}

	@RequestMapping("not-found")
	public String notfound() {
		return "not-found";
	}

	@RequestMapping("orderlist")
	public String orderlist(HttpServletRequest request, Model model) throws UnsupportedEncodingException {
		HttpSession session = request.getSession();
		if (session.getAttribute("id") == null) {
			return "home";
		}
		List<Order> orders = orderservice.get_orders((Integer) session.getAttribute("id"));
		Customer customer = userService.get_customer((Integer) session.getAttribute("id"));
		byte[] arr = customer.getImage();
		if (arr != null) {
			byte[] encodeBase64 = Base64.getEncoder().encode(arr);
			String base64Encoded = new String(encodeBase64, "UTF-8");
			model.addAttribute("userImage", base64Encoded);

		}
		model.addAttribute("customer", customer);
		model.addAttribute("orders", orders);
		return "orderlist";
	}

	@RequestMapping({ "shop/Fruits/{page}", "shop/Fruits" })
	public String shop(Model model, @PathVariable(value = "page", required = false) String id,
			HttpServletRequest request) {
		float total_products = userService.number_of_product("fruit");
		HttpSession session = request.getSession();
		if (session.getAttribute("id") != null) {
			model.addAttribute("customer_id", session.getAttribute("id"));
		} else {
			model.addAttribute("customer_id", "");
		}
		model.addAttribute("catagory", "Fruits And Vegitables");
		if (id != null) {
			int page = Integer.parseInt(id);
			model.addAttribute("current", page);
			if (page == 1) {
				model.addAttribute("previous", "#");
			} else {
				model.addAttribute("previous", page - 1);
			}
			if ((Math.ceil(total_products / 2)) == page) {
				model.addAttribute("next", "#");
			} else {
				model.addAttribute("next", page + 1);
			}
			List<Product> product = userService.get_product(((page - 1) * 2), "fruit");
			model.addAttribute("products", product);
		} else {
			model.addAttribute("previous", "#");
			model.addAttribute("current", 1);
			if ((Math.ceil(total_products / 2)) <= 1) {
				model.addAttribute("next", "#");
			} else {
				model.addAttribute("next", "2");
			}
			List<Product> product = userService.get_product(0, "fruit");
			model.addAttribute("products", product);
		}

		return "shop";
	}

	@RequestMapping({ "shop/Grocery/{page}", "shop/Grocery" })
	public String shop_gorcery(Model model, @PathVariable(value = "page", required = false) String id,
			HttpServletRequest request) {
		float total_products = userService.number_of_product("grocery");
		HttpSession session = request.getSession();
		if (session.getAttribute("id") != null) {
			model.addAttribute("customer_id", session.getAttribute("id"));
		} else {
			model.addAttribute("customer_id", "");
		}
		model.addAttribute("catagory", "grocery");
		if (id != null) {
			int page = Integer.parseInt(id);
			model.addAttribute("current", page);
			if (page == 1) {
				model.addAttribute("previous", "#");
			} else {
				model.addAttribute("previous", page - 1);
			}
			if ((Math.ceil(total_products / 2)) == page) {
				model.addAttribute("next", "#");
			} else {
				model.addAttribute("next", page + 1);
			}
			List<Product> product = userService.get_product(((page - 1) * 2), "grocery");
			model.addAttribute("products", product);
		} else {
			model.addAttribute("previous", "#");
			model.addAttribute("current", 1);
			if ((Math.ceil(total_products / 2)) <= 1) {
				model.addAttribute("next", "#");
			} else {
				model.addAttribute("next", "2");
			}
			List<Product> product = userService.get_product(0, "grocery");
			model.addAttribute("products", product);
		}

		return "shop";
	}

	@RequestMapping("ViewProductDetails/{productid}")
	public String single(@PathVariable(value = "productid", required = false) String id, Model model,
			HttpServletRequest request) {
		int product_id = Integer.parseInt(id);
		Product product = userService.getProduct(product_id);
		HttpSession session = request.getSession();
		if (session.getAttribute("id") != null) {
			model.addAttribute("customer_id", session.getAttribute("id"));
		} else {
			model.addAttribute("customer_id", "");
		}
		model.addAttribute("product", product);
		return "single";
	}

	@RequestMapping("addtocart")
	public String addtocart(String quantity, String id, HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		if (session.getAttribute("id") == null) {
			return "home";
		}
		int user_id = (int) session.getAttribute("id");
		Product product = userService.getProduct(Integer.parseInt(id));
		int quant = Integer.parseInt(quantity);
		if (quant > product.getQuantity()) {
			model.addAttribute("product", product);
			model.addAttribute("quantity", product.getQuantity());
			return "single";
		}
		ApplicationContext context = SpringContext.getAppContext();
		Cart cart = context.getBean(Cart.class);
		cart.setCart_id(user_id);
		cart.setProduct_id(Integer.parseInt(id));
		cart.setProduct_quantity(quant);
		cartService.save_cart(cart);

		return "redirect:/index";
	}

	@RequestMapping("addproduct")
	public String addproduct(String name, @RequestParam("image") MultipartFile file, String available_in, String price,
			String discount, String quantity, String catagory, String description) throws IOException {
		ApplicationContext context = SpringContext.getAppContext();
		Product product = context.getBean(Product.class);
		product.setName(name);
		product.setDescription(description);
		product.setPrice(Integer.parseInt(price));
		product.setDiscount(Integer.parseInt(discount));
		product.setQuantity(Integer.parseInt(quantity));
		product.setAvailable_in(available_in);
		product.setCatagory(catagory);
		byte[] arr = file.getBytes();
		byte[] encodeBase64 = Base64.getEncoder().encode(arr);
		String base64Encoded = new String(encodeBase64, "UTF-8");
		product.setImage(base64Encoded);
		userService.AddProduct(product);
		return "redirect:product";
	}

	@RequestMapping("updateproduct/{id}")
	public String addproduct(@PathVariable(value = "id") String id, String img, String name,
			@RequestParam("image") MultipartFile file, String available_in, String price, String discount,
			String quantity, String catagory, String description) throws IOException {
		Product product = userService.getProduct(Integer.parseInt(id));
		product.setName(name);
		product.setDescription(description);
		product.setPrice(Integer.parseInt(price));
		product.setDiscount(Integer.parseInt(discount));
		product.setQuantity(Integer.parseInt(quantity));
		product.setAvailable_in(available_in);
		product.setCatagory(catagory);

		if (img.equals("changed")) {
			byte[] arr = file.getBytes();
			byte[] encodeBase64 = Base64.getEncoder().encode(arr);
			String base64Encoded = new String(encodeBase64, "UTF-8");
			product.setImage(base64Encoded);
		}
		userService.UpdateProduct(product);
		return "redirect:/ViewProduct/";
	}

	@RequestMapping("product")
	public String product() {
		return "addproduct";
	}

	@RequestMapping("ViewProduct/update/{id}")
	public String update_view(@PathVariable(value = "id") String id, Model model) {
		Product product = userService.getProduct(Integer.parseInt(id));
		model.addAttribute("product", product);

		return "addproduct";
	}

	@RequestMapping({ "ViewProduct/{page}", "ViewProduct" })
	public String viewproduct(Model model, @PathVariable(value = "page", required = false) String id)
			throws UnsupportedEncodingException {
		float total_products = userService.number_of_product("fruit") + userService.number_of_product("grocery");

		if (id != null) {
			int page = Integer.parseInt(id);
			model.addAttribute("current", page);
			if (page == 1) {
				model.addAttribute("previous", "#");
			} else {
				model.addAttribute("previous", page - 1);
			}
			if ((Math.ceil(total_products / 2)) == page) {
				model.addAttribute("next", "#");
			} else {
				model.addAttribute("next", page + 1);
			}
			List<Product> product = userService.get_product(((page - 1) * 2));
			model.addAttribute("products", product);
		} else {
			model.addAttribute("previous", "#");
			model.addAttribute("current", 1);
			if ((Math.ceil(total_products / 2)) <= 1) {
				model.addAttribute("next", "#");
			} else {
				model.addAttribute("next", "2");
			}
			List<Product> product = userService.get_product(0);
			model.addAttribute("products", product);
		}
		return "viewproduct";
	}

	@RequestMapping("ViewProduct/delete/{id}")
	public String deleteproduct(@PathVariable(value = "id") String id) {
		userService.delete_product(Integer.parseInt(id));
		return "redirect:/ViewProduct";
	}

	@RequestMapping("pdf")
	public ResponseEntity<?> getPDF(HttpServletRequest request, HttpServletResponse response, String card_number,
			String month, String year, String cvv) throws IOException {

		HttpSession session = request.getSession();
		ApplicationContext context = SpringContext.getAppContext();
		Order order = context.getBean(Order.class);
		orderservice.save_order(order);
		String orderHtml = userService.customer_bill((Integer) session.getAttribute("id"), card_number, month, year,
				cvv, order.getOrder_id());

		order.setCustomer_id((Integer) session.getAttribute("id"));
		order.setOrder_date(new Date());
		orderservice.update_order(order);

		List<Cart> cart = cartService.get_cart((Integer) session.getAttribute("id"));
		List<Product> products = new ArrayList<Product>();
		Product temp = null;
		for (int i = 0; i < cart.size(); i++) {
			temp = userService.getProduct(cart.get(i).getProduct_id());
			temp.setQuantity(temp.getQuantity() - cart.get(i).getProduct_quantity());
			userService.UpdateProduct(temp);
			products.add(temp);
		}
		int order_id = order.getOrder_id();
		int total_price = 0;
		for (int i = 0; i < cart.size(); i++) {
			Order_Details order_details = context.getBean(Order_Details.class);
			order_details.setOrder_id(order_id);
			order_details.setProduct_id(products.get(i).getId());
			order_details.setProduct_price((int) (products.get(i).getPrice()
					- (products.get(i).getPrice() * 0.01 * products.get(i).getDiscount())));
			orderservice.save_order_details(order_details);
			total_price += (products.get(i).getPrice()
					- (products.get(i).getPrice() * 0.01 * products.get(i).getDiscount()))
					* cart.get(i).getProduct_quantity();
		}
		order.setPrice(total_price);
		orderservice.update_order(order);
		cartService.delete_cart((Integer) session.getAttribute("id"));
		/* Setup Source and target I/O streams */

		ByteArrayOutputStream target = new ByteArrayOutputStream();

		/* Setup converter properties. */
		ConverterProperties converterProperties = new ConverterProperties();

		converterProperties.setBaseUri("http://localhost:8080");

		/* Call convert method */
		HtmlConverter.convertToPdf(orderHtml, target, converterProperties);

		/* extract output as bytes */
		byte[] bytes = target.toByteArray();

		/* Send the response as downloadable PDF */
		return ResponseEntity.ok().contentType(MediaType.APPLICATION_PDF).body(bytes);

	}
}
