import React, { useState, useEffect } from "react";
import axios from "axios";
import MemberCard from "../MemberCard";
import MemberDetails from "../MemberDetails";

const Home = function() {
    const [party, setParty] = useState(null);
    const [chosenMember, setChosenMember] = useState(null);
    const [displayDetails, setDisplayDetails] = useState(false);

    useEffect(() => {
        axios.get("/api/party").then(function(response) {
            setParty(response.data);
            console.log(response.data);
        });
    // eslint-disable-next-line react-hooks/exhaustive-deps
    }, []);

    const handleClick = function(event, member) {
        event.preventDefault();
        setChosenMember(member);
        setDisplayDetails(true);
    }

    const handleBack = function(event) {
        event.preventDefault();
        setDisplayDetails(false);
    }

    const memberList = party ? Object.keys(party.members).map((member) => {
        return (
            <div className="col-4 mb-3" key={party.members[member].memberId}>
                <MemberCard
                    name={member}
                    job1={party.members[member].job1}
                    job2={party.members[member].job2}
                    onClick={(event)=>{handleClick(event, party.members[member])}}
                />
            </div>
        );
    }) : "";

    return (
        <div className="container">
            <div className="row mt-5">
                {displayDetails ? <MemberDetails member={chosenMember} handleBack={handleBack} setParty={setParty} availableEspers={party.availableEspers}/> : memberList}
            </div>
        </div>
    );
};

export default Home;