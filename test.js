var fs = require('fs');

// this script simply keeps the docker container running for a bash window
setInterval(() => {
  fs.appendFileSync(`${__dirname}/test.log`, `test last ran on ${new Date()}\n`);
}, 10000);
