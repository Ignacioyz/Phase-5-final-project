import React, { useRef, useState } from "react"
import "./contact.css"
import emailjs from '@emailjs/browser'
import { CircularProgress } from '@material-ui/core'



function Contact() {
    const formRef = useRef();

    const sendEmail = (e) => {
        setSentMessage(false)
        setIsLoading(true)
        e.preventDefault();
        //change to loading
        emailjs.sendForm('service_p2t3stn', 'template_fd28cqu', formRef.current, 'mTGwU9M6pcO8TcDWZ')
            .then((result) => {
                console.log(result.text);
                setIsLoading(false)
                setSentMessage(true)
                // state setters 
            },

                (error) => {
                    console.log(error.text);

                });
    };


    const [isloading, setIsLoading] = useState(false)

    const [sentMessage, setSentMessage] = useState(false)


    return (

        <div className="contact-body">
            {sentMessage ? <p style={{ color: 'lightgreen', fontSize: '32px ' }} > Your message has been sent!</p> : null
            }
            {
                isloading ?

                    <CircularProgress /> :
                    <>
                        <div className="additional">
                            <h3 className="contact-statement"> Contact Pepe for additional Art, Requests, or Consignments</h3>
                        </div>
                        <div className="form-div">
                            <div className="secret-div"></div>
                            <form ref={formRef} className="contact-form" onSubmit={sendEmail}>
                                <input type="text" name={'name'} required id="contact-name" className="contact-input" placeholder="Name"></input>
                                <input name="email" required className="contact-input" type="email" placeholder="Email"></input>
                                <input type="text" name="subject" required className="contact-input-subject" placeholder="Subject"></input>
                                <textarea type="text" name="comment" required className="contact-input-comment" placeholder="Comment"></textarea>
                                <button className="send-button">Send</button>
                            </form>
                        </div>
                    </>
            }

        </div >
    )
}

export default Contact;