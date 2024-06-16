import { useState } from "react"

export default function AboutUs (){
const [data, setData] = useState({})

function handleTest() {
    fetch("http://127.0.0.1:58111/background/NightMage")
        .then((res) => res.json())
        .then((data) => {
            console.log(data)
            setData(data)
        })
    .catch((err) => {
        console.error(err.message)
    })
}
    return (
        <div className="outlet-wrapper">
            <button onClick={() => handleTest()}>Test</button>
            <pre style={"border: 1px solid red"}>{data}</pre>
        </div>
    )
}
