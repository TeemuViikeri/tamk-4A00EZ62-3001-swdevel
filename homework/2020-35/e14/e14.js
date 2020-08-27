const asciitable = require('asciitable')
const readlineSync = require('readline-sync')

const database = []
const options = {
  skinny: true,
  intersectionCharacter: 'O'
}

let autoId = 0

const table = asciitable(database, options)

function add () {
  const name = readlineSync.question('May I have student name?\n')
  const student = { id: autoId, name: name }
  database.push(student)
  autoId++
}

function remove () {
  const id = readlineSync.question('May I have id?\n')

  for (let i = 0; i < database.length; i++) {
    const student = database[i];
    if (student.id === id) {
      database.splice(i, 1)
    }
  }

  console.log(database)
}

function display () {

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
