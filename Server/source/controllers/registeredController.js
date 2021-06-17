const model = require("../models/registeredModel");
const sha256 = require("js-sha256");

exports.AddNew = (req, res) => {
    if(!req.body.pesel || !req.body.password) {
        res.status(400);
        res.json({
            "error_code": 184,
            "error_message": "parameters missing",
        });
        return;
    }
    model.AddNew(req.body);
    res.send("<script>window.location.replace('/register/');</script>done");
}

exports.CheckFor = (req, res) => {
    if(!req.body.pesel || !req.body.password) {
        res.status(400);
        res.json({
            "error_code": 184,
            "error_message": "parameters missing",
        });
        return;
    }
    res.send(model.CheckFor({pesel: req.body.pesel, password: req.body.password}));
}