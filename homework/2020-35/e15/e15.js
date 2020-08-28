const process = require('process')

const input = process.argv.slice(2)

let weeks = 0
let correctNums = 0

function main () {
  while (validateInput(input)) {
    checkCorrectNumbers(input)
    break
  }
}

function validateAmountOfArguments (input) {
  const amountOfArguments = input.length

  if (amountOfArguments < 7) {
    console.log('ERROR: You gave less than seven arguments.')
    process.exit(9)
  } else if (amountOfArguments > 7) {
    console.log('ERROR: You gave more than seven arguments.')
    process.exit(9)
  }
}

function checkIfArgumentIsDecimalNumber (argument) {
  const regex = /^\d+[.|,]\d+$/

  if (regex.test(argument)) {
    return true
  }

  return false
}

function validateArgumentsAreNumbers (input) {
  input.forEach(element => {
    if (checkIfArgumentIsDecimalNumber(element)) {
      return
    }

    if (isNaN(element)) {
      console.log('ERROR: Your arguments included a non-numeric character')
      process.exit(9)
    }
  })
}

function validateNumbersAreIntegers (input) {
  input.forEach(element => {
    if (checkIfArgumentIsDecimalNumber(element)) {
      console.log('ERROR: Your numbers included a decimal number.')
      process.exit(9)
    }
  })
}

function validateNumbersAreLottoNumbers (input) {
  input.forEach(element => {
    if (element < 1 || element > 40) {
      console.log('ERROR: Your numbers included an invalid lotto number.')
      process.exit(9)
    }
  })
}

function validateNoDuplicates (input) {
  if (new Set(input).size !== input.length) {
    console.log('ERROR: Your numbers included duplicates')
    process.exit(9)
  }
}

function validateInput (input) {
  validateAmountOfArguments(input)
  validateArgumentsAreNumbers(input)
  validateNumbersAreIntegers(input)
  validateNumbersAreLottoNumbers(input)
  validateNoDuplicates(input)

  return true
}

function setupNumRows (input, ownNums, lottoNums) {
  for (const num of input) {
    if (num < 10) {
      ownNums.push('0' + num)
    } else {
      ownNums.push(num)
    }
  }

  while (lottoNums.length !== 7) {
    let num = (Math.floor(Math.random() * 40) + 1)
    let duplicateFlag = false

    for (const lottoNum of lottoNums) {
      if (num == lottoNum) {
        duplicateFlag = true
      }
    }

    if (duplicateFlag) {
      continue
    }

    if (num < 10) {
      num = '0' + num.toString()
    } else {
      num = num.toString()
    }

    lottoNums.push(num)
  }
}

function checkCorrectNumbers (input) {
  const ownNumsFormatted = []
  const lottoNumsFormatted = []

  setupNumRows(input, ownNumsFormatted, lottoNumsFormatted)

  console.log('[' + ownNumsFormatted.sort().join(', ') + ']')
  console.log('[' + lottoNumsFormatted.sort().join(', ') + ']' +
  ' - correct = ' + correctNums)
}

function displayTimeTaken () {
}

main()
