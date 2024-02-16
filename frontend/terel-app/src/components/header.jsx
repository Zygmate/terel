import { Link } from "react-router-dom";

export default function Header() {
    return (
        <>
            <header className="grid grid-centered">
                <ul className="nav-bar grid grid-centered">
                    <li className="font-regular">
                        <Link to={"/home"}>Home</Link>
                    </li>
                    <li className="font-regular">
                        <Link to={"/new/build/"}>Build</Link>
                    </li>
                    <li className="font-regular">
                        <Link to={"/about"}>About Us</Link>
                    </li>
                </ul>
            </header>
        </>
    );
}
