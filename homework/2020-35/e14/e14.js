const asciitable = require('asciitable')
const readlineSync = require('readline-sync')

const database = []
const options = {
  skinny: true,
  intersectionCharacter: 'O',
  columns: [
    { field: 'id', name: 'Student ID Number' },
    { field: 'name', name: 'Student Name' }
  ]
}

let autoId = 0

function add () {
  const name = readlineSync.question('May I have student name?\n')
  const student = { id: autoId, name: name }
  database.push(student)
  autoId++
}

function remove () {
  const id = Number(readlineSync.question('May I have id?\n'))

  for (let i = 0; i < database.length; i++) {
    if (database[i].id === id) {
      database.splice(i, 1)
    }
  }
}

function display () {
  const table = asciitable(database, options)
  console.log(table)
}

function main () {
  while (true) {
    console.log('\n' +
    '[1] Add\n' +
    '[2] Remove\n' +
    '[3] Display\n' +
    '[0] CANCEL\n')

    const input = Number(readlineSync.question('Choice? [1, 2, 3, 0]: '))

    if (input === 1) {
      add()
    } else if (input === 2) {
      remove()
    } else if (input === 3) {
      display()
    } else if (input === 0) {
      break
    } else {
      console.log('\nYour choice was invalid.')
      console.log('\nPick a number between 0-3.')
    }
  }
}

main()
