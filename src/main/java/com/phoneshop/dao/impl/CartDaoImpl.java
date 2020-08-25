package com.phoneshop.dao.impl;

import com.phoneshop.dao.CartDao;
import com.phoneshop.model.Cart;
import com.phoneshop.service.CustomerOrderService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;

@Repository
@Transactional
public class CartDaoImpl implements CartDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private CustomerOrderService customerOrderService;


    public Cart getCartById(int cartId) {
        Session session = sessionFactory.getCurrentSession();
        return (Cart) session.get(Cart.class,cartId);
    }

    public void updateCart(Cart cart) {
        int cartId = cart.getCartId();
        double grandTotal = customerOrderService.getCustomerOrderGrandTotal(cartId);
        cart.setGrandTotal(grandTotal);

        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cart);
        session.flush();
    }

    public Cart validate(int cartId) throws IOException {
        Cart cart = getCartById(cartId);
        if(cart == null || cart.getCartItems().size()==0){
            throw new IOException(cartId+"");
        }
        updateCart(cart);
        return cart;
    }
}
