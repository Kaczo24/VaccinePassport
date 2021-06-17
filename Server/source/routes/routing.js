const express = require("express");
const router = express.Router();

router.use("/", require("./index"));
router.use("/register", require("./register"));
router.use("/app", require("./app"));

module.exports = router;