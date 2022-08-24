import React from "react";
import { useEffect, useState } from "react"



 



function Cart() {

  // const [userCart, setUserCart] = useState('')

  useEffect(() => {
    fetch("http://localhost:3000/carts")
      .then(r => r.json())
      .then(data => {
        // console.log(data)
      })
  }, [])

  //   console.log(userCart)
  //  {userCart?userCart.map(item => console.log(item)) : console.log("ass")
  //   }


  

  return(
    <></>
  )

}

export default Cart;