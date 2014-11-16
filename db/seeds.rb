# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
  {
    username: 'gnomex',
    encrypted_password: PasswordEncryptor.encrypt('gnomos')[:hash],
    email: 'gnomex@gnom.os', role: 'admin'
  },
  {
    username: 'john',
    encrypted_password: PasswordEncryptor.encrypt('john')[:hash],
    email: 'john@gnom.os'
  },
  {
    username: 'doe',
    encrypted_password: PasswordEncryptor.encrypt('doe')[:hash],
    email: 'doe@gnom.os'
  }
])
