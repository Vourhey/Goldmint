const bs58 = require('bs58');

//console.log(process.argv);
var ipfshash = process.argv[2];
var bytes = bs58.decode(ipfshash);
bytes = bytes.slice(2, bytes.legnth);
console.log("0x" + bytes.toString("hex"));
