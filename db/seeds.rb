
User.create!(email: 'user@user.com', password: '123456', name: 'Mike Constantinou')
Task.create!(user_id: 1, description: 'Make bed', completed: true)
Task.create!(user_id: 1, description: 'Make breakfast', completed: true)
Task.create!(user_id: 1, description: 'Do pots', completed: false)
Task.create!(user_id: 1, description: 'Vacuum', completed: false)

