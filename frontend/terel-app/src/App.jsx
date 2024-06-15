import Header from "./components/header.jsx";
import Footer from "./components/footer.jsx";
import { Outlet } from "react-router-dom";


function App() {
    return (
        <>
            <Header />
            <div id="page">
                <Outlet/>
                <Footer />
            </div>
        </>
    );
}

export default App;
