import React, {useState} from 'react';


const WardSelection = () =>{
    const [userInput, setUserInput] = useState("")
    
    fetch("").then(r => r.json()).then(d => setUserInput(d))

    const wards = userInput.map((ward) => {
        return(
            <option value={ward.name}>{ward.name}</option>
        )
    })

    return (
        <div>
            <label>Ward</label><br />
            <select name="ward">
                {wards}
            </select>
        </div>
    )
}

export default WardSelection;