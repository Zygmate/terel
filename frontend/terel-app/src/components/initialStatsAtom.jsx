import { useState } from "react";
import Label from "./labels";
import { toCapitalize } from "../utility/utilityFunctions";

export default function InitialStatAtom({ initialValue, label }) {
    const [counterValue, setCounterValue] = useState(initialValue)

    return (
        <div className="counter-labelled-stripped grid">
            <Label variant="small" inner={toCapitalize(label)} />
            <div className="counter">{counterValue > 0 ? counterValue : 1}</div>
        </div>
    )
}
