const modelC = require("../models/codesModel");
const modelR = require("../models/registeredModel");

exports.GenCode = (req, res) => {
    if(!req.body.pesel || !req.body.password) {
        res.status(400);
        res.json({
            "error_code": 184,
            "error_message": "parameters missing",
        });
        return;
    }
    if(!modelR.CheckFor(req.body)) {
        res.status(400);
        res.json({
            "error_code": 185,
            "error_message": "parameters invalid",
        });
        return;
    }
    let code;
    if(!(code = modelC.CheckPesel(req.body.pesel))) {
        code = 
        Math.floor(Math.random() * 4294967296).toString(16) +
        Math.floor(Math.random() * 4294967296).toString(16) +
        Math.floor(Math.random() * 4294967296).toString(16) +
        Math.floor(Math.random() * 4294967296).toString(16);
        modelC.GenCode(code, req.body.pesel);
    }
    res.send(code);
}

exports.CheckCode = (req, res) => {
    if(!req.body.code) {
        res.status(400);
        res.json({
            "error_code": 184,
            "error_message": "parameters missing",
        });
        return;
    }
    res.json({exists:modelC.CheckCode(req.body.code)})
}