import Counter from "../components/counter"
import MenuPicklist from "../components/menuPicklist"
import { useReducer } from "react"
import { LinkedList, toCapitalize } from "../utility/utilityFunctions"
import Label from "../components/labels"
import { Form, useNavigate } from "react-router-dom"

// TODO: Produce the computed string for LEVELUP
const ADVANCEMENTS = new LinkedList
const PICKLIST_NAVIGATION ={
    "skills": {
        "combat":{
            "bow": 0,
            "dodge": 0,
            "melee": 0,
            "throwing":0,
        },
        "thieving": {
            "backstab": 0,
            "pick_pocket": 0,
            "prowling": 0,
            "spot_trap":0,
        },
        "social":{
            "gambling": 0,
            "haggle": 0,
            "heal": 0,
            "persuasion":0,
        },
        "tech": {
            "repair": 0,
            "firearms": 0,
            "pick_locks": 0,
            "disarm_traps":0,
        }
    },
    "tech_degrees":{
    },
    "spells": {

    }
}
const ADDITIONAL_INFO ={
    "derived":{
        "carry_weight": 0,
        "heal_rate": 0,
        "damage_bonus": 0,
        "poison_recovery": 0,
        "AC_adjustments": 0,
        "reaction_modifier": 0,
        "speed": 0,
        "max_follower": 0,
    },
    "resistances":{
        "damage": 0,
        "magick": 0,
        "fire": 0,
        "poison": 0,
        "electrical": 0,
    },
    "alignment":{
        "technological": 0,
        "magickal": 0,
        "total": 0,
    }
}
const STATS = {
    "strength":{
        id:"st",
        value:0},
    "dexterity":{
        id:"dx",
        value:0},
    "constitution":{
        id:"cn",
        value:0},
    "beauty":{
        id:"be",
        value:0},
    "intelligence":{
        id:"in",
        value:0},
    "perception":{
        id:"pe",
        value:0},
    "willpower":{
        id:"wp",
        value:0},
    "charisma":{
        id:"ch",
        value:0},
    "health":{
        id:"maxhps",
        value:0},
    "fatigue":{
        id:"maxfatigue",
        value:0},
}
//DEFINE THE ACTIONS OF THE PAGE
const ACTIONS = {
    SET_MAIN_MENU_PICKLIST : "set-main-menu-picklist",
    SET_SUB_MENU_PICKLIST : "set-sub-menu-picklist",
    ADD_COUNTER_TO_LIST : "add-counter-to-list",
    REMOVE_COUNTER_FROM_LIST : "remove-counter-from-list"
}
//DEFINE THE LOGIC OF THE ACTIONS
function reducer(state, action){
    switch (action.type) {
        //Handle SKill Navigation
        case ACTIONS.SET_MAIN_MENU_PICKLIST:
            return {...state, main:action.payload.value}
        case ACTIONS.SET_SUB_MENU_PICKLIST:
            return {...state, sub:action.payload.value}
        //TODO: Counter actions linked list
        //Handle Counter linked list
        case ACTIONS.ADD_COUNTER_TO_LIST:
            break
        case ACTIONS.REMOVE_COUNTER_FROM_LIST:
            break
        default:
            console.error("Unknow action in CreateBuildMain.jsx")
    }
    return {...state}

}
export default function CreateBuildMain(){
{/* TODO: EDIT refactor in components */}
    const navigate = useNavigate();
    const [pageInfo, dispatch] = useReducer(reducer, {availablePoints: 64, main:"skills", sub:"combat"})
    return (
        <Form>
            <h2>BUILD PAGE 2</h2>
            <Label inner={"Available points: " +  pageInfo.availablePoints} />
            <div className="build-skill-wrapper">
                <section className="build-skill-picklist">
                    <nav className="main-menu">
                        <MenuPicklist
                            labels={Object.keys(PICKLIST_NAVIGATION)}
                            cssClass="main-menu"
                            reducer={{dispatch: dispatch, main_action: ACTIONS.SET_MAIN_MENU_PICKLIST}}
                        />
                    </nav>
                    <nav className="sub-menu">
                        <MenuPicklist
                            labels={Object.keys(PICKLIST_NAVIGATION[pageInfo.main]??[])}
                            cssClass="sub-menu"
                            reducer={{dispatch: dispatch, main_action: ACTIONS.SET_SUB_MENU_PICKLIST}}
                        />
                    </nav>
                    <div className="build-skill-allocation">
                        <div className="build-skill-allocation-labels">
                            {Object.keys(PICKLIST_NAVIGATION[pageInfo.main][pageInfo.sub]??[]).map((el) => {
                                return <Label inner={toCapitalize(el.split("_"))+":"} /> 
                            })}
                        </div>
                        <div className="build-skill-allocation-controls">
                            {pageInfo.main === "skills" ?
                                Object.keys(PICKLIST_NAVIGATION[pageInfo.main][pageInfo.sub]??[]).map((el) => {
                                    return <Counter step={4} reducer={{dispatch: dispatch, decrement_action:ACTIONS.REMOVE_COUNTER_FROM_LIST, increment_action: ACTIONS.ADD_COUNTER_TO_LIST }} name={el} />})
                                : ""}
                        </div>
                    </div>
                </section>
                <section className="build-stat-info">
                    <Label inner={"Statistics"} variant={"large"}/>
                    <div className="build-stat-info-values">
                        {Object.keys(STATS).map((el) => {
                            return <div>
                                <Label inner={toCapitalize(el)} variant={"small"}/>
                                <Counter value={STATS[el].value} reducer={{dispatch: dispatch, decrement_action:ACTIONS.REMOVE_COUNTER_FROM_LIST, increment_action: ACTIONS.ADD_COUNTER_TO_LIST }} name={el.id} />
                            </div>
                        })}
                    </div>
                </section>
                <section className="build-extra-info">
                    <Label inner={"Additional info"}/>
                    <div className="build-extra-info-derived">
                        <Label inner={"Derived stats"}/>
                        <div className="build-extra-info-derived-list">
                            {Object.keys(ADDITIONAL_INFO.derived).map((el) => {
                                return <div className="build-extra-info-derived-item">
                                    <Label inner={toCapitalize(el.split("_"))} variant={"small"}/>
                                    <div className="counter">{ADDITIONAL_INFO.derived[el]}</div>
                                </div>
                            })}
                        </div>
                    </div>
                    <div className="build-extra-info-resistances">
                        <Label inner={"Resistances"}/>
                        <div className="build-extra-info-resistances-list">
                            {Object.keys(ADDITIONAL_INFO.resistances).map((el) => {
                                return <div className="build-extra-info-resistances-item">
                                    <Label inner={toCapitalize(el.split("_"))} variant={"small"}/>
                                    <div className="counter">{ADDITIONAL_INFO.resistances[el]}</div>
                                </div>
                            })}
                        </div>


                    </div>
                    <div className="build-extra-info-alignment">
                        <Label inner={"Alignment"}/>
                        <div className="build-extra-info-alignment-list">
                            {Object.keys(ADDITIONAL_INFO.alignment).map((el) => {
                                return <div className="build-extra-info-alignment-item">
                                    <Label inner={toCapitalize(el.split("_"))} variant={"small"}/>
                                    <div className="counter">{ADDITIONAL_INFO.alignment[el]}</div>
                                </div>
                            })}
                        </div>

                    </div>

                </section>

            </div>
            <div className="build-controls">
                <button className="btn btn-default" type="button" onClick={() => navigate("/new/build")} >BACK</button>
                <button className="btn btn-default" disabled onClick={() => navigate("/new/build")} >EXPORT</button>
            </div>
        </Form>
    )
}
