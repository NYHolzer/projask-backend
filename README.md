# PROJASK README

This is the Projask Backend where we will persist ("save") data to the rails database such as users, tasks, projects, and make associations. In order to get the frontend of this program, please visit: https://github.com/NYHolzer/projask-frontend.git

## INSTALLATION
This was built to be run on a local machine. However, this can be reconfigured to be used on a server (and frontend on the client). 
To begin download and run `Bundle Install`. This will install of the gem dependencies that is required of this program. 
One highlight of this API is that we use Netflix's fastapi_json to serializer our models into JSON data.

Run `rails db:migrate` to get your database setup.

If you want to run some testing to see some functionality, seed data is provided - run `rails db:seed`.
Check the seed file for more details.

On a localhost, we recommed that rails be started on port 3001 by typing in this command into the terminal: `rails s -p 3001`


