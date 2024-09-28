#!/bin/bash

# Crear carpetas y archivos necesarios
mkdir -p src/components

# Crear archivos
touch src/components/Product.js
touch src/components/ProductList.js
touch src/components/Cart.js
touch src/App.js
touch src/index.js
touch src/styles.css

# Opcional: Agregar contenido básico a cada archivo
echo "// src/components/Product.js" > src/components/Product.js
echo "import React from 'react';\n\nconst Product = ({ product, addToCart }) => {\n  return (\n    <div className=\"product\">\n      <h2>{product.name}</h2>\n      <p>${product.price}</p>\n      <button onClick={() => addToCart(product)}>Agregar al Carrito</button>\n    </div>\n  );\n};\n\nexport default Product;" >> src/components/Product.js

echo "// src/components/ProductList.js" > src/components/ProductList.js
echo "import React from 'react';\nimport Product from './Product';\n\nconst ProductList = ({ products, addToCart }) => {\n  return (\n    <div className=\"product-list\">\n      {products.map((product) => (\n        <Product key={product.id} product={product} addToCart={addToCart} />\n      ))}\n    </div>\n  );\n};\n\nexport default ProductList;" >> src/components/ProductList.js

echo "// src/components/Cart.js" > src/components/Cart.js
echo "import React from 'react';\n\nconst Cart = ({ cartItems }) => {\n  return (\n    <div className=\"cart\">\n      <h2>Carrito</h2>\n      {cartItems.length === 0 ? (\n        <p>No hay productos en el carrito.</p>\n      ) : (\n        cartItems.map((item, index) => (\n          <div key={index}>\n            <h3>{item.name}</h3>\n            <p>${item.price}</p>\n          </div>\n        ))\n      )}\n    </div>\n  );\n};\n\nexport default Cart;" >> src/components/Cart.js

echo "// src/App.js" > src/App.js
echo "import React, { useState } from 'react';\nimport ProductList from './components/ProductList';\nimport Cart from './components/Cart';\nimport './styles.css';\n\nconst App = () => {\n  const [cart, setCart] = useState([]);\n\n  const products = [\n    { id: 1, name: 'Producto 1', price: 10 },\n    { id: 2, name: 'Producto 2', price: 15 },\n    { id: 3, name: 'Producto 3', price: 20 },\n    // Agrega más productos según sea necesario\n  ];\n\n  const addToCart = (product) => {\n    setCart([...cart, product]);\n  };\n\n  return (\n    <div className=\"app\">\n      <h1>Galería de Productos</h1>\n      <ProductList products={products} addToCart={addToCart} />\n      <Cart cartItems={cart} />\n    </div>\n  );\n};\n\nexport default App;" >> src/App.js

echo "// src/index.js" > src/index.js
echo "import React from 'react';\nimport ReactDOM from 'react-dom/client';\nimport App from './App';\nimport './styles.css';\n\nconst root = ReactDOM.createRoot(document.getElementById('root'));\nroot.render(\n  <React.StrictMode>\n    <App />\n  </React.StrictMode>\n);" >> src/index.js

echo "/* Estilos básicos para la galería de productos */\nbody {\n  font-family: Arial, sans-serif;\n  background-color: #f4f4f4;\n  margin: 0;\n  padding: 20px;\n}\n\n.product, .cart {\n  background: #fff;\n  padding: 10px;\n  margin: 10px;\n  border: 1px solid #ddd;\n}\n\n.product-list {\n  display: flex;\n  flex-wrap: wrap;\n}\n\n.product {\n  flex: 1 0 30%;\n  margin: 10px;\n}" > src/styles.css

echo "Estructura de proyecto creada con éxito."
