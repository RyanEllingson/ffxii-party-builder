import React, {useEffect, useState} from "react";
import axios from "axios";

const Espers = function() {
    const [espers, setEspers] = useState([]);
    const [chosenEsper, setChosenEsper] = useState(0);
    const [regions, setRegions] = useState([]);

    useEffect(() => {
        axios.get("/api/espers").then(function(response) {
            setEspers(response.data);
        });
    }, []);

    const esperList = espers.map((esper) => {
        return (
            <option key={esper.unlockerId} value={esper.unlockerId}>{esper.unlockerName}</option>
        );
    });

    const regionList = regions.map((region) => {
        return (
            <div className="card mb-1" key={region.regionId}>
                <div className="card-header">
                    <h2 className="mb-0">
                        <button className="btn btn-block text-left" type="button" data-toggle="collapse" data-target={"#collapse-"+region.regionId}>{region.jobName}</button>
                    </h2>
                </div>
                <div className="collapse" id={"collapse-"+region.regionId}>
                    <div className="card-body p-0">
                        <ul className="list-group list-group-flush">
                            {region.licenses.map((license) => {
                                return (
                                    <li className="list-group-item" key={license.licenseId}>{license.licenseName}</li>
                                );
                            })}
                        </ul>
                    </div>
                </div>
            </div>
        );
    });

    const handleChooseEsper = function(event) {
        event.preventDefault();
        setChosenEsper(event.target.value);
        axios.get(`/api/regions/unlocker/${event.target.value}`).then(function(response) {
            setRegions(response.data);
        });
    };

    return (
        <div className="container">
            <div className="row">
                <div className="col-6">
                    <div className="card">
                        <div className="card-body">
                            <div className="form-group">
                                <label htmlFor="esper-select">Choose an Esper</label>
                                <select className="form-control" id="esper-select" value={chosenEsper} onChange={(e)=>{handleChooseEsper(e)}}>
                                    <option value={0}>Select an esper</option>
                                    {esperList}
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div className="col-6">
                    <div className="card">
                        <div className="card-body">
                            {regionList}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default Espers;