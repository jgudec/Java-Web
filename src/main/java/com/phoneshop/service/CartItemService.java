package com.phoneshop.service;

import com.phoneshop.model.Cart;
import com.phoneshop.model.CartItem;

public interface CartItemService {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);
}
