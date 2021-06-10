const express = require("express");
const controller = require("../controllers/codesController")

const router = express.Router();

router.post('/genCode', controller.GenCode);
router.post('/checkCode', controller.CheckCode);

module.exports = router;