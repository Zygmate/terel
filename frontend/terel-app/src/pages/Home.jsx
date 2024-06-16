import serviceInfo from "../json/service-info.json"
import gitIcon from "../assets/bxl-github.svg"

export default function Home (){
    return (
        <div className="outlet-wrapper">
            <h2>Welcome to Ter'El Blessing!</h2>
            <div className="icon-tracer">
                <i>
                    <a target="_blank" href="https://github.com/Zygmate/terel">
                        <img src={gitIcon} alt="GitHub Link"/>
                    </a>
                </i>
            </div>
            <p className="paragraph">
                {serviceInfo.homepage.mainInfo.split("\n").join("\n")}
            </p> 
        </div>
    )
}
