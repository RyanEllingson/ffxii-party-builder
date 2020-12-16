import React from "react";

const LicenseModal = function({license}) {
    return (
        <div>
            <button className="list-group-item btn-block border-bottom text-left" data-toggle="modal" data-target={`#licenseModal${license.licenseId}`}>{license.licenseName} </button>
            <div className="modal fade" id={`licenseModal${license.licenseId}`} tabIndex="-1" role="dialog" aria-labelledby="licenseModal" aria-hidden="true">
                <div className="modal-dialog">
                    <div className="modal-content">
                        <div className="modal-header">
                            <h5 className="modal-title" id={`licenseModal${license.licenseId}`}>{license.licenseName}</h5>
                            <button type="button" className="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div className="modal-body">
                            <p>{license.description}</p>
                        </div>
                        <div className="modal-footer">
                            <button type="button" className="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default LicenseModal;