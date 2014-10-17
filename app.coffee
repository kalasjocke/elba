fortune = require 'fortune'

app = fortune(
  db: 'petstore',
)

app.resource('person', {
  name: String,
  age: Number,
  pets: ['pet'],
})

app.resource('pet', {
  name: String,
  age: Number,
  owner: 'person',
})

app.listen(1337)
