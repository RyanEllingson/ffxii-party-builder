import React, {useEffect, useState} from "react";
import axios from "axios";
import LicenseList from "../LicenseList";

const MemberDetails = function({member, handleBack, setParty, availableEspers}) {
    const [jobList, setJobList] = useState([]);
    const [job1Choice, setJob1Choice] = useState(0);
    const [job2Choice, setJob2Choice] = useState(0);
    const [quickeningList, setQuickeningList] = useState([]);
    const [quickeningChoice, setQuickeningChoice] = useState(0);
    const [esperChoice, setEsperChoice] = useState(0);

    useEffect(() => {
        axios.get("/api/jobs").then(function(response) {
            setJobList(response.data);
        });
        axios.get("/api/quickenings").then(function(response) {
            setQuickeningList(response.data);
        })
        console.log(member);
    // eslint-disable-next-line react-hooks/exhaustive-deps
    }, []);
    
    const jobOptions = jobList.map((job) => {
        return (
            <option key={job.jobId} value={job.jobId}>{job.jobName}</option>
        );
    });

    const quickeningOptions = quickeningList.map((quickening) => {
        return (
            <option key={quickening.unlockerId} value={quickening.unlockerId}>{quickening.unlockerName}</option>
        );
    });

    const esperOptions = availableEspers.map((esper) => {
        return (
            <option key={esper.unlockerId} value={esper.unlockerId}>{esper.unlockerName}</option>
        );
    });

    const memberQuickenings = member.quickenings.map((quickening) => {
        return (
            <li className="list-group-item d-flex justify-content-between align-items-center">
                {quickening.unlockerName}
                <button className="badge badge-danger badge-pill" onClick={(e)=>{handleDeleteQuickening(e, quickening.unlockerId)}}>Remove</button>
            </li>
        );
    });

    const memberEspers = member.espers.map((esper) => {
        return (
            <li className="list-group-item d-flex justify-content-between align-items-center">
                {esper.unlockerName}
                <button className="badge badge-danger badge-pill" onClick={(e)=>{handleDeleteEsper(e, esper.unlockerId)}}>Remove</button>
            </li>
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

    const handleAddQuickening = function(event) {
        event.preventDefault();
        axios.post("/api/quickening", {
            memberName: member.memberName,
            quickeningId: quickeningChoice
        })
        .then(function(response) {
            setParty(response.data);
            handleBack(event);
        });
    };

    const handleAddEsper = function(event) {
        event.preventDefault();
        axios.post("/api/esper", {
            memberName: member.memberName,
            esperId: esperChoice
        })
        .then(function(response) {
            setParty(response.data);
            handleBack(event);
        });
    };

    const handleDeleteQuickening = function(event, quickeningId) {
        event.preventDefault();
        axios.delete(`/api/quickening/member=${member.memberName}&quickeningId=${quickeningId}`)
        .then(function(response) {
            setParty(response.data);
            handleBack(event);
        });
    };

    const handleDeleteEsper = function(event, esperId) {
        event.preventDefault();
        axios.delete(`/api/esper/member=${member.memberName}&esperId=${esperId}`)
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
                            <p className="card-text">Quickenings:</p>
                            <ul className="list-group">
                                {memberQuickenings}
                            </ul>
                            <p className="card-text">Espers:</p>
                            <ul className="list-group">
                                {memberEspers}
                            </ul>
                            <p className="card-text">Licenses:</p>
                            <LicenseList licenses={member.licenses} />
                        </div>
                    </div>
                </div>
                <div className="col-6">
                    <div className="card mb-3">
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
                    <div className="card mb-3">
                        <div className="card-body">
                            <form>
                                <div className="form-group">
                                    <label htmlFor="quickening-select">Add a quickening</label>
                                    <select className="form-control mb-3" id="quickening-select" value={quickeningChoice} onChange={(e)=>{setQuickeningChoice(e.target.value)}}>
                                        <option value={0}>Select a quickening</option>
                                        {quickeningOptions}
                                    </select>
                                    <button className="btn btn-primary" onClick={(e)=>{handleAddQuickening(e)}}>Add Quickening</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div className="card mb-3">
                        <div className="card-body">
                            <form>
                                <div className="form-group">
                                    <label htmlFor="esper-select">Add an esper</label>
                                    <select className="form-control mb-3" id="esper-select" value={esperChoice} onChange={(e)=>{setEsperChoice(e.target.value)}}>
                                        <option value={0}>Select an esper</option>
                                        {esperOptions}
                                    </select>
                                    <button className="btn btn-primary" onClick={(e)=>{handleAddEsper(e)}}>Add Esper</button>
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