package com.phoneshop.dao;

import com.phoneshop.model.Cart;

import java.io.IOException;

/**
 * Created by Le on 1/11/2016.
 */
public interface CartDao {

    Cart getCartById(int cartId);

    void updateCart(Cart cart);

    Cart validate(int cartId) throws IOException;
}
