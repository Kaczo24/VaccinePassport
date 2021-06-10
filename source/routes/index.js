const express = require("express");
const controller = require("../controllers/registeredController")

const router = express.Router();

router.post('/addNew', controller.AddNew);
router.post('/checkFor', controller.CheckFor);

module.exports = router;