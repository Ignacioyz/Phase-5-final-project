import React from 'react';
import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import './login.css';
import SignUp from './SignUp';


function Login({ setUser }) {
    // state for username + password (params that link front and and back end) 
    // temporarily storing info before sending to back end 
    const [username, setUsername] = useState("")
    const [password, setPassword] = useState("")

    // variable we are going to use to refer to useNavigate
    let navigate = useNavigate()

    // function handleSubmit is to create a session on the browser with the user, password that 
    // then can be refered to later when you refresh the page, including the Fetch/me Fetch. 
    // setUser is being passed as another state in APP(parent), and passed down so the app
    //  can use these accross components (site-wide).  

    function handleSubmit(e) {
        e.preventDefault();
        fetch("/login", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                username,
                password
            }),
        })
            .then((r) => r.json())
            .then((user) => setUser(user))
            .then(navigate("/"))
    }

    // signup Modal state vars 
    const [openSignUp, setOpenSignUp] = useState(false)
  


    return (
        <div className='login-container'>
            {openSignUp && <SignUp openSignUp={openSignUp} closeSignUp={setOpenSignUp} />}
            <div className='login-outline-box'>
                <form className='login-form' onSubmit={handleSubmit}>
                    <input required className='login-input' onChange={(e) => setUsername(e.target.value)} value={username} placeholder='username'></input>
                    <input required className='login-input' onChange={(e) => setPassword(e.target.value)} value={password} type='password' placeholder='password'></input>
                    <br></br>

                    <button className='login-button' type='submit'>Login</button>
                </form>
                <p>Don't have an account?<strong className='signUpBtn' onClick={() => { setOpenSignUp(true) }}> Sign Up!</strong></p>


            </div>
        </div>
    )
}

export default Login