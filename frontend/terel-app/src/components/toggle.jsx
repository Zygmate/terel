import { useState } from "react"
import Label from "./labels"
import ArrowRight from "../assets/bx-chevron-right.svg"
import ArrowLeft from "../assets/bx-chevron-left.svg"

export default function ToggleText({options, reducer, value, name}) {

    function handleToggle() {
        reducer.dispatch({type: reducer.ACTION, payload: {key:name, value: value === options.default ? options.defined : options.default}})
    }
    return (
        <div className="toggle-wrapper">
            <button type="button" onClick={() => handleToggle()}>
                <img src={ArrowLeft} alt="Toggle Button" />
            </button>
            <input className="toggle-input" type="radio" name={name} value={value}/>
            <Label inner={value} />
            <button type="button" onClick={() => handleToggle()}>
                <img src={ArrowRight} alt="Toggle Button" />
            </button>
        </div>
    )
}
