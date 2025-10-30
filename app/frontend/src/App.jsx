import React, { useState } from 'react'

const App = () => {

  const [message, setMessage] = useState("")

  const fetchMsg = async () => {
    // const response = await fetch("http://localhost:3000/api/hello");
    // const data = await response.json()
    const data = "Test Successful"
    setMessage(data);
  }

  const refreshMsg = async () => {
    // const response = await fetch("http://localhost:3000/api/reset");
    // const data = await response.json()

    const data = ""
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
    <br />
    <br />
    <label>AWS CI/CD</label>
    </div>
  )
}

export default App
