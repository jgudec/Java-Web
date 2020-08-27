package com.phoneshop.service;

import com.phoneshop.model.Cart;

public interface CartService {
    Cart getCartById(int cartId);

    void updateCart(Cart cart);
}
