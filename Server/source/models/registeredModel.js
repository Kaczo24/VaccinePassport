const filesystem = require("fs");
const constants = require("../constants");

exports.AddNew = (obj) => {
    let list = JSON.parse(filesystem.readFileSync(constants.databaseRegistered));
    list.push([obj.pesel, obj.password, obj.date?obj.date+"":""]);
    filesystem.writeFileSync(constants.databaseRegistered, JSON.stringify(list));
}
exports.CheckFor = (obj) => {
    let list = JSON.parse(filesystem.readFileSync(constants.databaseRegistered));
    return list.findIndex(el => el[0] == obj.pesel && el[1] == obj.password) != -1;
}