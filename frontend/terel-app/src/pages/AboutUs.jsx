import { fetch } from '@tauri-apps/plugin-http';
import { useState } from "react"

export default function AboutUs (){
const [data, setData] = useState({})

    //TODO: THis function was a test
async function handleTest() {
    const response = await fetch("http://127.0.0.1:1337/background/NightMage")
        .then((res) => res.json())
        .then((raw) => setData(raw.data))

        console.log(data)
}
    return (
        <div className="outlet-wrapper">
        </div>
    )
}
