const express = require("express");
const router = express.Router();

router.use("/", require("./index"));
router.use("/app", require("./app"));

module.exports = router;