import { useState } from "react";
import { useEffect } from "react";
// import reactLogo from './assets/react.svg'
// import viteLogo from '/vite.svg'
// import './App.css'

function App() {
  const [product, setProduct] = useState([]);
  // console.log(product);

  useEffect(() => {
    fetch("http://127.0.0.1:5000/products")
      .then((res) => res.json())
      .then((data) => setProduct(data));
  }, []);

  // console.log(product);

  return (
    <>
      <h1>Products</h1>
      {product.map((product) => (
        <div key={product.id}>
          <h3>{product.ingredients}</h3>
          <h3>{product.name}</h3>
        </div>
      ))}
    </>
  );
}

export default App;
