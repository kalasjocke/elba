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

app.listen(process.env.PORT or 1337)
