import Label from "./labels"
import DropDownLabel from "./dropdownlabel"
import InitialStatAtom from "./initialStatsAtom"
import { useEffect, useReducer, useState } from "react"
import infos from "../assets/dataTemplate.json"
import characterTemplate from "../assets/characterTemplate.json"
import TextInput from "./textInput"
import ToggleText from "./toggle"
import { Form } from "react-router-dom"

const ACTIONS = {
    setBackground: "setBackground",
    setBackgroundHover: "previewBackground",
    setRace: "setRace",
    setTextInput: "setTextInput",
    setGender : "setGender"
}

function setInitialStats(genderMod = {}, raceMod = {}, backgroundMod = {}) {

  return Object.keys({...genderMod, ...raceMod, ...backgroundMod}).reduce((prev, curr) => {
    return {...prev, [curr] : 8 + (genderMod[curr] ?? 0) + (raceMod[curr]??0) + (backgroundMod[curr]??0)}
  },infos.baseStats)
}
function reducer(state, {type, payload}) {
    switch (type) {
        case ACTIONS.setTextInput: {
            return { ...state, [payload.key]: payload.value }
        }
        case ACTIONS.setGender:{
            let modifiers = payload.value === "female" ? {strength: -1, constitution: 1} : {}
            return {...state,
                [payload.key]:{...state.gender, id:payload.value, statModifiers: modifiers},
                initialStats: {
                    ...state.initialStats,
                    ...setInitialStats(modifiers, state.race.statModifiers, state.background.statModifiers)
                }
            }
        }
        case ACTIONS.setBackground: {
            let res = { ...state, background: { ...infos.backgrounds[payload], name: payload}  }
            return {...res, initialStats: {...res.initialsStats,...setInitialStats(res.gender.statModifiers, res.race.statModifiers,res.background.statModifiers)}} 
        }
        case ACTIONS.setRace:{
            let res = {...state, race: {...infos.races[payload], name:payload}}
            return {...res, initialStats: {...res.initialStats,...setInitialStats(res.gender.statModifiers, res.race.statModifiers,res.background.statModifiers)}} 
        }
        default:
            throw new Error('Unknown action type: ' + type)
    }

}

export default function AnagraphicForm() {
    const [characterSheet, dispatch] = useReducer(reducer, characterTemplate)
    function handleForm(e) { 
        e.preventDefault()
    }
    return (
        <Form action={handleForm} className="build-form-anagraphic grid">
            <div className="build-name grid grid-centered">
                <h1>
                <input type="text" maxLength={20} placeholder="Build Name..." name="buildName" value={characterSheet.buildName}
                    onChange={(e) => dispatch({ type: ACTIONS.setTextInput, payload: {key: e.target.name, value:e.target.value }})} />
                </h1>
            </div>
            <div className="anagraphic-info grid">
                <div className="anagraphic-labels grid">
                    {infos.anagraphicLabels.map(label => { return <Label key={crypto.randomUUID()} inner={label} /> })}
                </div>
                <div className="anagraphic-controls grid">
                    <TextInput maxLength={22} characterSheet={{characterSheet: characterSheet}} reducer={{ dispatch: dispatch, ACTIONS: ACTIONS}} inputName="characterName" placeholder="22 Chracter Max..."/>
                    <ToggleText name="gender" value={characterSheet["gender"].id} options={{default: "male", defined:"female"}} reducer={{dispatch : dispatch, ACTION : ACTIONS.setGender}}/>
                    <DropDownLabel dropdownNames={Object.keys(infos.races)} options={{ dispatch: dispatch, selectAction: ACTIONS.setRace, hoverAction: ACTIONS.selectBackgroundHover }}/>
                    <DropDownLabel dropdownNames={Object.keys(infos.backgrounds)} options={{ dispatch: dispatch, selectAction: ACTIONS.setBackground, hoverAction: ACTIONS.selectBackgroundHover }} />
                    <Label inner={characterSheet.race.age || "N/D"} />
                </div>
            </div>
            <div className="initial-stats-wrapper">
                <Label inner={"Initial Stats"}/>
                <div className="initial-stats-desc grid">
                    {Object.keys(infos.baseStats).map(stat => {
                        return <InitialStatAtom key={crypto.randomUUID()} initialValue={characterSheet.initialStats[stat]} label={stat} />
                    })}
                </div>
            </div>
            <div className="background-section">
                <Label inner={"Background Description"} />
                <p className="paragraph">{characterSheet.background.desc || "Choose a background to get some descriptions about it!"}</p>
            </div>
            <div className="build-controls grid grid-centered">
                <button>Next</button>
            </div>
        </Form>
    )
}
