module.exports = (err, req, res, next) => {
    res.status(500);
    res.send("Error 500 - Internal server error. " + err);
}