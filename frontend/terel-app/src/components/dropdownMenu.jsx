import { useRef, useState } from "react";
import Label from "./labels";

export default function DropdownMenu({ dropdownNames, setLabel,mounted, setIsOpen, options }) {
    const [filteredList, setFilteredList] = useState(dropdownNames)

    const mountedStyle = {animation: "growMenu 100ms ease-in-out forwards"}
    const unMountedStyle = {animation: "shrinkMenu 100ms ease-in-out forwards"}
    
    function handleSelect(selectedElement) {
        setLabel(selectedElement)
        options.dispatch({ type: options.selectAction, payload: selectedElement })
        mounted.setIsMounted(false)
    }
    return (
        <div onAnimationEnd={() => {if (!mounted.isMounted) setIsOpen(false)}} className="modal-menu" style={mounted.isMounted ? mountedStyle : unMountedStyle}>
            <div className="modal-menu-list-wrapper">
                <ul className="modal-menu-list" >
                    <li>
                        <input type="text"className="input-filter"placeholder="Search..." onChange={(e) => setFilteredList(dropdownNames.filter(el => el.includes(e.target.value)))}/>
                    </li>
                    {filteredList.map(name => <li key={crypto.randomUUID()} onClick={() => handleSelect(name)} ><Label inner={name}></Label></li>)}
                </ul>
            </div>
        </div>
    )
}
