import React, { useState } from 'react'

const App = () => {

  const [message, setMessage] = useState("")

  const fetchMsg = async () => {
    const response = await fetch("http://localhost:3000/api/hello");
    const data = await response.json()
    
    setMessage(data);
  }

  const refreshMsg = async () => {
    const response = await fetch("http://localhost:3000/api/reset");
    const data = await response.json()

    console.log("data: ",data);
    setMessage(data);
  }
  return (
    <div>
    <h1>AWS Demo Project</h1>
    <br />
    <button onClick={() => fetchMsg()}>Click for what backend says!</button>
    <br />
    <br />
    <button onClick={() => refreshMsg()}>Click to refresh the message</button>
    <br />
    <br />
    <label>{message}</label>
    </div>
  )
}

export default App
