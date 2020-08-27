package com.phoneshop.controller;

import com.phoneshop.model.Cart;
import com.phoneshop.model.Customer;
import com.phoneshop.model.CustomerOrder;
import com.phoneshop.service.CartService;
import com.phoneshop.service.CustomerOrderService;
import com.phoneshop.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class OrderController {

    @Autowired
    CartService cartService;

    @Autowired
    private CustomerOrderService customerOrderService;

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/order/{cartId}")
    public String createOrder(@PathVariable int cartId){
        CustomerOrder customerOrder = new CustomerOrder();
        Cart cart = cartService.getCartById(cartId);
        customerOrder.setCart(cart);

        Customer customer = cart.getCustomer();
        customerOrder.setCustomer(customer);
        customerOrder.setBillingAddress(customer.getBillingAddress());
        customerOrder.setShippingAddress(customer.getShippingAddress());

        customerOrderService.addCustomerOrder(customerOrder);

        return "redirect:/checkout?cartId="+cartId;
    }

    @RequestMapping("/customerOrders")
    public String getProducts(@AuthenticationPrincipal User activeUser, Model model) {
        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
        List<CustomerOrder> orders = customerOrderService.getCustomerOrders(customer);
        model.addAttribute("orders", orders);

        return "customerOrders";
    }
}
