import React from 'react';

const AddVoter = () => {

    return(
        <div>
            <form>
                <div>
                    <label>first name</label><br />
                    <input type="text" placeholder="first name..."></input>                          
                </div>
                <div>
                    <label>middle name</label><br />
                    <input type="text" placeholder="middle name..."></input>                          
                </div>
                <div>
                    <label>last name</label><br />
                    <input type="text" placeholder="last name..."></input>                          
                </div>
                <div>
                    <label>ID Number</label><br />
                    <input type="text" placeholder="Enter ID..."></input>                          
                </div>
                <div>
                    <label>D.O.B</label><br />
                    <input type="date" min="01/11/2004"></input>                          
                </div>
                <div>
                    <label for="gender">Gender</label><br/>
                    <select name="gender">
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                    </select>                       
                </div>
                <div>
                    <label for="location">County</label><br />
                    <select name="county">
                        <optgroup label="county">
                            <option>- select -</option>
                            <optgroup label="Nairobi">
                                <option value="embakasi">Embakasi</option>
                            </optgroup>

                            <optgroup label="kisumu">Kisumu</optgroup>
                        </optgroup>
                        
                    </select>                       
                </div>
            </form>
        </div>
    )
}

export default AddVoter;