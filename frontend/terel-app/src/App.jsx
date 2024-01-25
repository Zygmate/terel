import { useState } from "react";
import "./App.css";
import Header from "./components/header.jsx";
import Footer from "./components/footer.jsx";

function App() {
	const baseStats = {
		ST: 8,
		CN: 8,
		DX: 8,
		BE: 8,
		IN: 8,
		WP: 8,
		PE: 8,
		CH: 8,
		HP: 8,
		FT: 8,
	};
	const [initialValues, setInitialValues] = useState(baseStats);
	function handleForm() {}
	return (
		<>
			<Header />
			<form action={handleForm} className="build-form-anagraphic">
				<div className="build-controls grid grid-centered">
					<button>Next</button>
				</div>
			</form>
			<Footer />
		</>
	);
}

export default App;
