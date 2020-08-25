package com.phoneshop.service.impl;

import com.phoneshop.dao.CartDao;
import com.phoneshop.model.Cart;
import com.phoneshop.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartDao cartDao;

    public Cart getCartById(int cartId) {
        return cartDao.getCartById(cartId);
    }

    public void updateCart(Cart cart) {
        cartDao.updateCart(cart);
    }
}
