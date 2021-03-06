import React from "react";
import LicenseModal from "../LicenseModal";

const LicenseList = function({licenses}) {
    const licenseTypeList = Object.keys(licenses).map((licenseType) => {
        return (
            <div className="card" key={licenseType}>
                <div className="card-header bg-secondary">
                    <h2 className="mb-0">
                        <button className="btn btn-block text-left text-white" type="button" data-toggle="collapse" data-target={"#collapse-"+licenseType.replace(/\s+/g, "")}>{licenseType}</button>
                    </h2>
                </div>
                <div id={"collapse-"+licenseType.replace(/\s+/g, "")} className="collapse accordion" data-parent="#accordion">
                    {Object.keys(licenses[licenseType]).map((licenseSubtype) => {
                        return (
                            <div className="card" key={licenseSubtype}>
                                <div className="card-header">
                                    <h2 className="mb-0">
                                        <button className="btn btn-block text-left" type="button" data-toggle="collapse" data-target={"#collapse-subtype-"+licenseSubtype.replace(/\s+/g, "")}>{licenseSubtype}</button>
                                    </h2>
                                </div>
                                <div className="collapse accordion" id={"collapse-subtype-"+licenseSubtype.replace(/\s+/g, "")} data-parent={"#collapse-"+licenseType.replace(/\s+/g, "")}>
                                    <div className="card-body p-0 border-top">
                                        <ul className="list-group list-group-flush">
                                            {licenses[licenseType][licenseSubtype].map((license) => {
                                                return (
                                                    <LicenseModal key={license.licenseId} license={license} />
                                                );
                                            })}
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        );
                    })}
                </div>
            </div>
        );
    });

    return (
        <div className="accordion" id="accordion">
            {licenseTypeList}
        </div>
    );
};

export default LicenseList;