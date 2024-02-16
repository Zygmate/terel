export default function TextInput({maxLength, characterSheet, reducer, inputName, placeholder }){
    
    return (
        <div className="label">
            <p>
                <input name={inputName} maxLength={maxLength || -1} value={characterSheet[inputName]}
                    placeholder={placeholder} onChange={(e) => reducer.dispatch({type: reducer.ACTIONS.setTextInput, payload:{key:e.target.name, value:e.target.value}})}
                    className="text-input"/>
            </p>
        </div>
    )
}
