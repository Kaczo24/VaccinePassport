const model = require("../models/registeredModel");
const sha256 = require("js-sha256");

exports.AddNew = (req, res) => {
    res.send(`
    <html><body>
        <form action="/addNew/" method="post">
            <label>Pesel</label><input name="pesel" type="text"></input><br>
            <label>Hasło</label><input name="password" type=password></input><br>
            <label>Data szczepienia</label><input name="date" type=date></input><br>
            <input type="submit"></input>
        </form>
    </body></html>
    `);
}