import './App.css';
import { Routes, Route } from 'react-router-dom';
import Collection from './Collection';
import About from './About'
import Navbar from './Navbar';
import Home from './Home';
import Contact from './Contact'
import { useState, useEffect } from "react"
import React from 'react';
import Cart from './Cart'
import Login from './Login';
import SignUp from './SignUp';
// import { useNavigate } from "react-router-dom"

function App() {

  // state for fetching all paintings 
  const [paintings, setPaintings] = useState([])

  // sets user state to persist for session 
  const [user, setUser] = useState("")


  // let navigate = useNavigate()

  // fetches paintings for public viewing useffect loads automatically
  useEffect(() => {
    fetch("http://localhost:3000/paintings")
      .then(r => r.json())
      .then(data => {
        setPaintings(data)
      })
  }, [])
  // console.log(paintings)




  // user session persist site wide (no reload)
  useEffect(() => {
    fetch("/me").then((response) => {
      if (response.ok) {
        response.json().then((user) => setUser(user));
      }
    });
  }, []);









  return (
      <div>
        <Navbar user={user} setUser={setUser} />

        <Routes>
          <Route path='/' element={<Home />}></Route>
          <Route path='/collection' element={<Collection setPaintings={setPaintings} paintings={paintings} user={user} />} />
          <Route path='/about' element={<About />} />
          <Route path='/contact' element={<Contact />} />
          <Route path='/cart' element={<Cart />} />
          <Route path='/login' element={<Login setUser={setUser} />} />
          <Route path='/signup' element={<SignUp />} />
        </Routes>


      </div>
  );
}

export default App;
