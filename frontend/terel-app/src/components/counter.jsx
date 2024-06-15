import Label from "./labels"
import AddIcon from "../assets/bx-plus.svg"
import RemoveIcon from "../assets/bx-minus.svg"
import { useState } from "react"

const ACTIONS = {
    INCREMENT_COUNTER : "INCREMENT_COUNTER",
    DECREMENT_COUNTER : "DECREMENT_COUNTER"
}
export default function Counter({reducer, value = 0, name="", step = 1}) {
    const [counter, setCounter] = useState(value)

    function handleToggle(action) {
        switch (action) {
            case ACTIONS.DECREMENT_COUNTER:
                if (counter >= 0 + step){
                    setCounter(counter - step)
                    if (reducer){
                        reducer.dispatch({type: reducer.decrement_action, payload: {key:name}})
                    }
                }
                break;
            case ACTIONS.INCREMENT_COUNTER:
                if (counter <= 20 - step){
                    setCounter(counter + step)
                    if (reducer){
                        reducer.dispatch({type: reducer.increment_action, payload: {key:name, value:counter}})
                    }
                }
                break;

            default:
                console.error("Action not in counter.jsx recognized!")
                break;
        }
    }
    return (
        <div className="toggle-wrapper">
            <button type="button" className="btn btn-icon" onClick={() =>handleToggle(ACTIONS.DECREMENT_COUNTER)}>
                <img src={RemoveIcon} alt="Toggle Button" />
            </button>
            <input className="toggle-input" type="text" name={name} onChange={(e) => e.target.value = counter}/>
            <Label inner={counter} />
            <button className="btn btn-icon" type="button" onClick={() => handleToggle(ACTIONS.INCREMENT_COUNTER)}>
                <img src={AddIcon} alt="Toggle Button" />
            </button>
        </div>
    )
}
