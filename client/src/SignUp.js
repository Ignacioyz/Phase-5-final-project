import React from 'react'
import "./signup.css"
import { useState } from 'react';
// import { useNavigate } from 'react-router-dom';



export default function SignUp({ openSignUp, closeSignUp }) {
  
  // corespond with the form inputs/table attributes
  // setter function passed to inputs on signUpForm below 
  
  const [username, setUserName] = useState("")
  const [password, setPassword] = useState("")
  const [firstName, setFirstName] = useState("")
  const [lastName, setLastName] = useState("")
  const [address, setAddress] = useState("")
  const [email, setEmail] = useState("")

  // const navigate = useNavigate()

// function handleSubmit is correlated to route in controller - post "/users", to: "users#create" the route allows the user to create an account, in addition to the user controller method: def create 
  function handleSubmit(e) {
    e.preventDefault();
    fetch("/users", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        username: username,
        password: password,
        first_name: firstName,
        last_name: lastName,
        address: address,
        email: email
      }),
    })
      .then((r) => r.json())
      .then(r => {
      //  setTimeout delays the event of closing the signUp modal 1 second to allow the request to be made first 
        setTimeout(() => {
          closeSignUp(!openSignUp)
        }, 1000)
      })
  }

  return (
    <div className='signUpBackground'>
      <div className='signUpContainer'>
        <div className='signUpCloseBtn'>
          <button className='closeSignUp' onClick={() => closeSignUp(false)}> X </button>
        </div>
        <div className='signUpBody'>
          <form className='signUpForm' onSubmit={handleSubmit}>
            <input required className='signUpInput' placeholder='First Name' onChange={(e) => setFirstName(e.target.value)}></input>
            <input required className='signUpInput' placeholder='Last Name' onChange={(e) => setLastName(e.target.value)}></input>
            <input required className='signUpInput' type='address' onChange={(e) => setAddress(e.target.value)} placeholder='Address'></input>
            <input required className='signUpInput' type='email' placeholder='Email' onChange={(e) => setEmail(e.target.value)}></input>
            <input required className='signUpInput' placeholder='Username' onChange={(e) => setUserName(e.target.value)}></input>
            <input required className='signUpInput' type='password' placeholder='Password' onChange={(e) => setPassword(e.target.value)}></input>
            <div className='SignUpfooter' >
              <button className='signup-btn'>Submit</button>
            </div >
          </form>
        </div>
      </div>
    </div>

  )
}
