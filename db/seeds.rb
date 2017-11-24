# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
50.times do
  User.create(
    name: "Asdf Asdf",
    password: "password",
    sex: "M",
    age: 34)
end
