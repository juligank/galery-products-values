// src/App.js
import React, { useState } from 'react';
import ProductList from './components/ProductList';
import products from './data/products'; // Asegúrate de tener esta ruta correctamente
import Cart from './components/Cart';

const App = () => {
  const [cartItems, setCartItems] = useState([]);
  const [isCartVisible, setIsCartVisible] = useState(false); // Estado para mostrar/ocultar el carrito

  const onAddToCart = (product) => {
    setCartItems((prevItems) => [...prevItems, product]);
  };

  const onRemove = (product) => {
    setCartItems((prevItems) => prevItems.filter(item => item.id !== product.id));
  };

  const toggleCart = () => {
    setIsCartVisible(!isCartVisible); // Cambia la visibilidad del carrito
  };

  return (
    <div>
      <h1>Galería de Productos</h1>
      <ProductList products={products} onAddToCart={onAddToCart} />
      {/* Botón para mostrar/ocultar el carrito */}
      <button 
        onClick={toggleCart} 
        style={{ position: 'fixed', bottom: '20px', right: '20px', fontSize: '24px' }}
      >
        {isCartVisible ? '❌' : '🛒'} {/* Cambia el icono según el estado */}
      </button>
      {/* Renderiza el carrito solo si es visible */}
      {isCartVisible && (
        <Cart cartItems={cartItems} onRemove={onRemove} />
      )}
    </div>
  );
};

export default App;
