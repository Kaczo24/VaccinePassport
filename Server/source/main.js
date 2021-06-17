const http = require("http");
const https = require("https");
const application = require("./application");
const { port, ssl } = require("./configuration");

const server = (null !== ssl)
    ? https.createServer(Object.assign({}, ssl), application)
    : http.createServer(application);

server.listen(port, () => {
    console.log(`sample_server is running.`);
    console.log(`port: ${port}`);
    console.log(`ssl: ${null !== ssl}`);
});
