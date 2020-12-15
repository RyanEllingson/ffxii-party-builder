import React from "react";

const MemberCard = function({name, job1, job2, onClick}) {
    return(
        <div className="card" onClick={onClick}>
            <div className="card-body">
                <h5 className="card-title">{name}</h5>
                <p className="card-text">Job 1: {job1 ? job1.jobName : "None"}</p>
                <p className="card-text">Job 2: {job2 ? job2.jobName : "None"}</p>
            </div>
        </div>
    );
};

export default MemberCard;