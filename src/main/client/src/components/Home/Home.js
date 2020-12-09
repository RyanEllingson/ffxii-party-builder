import React, { useEffect } from "react";
import axios from "axios";

const Home = function() {
    useEffect(() => {
        axios.get("/api/party").then(function(response) {
            console.log(response.data);
        });
    }, []);

    return (
        <h1 className="text-center">hello</h1>
    );
}

export default Home;