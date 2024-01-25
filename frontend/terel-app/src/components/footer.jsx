import logo from "../assets/GPLv3_Logo.svg";
export default function Footer() {
    return (
        <footer className="grid grid-centered">
            <div className="footer-content-wrapper">
                <p className="font-regular font-small">
                    The entire terel project is under GPL V3 Licence
                </p>
                <img src={logo} alt="GPLv3 license log" />
            </div>
        </footer>
    );
}
