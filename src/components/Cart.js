// src/components/Cart.js
import React from 'react';

const Cart = ({ cartItems, onRemove }) => {
  const total = cartItems.reduce((sum, item) => sum + item.price, 0);

  return (
    <div className="cart">
      <h2>Carrito de Compras</h2>
      {cartItems.length === 0 ? (
        <p>No hay productos en el carrito.</p>
      ) : (
        <ul>
          {cartItems.map((item) => (
            <li key={item.id}>
              {item.name} - ${item.price}
              <button onClick={() => onRemove(item)}>Eliminar</button>
            </li>
          ))}
        </ul>
      )}
      <h3>Total: ${total}</h3>
    </div>
  );
};

export default Cart;

