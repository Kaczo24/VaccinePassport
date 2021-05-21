const path = require("path")

exports.pathJoin = (p1, p2) => path.join(p1, p2);

exports.projectPath = path.join(__dirname, "./..");

exports.privatePath = path.join(this.projectPath, "/private");
exports.publicPath = path.join(this.projectPath, "/public");
exports.sourcePath = path.join(this.projectPath, "/source");
exports.viewPath = path.join(this.sourcePath , "/views");