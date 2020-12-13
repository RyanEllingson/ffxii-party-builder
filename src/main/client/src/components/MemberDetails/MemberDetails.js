import React, {useEffect, useState} from "react";
import axios from "axios";
import LicenseList from "../LicenseList";

const MemberDetails = function({member, handleBack, setParty}) {
    const [jobList, setJobList] = useState([]);
    const [job1Choice, setJob1Choice] = useState(0);
    const [job2Choice, setJob2Choice] = useState(0);

    useEffect(() => {
        axios.get("/api/jobs").then(function(response) {
            console.log(response.data);
            setJobList(response.data);
        })
        console.log(member);
    // eslint-disable-next-line react-hooks/exhaustive-deps
    }, []);
    
    const jobOptions = jobList.map((job) => {
        return (
            <option key={job.jobId} value={job.jobId}>{job.jobName}</option>
        );
    });

    const handleSelectJob1 = function(event) {
        event.preventDefault();
        axios.put("/api/job1", {
            memberName: member.memberName,
            jobId: job1Choice
        })
        .then(function(response) {
            setParty(response.data);
            handleBack(event);
        });
    };

    const handleSelectJob2 = function(event) {
        event.preventDefault();
        axios.put("/api/job2", {
            memberName: member.memberName,
            jobId: job2Choice
        })
        .then(function(response) {
            setParty(response.data);
            handleBack(event);
        });
    };

    return (
        <div className="col-12">
            <div className="row mb-3">
                <div className="col-12">
                    <button className="btn btn-primary" onClick={(e)=>{handleBack(e)}}>Go back</button>
                </div>
            </div>
            <div className="row">
                <div className="col-6">
                    <div className="card">
                        <div className="card-body">
                            <h5 className="card-title">{member.memberName}</h5>
                            <p className="card-text">Job 1: {member.job1 ? member.job1.jobName : "None"}</p>
                            <p className="card-text">Job 2: {member.job2 ? member.job2.jobName : "None"}</p>
                            <p className="card-text">Licenses:</p>
                            <LicenseList licenses={member.licenses} />
                        </div>
                    </div>
                </div>
                <div className="col-6">
                    <div className="card">
                        <div className="card-body">
                            <form>
                                <div className="form-group">
                                    <label htmlFor="job-1-select">Select Job 1</label>
                                    <select className="form-control mb-3" id="job-1-select" value={job1Choice} onChange={(e)=>{setJob1Choice(e.target.value)}}>
                                        <option value={0}>None</option>
                                        {jobOptions}
                                    </select>
                                    <button className="btn btn-primary" onClick={(e)=>{handleSelectJob1(e)}}>Set Job 1</button>
                                </div>
                                <div className="form-group">
                                    <label htmlFor="job-2-select">Select Job 2</label>
                                    <select className="form-control mb-3" id="job-2-select" value={job2Choice} onChange={(e)=>{setJob2Choice(e.target.value)}}>
                                        <option value={0}>None</option>
                                        {jobOptions}
                                    </select>
                                    <button className="btn btn-primary" onClick={(e)=>{handleSelectJob2(e)}}>Set Job 2</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
}

export default MemberDetails;