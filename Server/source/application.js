const express = require('express');
const morgan = require('morgan');
const bodyParser = require('body-parser');
const constants = require("./constants");

const application = express();

application.set('views', __dirname + '/views');
application.set('view engine', 'jsx');
application.engine('jsx', require('express-react-views').createEngine());

application.use(morgan('tiny', {
    "skip": (req, res) => res.statusCode < 400,
}));
application.use('/static', express.static(constants.publicPath));
application.use(bodyParser.json());
application.use(bodyParser.urlencoded({extended: true}));


application.use(require("./routes/routing"));


application.use(require("./utils/handler_NotFound"));
application.use(require("./utils/handler_InternalError"));

module.exports = application;
