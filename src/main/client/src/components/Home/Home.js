import React, { useState, useEffect } from "react";
import axios from "axios";
import MemberCard from "../MemberCard";

const Home = function() {
    const [party, setParty] = useState(null);

    useEffect(() => {
        axios.get("/api/party").then(function(response) {
            setParty(response.data);
        });
    // eslint-disable-next-line react-hooks/exhaustive-deps
    }, []);

    const memberList = party ? Object.keys(party.members).map((member) => {
        return (<div className="col-4 mb-3">
            <MemberCard
                name={member}
                job1={party.members[member].job1}
                job2={party.members[member].job2}
            />
        </div>)
    }) : null;

    return (
        <div className="container">
            <div className="row mt-5">
                {memberList}
            </div>
        </div>
    );
}

export default Home;