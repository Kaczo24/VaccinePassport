const express = require("express");
const controller = require("../controllers//registerController")
const router = express.Router();

router.get('/', controller.AddNew);


module.exports = router;