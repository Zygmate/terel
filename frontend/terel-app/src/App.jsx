import Header from "./components/header.jsx";
import Footer from "./components/footer.jsx";
import { Outlet } from "react-router-dom";


function App() {
    return (
        <>
            <Header />
            <Outlet/>
            <Footer />
        </>
    );
}

export default App;
