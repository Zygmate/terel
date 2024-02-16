import { useEffect, useRef, useState } from "react";
import Label from "./labels";
import { capitalize } from "./utilityFunctions";

export default function InitialStatAtom({ initialValue, label }) {
    const [counterValue, setCounterValue] = useState(initialValue)

    return (
        <div className="counter-labelled-stripped grid">
            <Label variant="small" inner={capitalize(label)} />
            <div className="counter">{counterValue > 0 ? counterValue : 1}</div>
        </div>
    )
}
