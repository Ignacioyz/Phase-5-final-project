import React from "react";
import './collection.css';
import Modal from "./Modal";
import { useState, useRef } from "react";
import Cart from "./Cart";
// import ImageUploading from 'react-images-uploading';

function Collection({ setPaintings, paintings, handleBuy, user }) {

    // starting state for modal is false, and renders true in handlePaingingInModal
    // function. Painting state is set to an open object because each paining is an {}
    const [openModal, setOpenModal] = useState(false)
    const [clickPainting, setClickedPainting] = useState({})

    const [newDescription, setNewDescription] = useState("")
    const [newTitle, setNewTitle] = useState("")
    const [newPrice, setNewPrice] = useState("")


    function handleUpload() {
        let uploadForm = new FormData();
        let fileName = imageRef.current.files[0].name;
        let file = imageRef.current.files[0];
        let type = imageRef.current.files[0].type;
        uploadForm.append("file", file);
        uploadForm.append("type", type);
        uploadForm.append("name", fileName);
        uploadForm.append("title", newTitle);
        uploadForm.append("description", newDescription);
        uploadForm.append("price", parseInt(newPrice));

        fetch('/paintings', {
            method: "POST",
            headers: {

            },
            body: uploadForm
        })
            .then(resp => resp.json())
            .then(data => {
                setPaintings([...paintings, data])
            })

    }

    function handleRemovePainting(item) {
        let id = item.id
        fetch(`http://localhost:3000/paintings/${id}`, {
            method: 'DELETE',
            header: {
                "Content-Type": "application/json"
            }
        })
        //  destroy method (paintings controller) returns painting that was deleted
        // what we want to do is remove the one that was deleted from the array
            .then(resp => resp.json())
            .then(data => {
                // closes modal when delete is triggered 
                setOpenModal(false)
                // filtering through all the paintings to see if the one that was 
                // deleted matches all the others, it won't so an array of the remainders
                // is returned because filter returns an array
                setPaintings(paintings.filter((item) => item.id !== data.id))
            })
        console.log(item.image_url)
    }



    // handles states for opening modal, AND the clicked painting
    function handlePaintingInModal(painting) {
        setClickedPainting(painting)
        setOpenModal(true)
    }

    // For uploading new Image
    const imageRef = useRef(null)

    // const maxNumber = 5;


    return (

        <div className="collection">
            {openModal && <Modal handleRemovePainting={handleRemovePainting} user={user} handleBuy={handleBuy} closeModal={setOpenModal} item={clickPainting} />}
            {paintings.map(item => {
                return (<div key={item.id} id="paintings-card">

                    <img className="paintings" onClick={() => { handlePaintingInModal(item) }}
                        src={item.image_url} alt={item.title}></img> <Cart />
                       
                    <h2>"{item.title}"</h2>

                </div>

                )
            })}

            <div className="App">
                {user.admin ?
                    <div className="admin-div">
                        <form onSubmit={(e) => {
                            e.preventDefault()
                            handleUpload()
                        }}>
                            <input type='file' ref={imageRef} />
                            <button className="upload-painting-btn">Upload Painting</button>
                            <input className="upload-details-input" placeholder="Title" value={newTitle} onChange={(e) => setNewTitle(e.target.value)} ></input>
                            <input className="upload-details-input" placeholder="Description" value={newDescription} onChange={(e) => setNewDescription(e.target.value)} ></input>
                            <input className="upload-detials-price" type="number" placeholder="Price" value={newPrice} onChange={(e) => setNewPrice(e.target.value)}></input>
                        </form>
                    </div>
                    : console.log('not admin')}
            </div>

        </div>
    )
};

export default Collection;