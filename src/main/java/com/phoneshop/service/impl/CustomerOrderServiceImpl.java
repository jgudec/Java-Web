package com.phoneshop.service.impl;

import com.phoneshop.dao.CustomerOrderDao;
import com.phoneshop.model.Cart;
import com.phoneshop.model.CartItem;
import com.phoneshop.model.Customer;
import com.phoneshop.model.CustomerOrder;
import com.phoneshop.service.CartService;
import com.phoneshop.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

    @Autowired
    private CustomerOrderDao customerOrderDao;

    @Autowired
    private CartService cartService;


    public void addCustomerOrder(CustomerOrder customerOrder) {
        customerOrderDao.addCustomerOrder(customerOrder);
    }

    public double getCustomerOrderGrandTotal(int cartId) {
        double grandTotal = 0;
        Cart cart = cartService.getCartById(cartId);
        List<CartItem> cartItems = cart.getCartItems();

        for(CartItem item : cartItems){
            grandTotal+=item.getTotalPrice();
        }
        return grandTotal;
    }

    public List<CustomerOrder> getCustomerOrders(Customer customer) {
        return customerOrderDao.getCustomerOrders(customer);
    }


}
