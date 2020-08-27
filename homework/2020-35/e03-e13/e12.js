// The function that checks if a passed argument is a palindrome or not
function palindrome (string) {
  // Prepare a regular expression which removes all characters that need to be removed
  var re = /[^A-Za-z0-9]/g
  // Lowercase the argument string and remove characters that match with the prepared regular expression
  var lowercaseRegStr = str.toLowerCase().replace(re, '')
  // Create a new string from reversed lowercaseRegStr: split() creates an array of splitted characters, reverse() reverses an order of an array and join concantenates the array back together.
  var reversedStr = lowercaseRegStr.split('').reverse().join('')
  // Check if lowercaseRegStr and reversedStr are the same
  if (lowercaseRegStr === reversedStr) {
    console.log(string + ' is a palindrome.')
  } else {
    console.log(string + ' isn\'t a palindrome.')
  }
}

var readlineSync = require('readline-sync')
var str = readlineSync.question('Give me a string: ')
palindrome(str)
