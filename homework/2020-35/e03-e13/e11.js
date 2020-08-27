const carNames = ['Tiida', 'Golf', 'Polo', 'Mustang']

for (let i = 0; i < carNames.length; i++) {
  console.log(carNames[i])
}

console.log()

for (const name of carNames) {
  console.log(name)
}
