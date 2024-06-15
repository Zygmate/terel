import { useRouteError, useNavigate } from "react-router-dom";
import { useState, useEffect } from "react";

export default function ErrorPage() {
    const SECONDS = 10
    const error = useRouteError();

    const [counter, setCounter] = useState(SECONDS)
    const navigate = useNavigate()

    setInterval(() => {
        if (counter > 0){
            setCounter(counter - 1)
        }
    }, 1000);

    useEffect(() => {
        const timeout = setTimeout(() => {
            navigate("/home")
        }, SECONDS*1000)
        console.error(error);
        return clearTimeout(timeout)
    }, [])


    return (
        <div id="error-page">
            <h1>Oops!</h1>
            <p>Sorry, an unexpected error has occurred.</p>
            <p>
                <i>{error.statusText || error.message}</i>
            </p>
            <p>
                You will be automatically redirected to the home page in {counter} seconds...
            </p>
            <button onClick={() => {navigate("/home")}} className="btn">RETURN HOME</button>
        </div>
    );
}
