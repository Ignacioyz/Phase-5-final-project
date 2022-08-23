import React from "react";
import { Link } from "react-router-dom";
import './navbar.css';

export default function Navbar({ setUser, user }) {

    // let navigate = useNavigate()

    function handleLogout() {
        fetch("/logout", {
            method: "DELETE"
        }).then(r => r.json())
            .then((r) => {
                 
                    setUser({});
                
            })
            // .then(navigate("/"));
    }


    return (<nav className="nav">
        <Link to="/" className="site-title">Pepe's Studio</Link>
        
       <h4 className="login-welcome"> {user.first_name ? `Welcome Back ${user.first_name}!` : " "} </h4>

        <ul className="nav-ul">
            <li>
                <Link className="nav-link" to="/collection">Collection</Link>
            </li>

            <li>
                <Link className="nav-link" to="/about">About</Link>
            </li>

            <li>
                <Link className="nav-link" to="/contact">Contact</Link>
            </li>
           {user.admin ?  <li>
                <Link className="nav-link" to="/cart">Cart</Link>
            </li> : console.log("Feature in progress")}
            <li>
                {user.username ? <Link className="nav-link" onClick={() => handleLogout()} to="/"> Logout</Link> : <Link to="/login" className="nav-link">Login</Link>}
            </li>

        </ul>

    </nav>
    )
}
