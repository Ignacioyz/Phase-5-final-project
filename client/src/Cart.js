import React from "react";
import { useEffect } from "react"



function Cart() {

  // const [userCart, setUserCart] = useState('')

  useEffect(() => {
    fetch("http://localhost:3000/carts")
      .then(r => r.json())
      .then(data => {

      })
  }, [])





  return (
    <></>
  )

}

export default Cart;