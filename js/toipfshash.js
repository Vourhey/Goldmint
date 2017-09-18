const bs58 = require('bs58');

var str = process.argv[2];
str = "1220" + str.slice(2, str.length);
var bytes = Buffer.from(str, "hex");
var ipfshash = bs58.encode(bytes);
//bytes = bytes.slice(2, bytes.legnth);
console.log(ipfshash);
