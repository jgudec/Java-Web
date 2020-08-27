package com.phoneshop.dao.impl;

import com.phoneshop.dao.CustomerOrderDao;
import com.phoneshop.model.Customer;
import com.phoneshop.model.CustomerOrder;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao {

    @Autowired
    private SessionFactory sessionFactory;


    public void addCustomerOrder(CustomerOrder customerOrder) {
        Session session = sessionFactory.getCurrentSession();
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
        Date date = new Date();
        customerOrder.setDate(dateFormat.format(date));
        session.saveOrUpdate(customerOrder);
        session.flush();
    }

    public List<CustomerOrder> getCustomerOrders(Customer customer) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from CustomerOrder where customerId=?");
        query.setInteger(0, customer.getCustomerId());
        List<CustomerOrder> orderList = query.list();
        session.flush();
        return orderList;
    }

    public double getCustomerOrderGrandTotal(int cartId) {
        return 0;
    }
}
