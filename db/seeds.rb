# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Nissan", username: "NYHolzer", password: "password", work_email:"nholzer@scharfindustries.com", gmail_email: "nissan.holzer@gmail.com")
User.create(name: "Daniella", username: "DFMar", password: "password", work_email:"nholzer@scharfindustries.com", gmail_email: "dfmar18@gmail.com")
Project.create(title: "Project X", recurrence: "1x", description: "Project X will work on increasing revenue through customer relationships", deadline: "10/31/2019")
Project.create(title: "Project Z", recurrence: "Monthly", description: "Project Z mission is to maintain account health through monitoring", deadline: "no deadline")
ProjectAssignment.create(project_id: "1", user_id: "1")
ProjectAssignment.create(project_id: "2", user_id: "1")