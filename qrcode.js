// Usage: node qrcode.js <OUTPUT> <DATA>

const QRCode = require("qrcode");
const output = process.argv[2];
const data = process.argv[3];

// console.log(process.argv);

if (!output || !data) {
  console.error("Usage: node qrcode.js <OUTPUT> <DATA>");
  throw new Error("Parameter is missing");
}
QRCode.toFile(
  output,
  data,
  {
    scale: 16,
    margin: 4
  },
  function(err) {
    if (err) throw err;
    console.log(`- ${output}`);
  }
);
