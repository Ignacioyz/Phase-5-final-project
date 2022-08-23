import React from 'react';
import "./modal.css";
// import {useEffect} from "react"
// import {useState} from "react";
// import Cart from './Cart';

function Modal({ closeModal, item, user, handleRemovePainting}) {
    
    

      // triggered when you click buy
  function handleBuy(item) {
    let id = item.id 
         fetch(`http://localhost:3000/buy/${id}`, {
       method: "PATCH",
       // sending JSON, expecting JSON back 
       headers: { "Content-Type": "aplication/json" },
       body: JSON.stringify({ painting_id: id})
     })
//  console.log(item)
   }

    
    return(      
        <div className='modalBackground'>
             
            <div className='modalContainer'>
            <div className='titleCloseBtn'>
                    <button onClick={() => closeModal(false)}> X </button>
                </div>
                <img className='modalImg' src={item.image_url} alt={item.title}></img>

                <div className='title'> <h2> {item.title}</h2>
                <p>
                 {item.description} <br></br>${item.price}
                </p>
                    <div className='body'>
                        <div className='footer'>
                            <button onClick={() => { handleBuy(item) }} >BUY</button>
                            {user.admin ? <button onClick={() => {handleRemovePainting(item)}} > Delete</button>  : console.log('not admin')}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    )
}

export default Modal