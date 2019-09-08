# How to use Phonebook API

Clone the repository,  `bundle install`  and then `rails db:seed`

You can tests the various calls from the PhonebookAPI Postman collection https://documenter.getpostman.com/view/338194/SVmpWgnF?version=latest

Start the `rails server`

Start from the request `POST /authenticate` to receive your token

In the Authorization tab in Postman, choose `Bearer Token` as authorization method

Paste your token in the token field and you are ready to go :)
