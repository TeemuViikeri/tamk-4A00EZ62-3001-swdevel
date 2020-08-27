// var: a globally and function scoped variable, can be re-declared (even though ESLint does make a mark on that) and updated

var num = 1

if (num > 0) {
  num = 10
}

console.log(num) // outputs 10

function func () {
  var x = 1
  return x
}

// console.log(x) would throw an error due to x is defined inside a function and it is the limit of its scope

console.log(func()) // this works due to x is being handled inside the function and then returned via the function return call

// let: a block scoped variable, can be updated

let hello = 'Hello '
hello = 'Hallo '

if (hello.length === 6) {
  let name = 'Teemu'
  name = 'Tobias'
  console.log(name)
}

// console.log(hello + name) at this point would throw a ReferenceError due to variable 'name' is defined inside the if condition block so it can't be used outside of that block

let name = 'Teemu'
name = 'Pauli'

console.log(hello + name) // this works due to the second 'name' variable is defined so it can be used

// const: same as let variable but const variable's value remains constant; it can't be updated or re-declared

const a = 1

// a = 2 wouldn't work due to the variable is const

console.log(a)
