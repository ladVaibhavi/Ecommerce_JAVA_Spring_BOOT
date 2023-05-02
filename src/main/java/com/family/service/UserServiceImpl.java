package com.family.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.text.SimpleDateFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.family.model.Address;
import com.family.model.Cart;
import com.family.model.Customer;
import com.family.model.Product;
import com.family.utils.SpringContext;
import com.family.DAO.ProductCrud;
import com.family.DAO.UserCrud;

@Service
@Component
public class UserServiceImpl {

	@Autowired
	private UserCrud usercrud;

	@Autowired
	private ProductCrud productcrud;

	@Autowired
	private CartService cartService;
	
	public void AddCustomer(Customer customer) {
		usercrud.newCustomer(customer);
	}

	public void AddProduct(Product product) {
		productcrud.AddProduct(product);
	}

	public void UpdateProduct(Product product) {
		productcrud.UpdateProduct(product);
	}

	public List<Product> getAllProduct() {
		return productcrud.getProduct();
	}

	public List<Product> get_product(int start, String type) {
		return productcrud.get_product(start, type);
	}

	public List<Product> get_product(int start) {
		return productcrud.get_product(start);
	}
	
	public int number_of_product(String catagory) {
		return productcrud.number_of_product(catagory);
	}

	public Product getProduct(int id) {
		return productcrud.getProduct(id);
	}

	public void delete_product(int id) {
		productcrud.delete_product(id);
	}

	public void addAddress(Address address) {
		usercrud.saveAddres(address);
	}

	public int Authentication(Customer customer) {
		int id = usercrud.is_valid(customer);
		return id;
	}

	public void updateMyProfile(Customer customer, int id) {
		ApplicationContext context = SpringContext.getAppContext();
		Customer customer_data = usercrud.get_customer(id);
		customer_data.setFirstname(customer.getFirstname());
		customer_data.setLastName(customer.getLastName());
		customer_data.setEmail(customer.getEmail());
		if (customer.getImage().length > 1) {
			customer_data.setImage(customer.getImage());
		}

		customer_data.setPhone_no(customer.getPhone_no());
		usercrud.updateCustomerData(customer_data);
	}

	public Address get_address(int customer_id, char type) {
		return usercrud.getAddress(customer_id, type);
	}

	public void update_address(Address address) {
		usercrud.updateAddres(address);
	}

	public Customer get_customer(int customer_id) {
		return usercrud.get_customer(customer_id);
	}

	public String customer_bill(int customer_id,String card_number, String month, String year, String cvv, int order_id)
	{
		List<Cart> cart = cartService.get_cart(customer_id);
		 Address billing = get_address(customer_id, 'b');
	  	List<Product> products = new ArrayList<Product>();
	  	for(int i=0; i<cart.size(); i++)
	  	{
	  		products.add(getProduct(cart.get(i).getProduct_id()));
	  	}
	  	int total = 0;
	  	SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		String bill = " <!doctype html> " 
         + "   <html>  " 
         + " <head> "     
         + " <style>  " 
         + " .text-green{  " 
         + " color:#11b886;  " 
         + " font-weight: bold;  " 
         + " }  " 
         + "#products {  "  
         + "width:80%;  " 
         + "border:1px solid black;  " 
         + "margin-top:30px;   " 
         + "}   " 
         + "thead{  " 
         + "background-color:#defaf2;  "  
         + "}   "
         + ".total-amount{  " 
         + "text-align:right;  "  
         + "margin-right:10%;  " 
         + "}  " 
         + ".order-date{  " 
         + "display:inline-block;  " 
         + "}  " 
         + "#date{  " 
         + "margin-left:10%;  "  
         + "margin-right:10%;  " 
         + "}  "  
         + "p{  "
         + "margin-left:10%;   " 
         + "margin-bottom:-10px;  " 
         + "}   " 
         + "h3{   " 
         + "margin-left:10%; }  " 
         + "</style>  " 
         + "</head>  " 
         + "<body>  " 
         + "<div style='margin-left:10%;'>  " 
         + "      <h2 class='order-date'>Order #<span class='text-green' >"+ order_id +"</span>  " 
         + "    </h2>  " 
         + "    <h2 class='order-date' id='date' >Order Date : <span class='text-green' > "+ formatter.format(new Date())+"</span> </h2>  " 
         + "</div>  "
         + "<h3 >Delivery Address : "+ billing.getAddress()+ "</h3>  " 
         + "<p>City : "+billing.getCity() + "</p>  " 
         + "<p>Country : "+billing.getCountry() + "</p>  " 
         + "<p>Zip Code : "+billing.getPincode() + "</p>  " 
         + "<center> "
         + "<table id='products' > "
         + " <thead class='bg-gray-100'> "
         + "<tr> "
             + "    <th>Product Name </th> "
             + "<th>Quantity</th> "
                 + "<th>Price</th> "
                 + "<th>Total</th> "
                 + " </tr> "
	            + " </thead> "
             + "<tbody>" ;
		for(int i=0; i<cart.size(); i++)
            { bill += " <tr>"
               + "  <td>"+products.get(i).getName()+"</td>"
               + "  <td>"+cart.get(i).getProduct_quantity()+"</td>"
               + "  <td>"+products.get(i).getPrice()+"</td>"
               + "  <td>"+(products.get(i).getPrice() - (products.get(i).getPrice()*0.01*products.get(i).getDiscount()))*cart.get(i).getProduct_quantity()+"</td> "
               + "  </tr>" ;
            total += (products.get(i).getPrice() - (products.get(i).getPrice()*0.01*products.get(i).getDiscount()))*cart.get(i).getProduct_quantity();
            }
          bill += "  </tbody> "
        + " </table>"
        + " </center>"
        + " <div class='total-amount' > "
        + " <h2 > "
            + "   Total Ruppes: <span class='text-green' >"+ total +"</span> "
            + " </h2> "
        + " </div> "
        + " <h2 style='margin-left:10%;'>Payment Details</h2> "
         + " <table style='border:1px solid black;margin-left:10%;'> "
         + "  <tr style='text-align:left;'> "
         + "    <td class='text-green'>Card Number</th> "
         + "    <td >"+card_number+"</td> "
             + "</tr> "
            + " <tr style='text-align:left;'> "
         + "       <td class='text-green'>CVV</th> "
         + "     <td >"+ cvv +"</td> "
          + " </tr> " 
        + "     <tr style='text-align:left;'> "
         + "     <td class='text-green'>Month</th> "
         + "     <td >"+ month +"</td> "
           + "  </tr> "
            + " </tr> " 
        + "     <tr style='text-align:left;'> "
         + "     <td class='text-green'>Expires (Year) </th> "
         + "     <td >"+ year +"</td> "
           + "  </tr> "
     + "    </table> "
	    
    + " </body> "
    + " </html>" ;
		return bill;
	}

	public int get_total_products() {
		
		return productcrud.get_total_products();
	}

	public int get_total_customers() {
		return usercrud.get_total_customer();
	}

	public int total_out_of_stock_products() {
	 
		return productcrud.total_out_of_stock_products();
		
	}
}
