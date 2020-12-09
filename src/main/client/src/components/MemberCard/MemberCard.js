import React from "react";

const MemberCard = function({name, job1, job2}) {
    return(
        <div className="card">
            <div className="card-body">
                <h5 className="card-title">{name}</h5>
                <p className="card-text">Job 1: {job1 ? job1 : "None"}</p>
                <p className="card-text">Job 2: {job2 ? job2 : "None"}</p>
            </div>
        </div>
    )
}

export default MemberCard;