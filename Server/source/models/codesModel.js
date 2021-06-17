const filesystem = require("fs");
const constants = require("../constants");

setInterval(() => filesystem.writeFileSync(constants.databaseCodes, JSON.stringify(list = JSON.parse(filesystem.readFileSync(constants.databaseCodes)).filter(x => x[1] > Date.now()))), 1000);

exports.GenCode = (code, pesel) => {
    let list = JSON.parse(filesystem.readFileSync(constants.databaseCodes));
    list.push([code, Date.now() + 60000, pesel]);
    filesystem.writeFileSync(constants.databaseCodes, JSON.stringify(list));
}

exports.CheckPesel = (pesel) => {
    let list = JSON.parse(filesystem.readFileSync(constants.databaseCodes));
    let i = list.findIndex(el => el[2] == pesel);
    if(i == -1)
        return false;
    list[i][1] = Date.now() + 60000;
    filesystem.writeFileSync(constants.databaseCodes, JSON.stringify(list));
    return list[i][0];
}

exports.CheckCode = (code) => 
    JSON.parse(filesystem.readFileSync(constants.databaseCodes)).findIndex(el => el[0] == code) != -1;