package com.phoneshop.service;

import com.phoneshop.model.Customer;
import com.phoneshop.model.CustomerOrder;

import java.util.List;

public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);

    List<CustomerOrder> getCustomerOrders(Customer customer);
}
