import { useState } from "react"
import { toCapitalize } from "../utility/utilityFunctions"
import Label from "./labels"
export default function MenuPicklist({labels = [], cssClass = "", reducer}) {
    const [activeTab, setActiveTab] = useState(labels[0])
    function handleNav(key){
        const listEl = document.querySelector("[data-picklist-value='"+ key +"']")
        for (const el of document.querySelectorAll("." + cssClass + "-item")){
            el.classList.remove("active")
        }
        listEl.classList.add("active")
        if (reducer){
            reducer.dispatch({type: reducer.main_action, payload:{value:key}})
        }
        setActiveTab(listEl.getAttribute("data-picklist-value"))
    }

    return <>
        <ul>
            {labels.map((el) =>{
                const label = el.split("_").map((word) => toCapitalize(word)).join(" ")
                const randomID = crypto.randomUUID()
                return <li
                    key={randomID + "-" + el}
                    data-picklist-value={el}
                    className={cssClass + "-item" + (el === activeTab ? " active": "")}
                    onClick={() => handleNav(el)}
                        >
                        <Label inner={label} variant={cssClass === "main-menu" ? "large": "default"}/>
                    </li>
            })}
        </ul>
    </>
}
