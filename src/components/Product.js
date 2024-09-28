// src/components/Product.js
import React from 'react';
import { Img } from 'react-image';

const Product = ({ product, onAddToCart }) => {
  return (
    <div className="product">
      <Img 
        src={product.image} // Ruta de la imagen
        alt={product.name} // Texto alternativo
        loader={<div>Cargando...</div>} // Placeholder mientras se carga la imagen
        unloader={<div>Error al cargar la imagen.</div>} // Mensaje en caso de error
      />
      <h3>{product.name}</h3>
      <p>${product.price}</p>
      <button onClick={() => onAddToCart(product)}>Agregar al carrito</button>
    </div>
  );
};

export default Product;
