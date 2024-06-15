import { useEffect, useRef, useState } from "react"
import Label from "./labels"
import ArrowDown from "../assets/bx-chevron-down.svg"
import DropdownMenu from "./dropdownMenu"

export default function DropDownLabel({ options, dropdownNames }) {
    const [toggleLabel, setToggleLabel] = useState("select")
    const [isOpen, setIsOpen] = useState(false)
    const [isMounted, setIsMounted] = useState(false)
    const menu = useRef(null)

    function toggleDropdown() {
        setIsMounted(!isMounted)
        if (!isOpen) setIsOpen(true)
    }
    function handleClickOutside(e){
        if (menu.current && !menu.current.contains(e.target)){
            setIsMounted(false)
        }
    }

    useEffect(()=> {
        document.addEventListener("mousedown", handleClickOutside);
        return () => {
            document.removeEventListener("mousedown", handleClickOutside)
        }
    }, [])

    return (
        <div ref={menu} className="modal-wrapper">
            <div className="modal-label grid" onClick={() => toggleDropdown()}>
                <input className="dropdown-input" htmlFor="gender" type="radio" name="gender" value={toggleLabel} />
                <Label inner={toggleLabel} />
                <button className="btn" type="button" >
                    <img src={ArrowDown} alt="Toggle Button" />
                </button>
            </div>
            {isOpen && <DropdownMenu mounted={{isMounted: isMounted, setIsMounted: setIsMounted}}dropdownNames={dropdownNames} isOpen={isOpen} setIsOpen={setIsOpen} setLabel={setToggleLabel} options={options} />}
        </div>
    )
}
