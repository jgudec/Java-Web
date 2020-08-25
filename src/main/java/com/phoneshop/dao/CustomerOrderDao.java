package com.phoneshop.dao;

import com.phoneshop.model.Customer;
import com.phoneshop.model.CustomerOrder;

import java.util.List;

public interface CustomerOrderDao {

    void addCustomerOrder(CustomerOrder customerOrder);

    List<CustomerOrder> getCustomerOrders(Customer customer);
}
