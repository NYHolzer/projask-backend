# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Nissan", username: "NYHolzer", password: "password", work_email:"nholzer@scharfindustries.com", gmail_email: "nissan.holzer@gmail.com")
User.create(name: "Daniella", username: "DFMar", password: "password", work_email:"nholzer@scharfindustries.com", gmail_email: "dfmar18@gmail.com")
Project.create(title: "Project X", recurrence: "1x", description: "Project X will work on increasing revenue through customer relationships", deadline: "10/31/2019", assigned_by: "Daniella")
Project.create(title: "Project Z", recurrence: "Monthly", description: "Project Z mission is to maintain account health through monitoring", deadline: "no deadline", assigned_by: "Nissan")
Project.create(title: "Project L", recurrence: "Weekly", description: "Project L involves spreading the Love with some weekly prizes", deadline: "no deadline", assigned_by: "Nissan")
Task.create(title: "Task 1", description: "This 1st task has to do with Project X", assigned_by: "1", status_id: "1", project_id: "1")
Task.create(title: "Task 2", description: "This 2nd task has to do with Project X", assigned_by: "1", status_id: "1", project_id: "1")
Task.create(title: "Task 3", description: "This 3rd task has to do with Project Y", assigned_by: "2", status_id: "1", project_id: "2")
Task.create(title: "Task 4", description: "This 4th task has to do with Project Y", assigned_by: "2", status_id: "1", project_id: "2")
ProjectAssignment.create(project_id: "1", user_id: "1")
ProjectAssignment.create(project_id: "2", user_id: "1")
ProjectAssignment.create(project_id: "2", user_id: "2")
ProjectAssignment.create(project_id: "3", user_id: "2")
TaskAssignment.create(task_id: "1", user_id: "1")
TaskAssignment.create(task_id: "2", user_id: "1")
TaskAssignment.create(task_id: "2", user_id: "2")
TaskAssignment.create(task_id: "3", user_id: "1")
TaskAssignment.create(task_id: "4", user_id: "1")