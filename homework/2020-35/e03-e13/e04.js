var readlineSync = require('readline-sync')

var name = readlineSync.question('Tell me your name: ')
var count = readlineSync.question('How many times you\'d like to repeat it? ')
console.log(name.repeat(count))
