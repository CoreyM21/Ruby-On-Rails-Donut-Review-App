Ruby On Rails Donut Review App - A donut reviewing app that allows users to log in, sign up, and create donuts and reviews for those donuts. Users can also edit and delete their own donuts and reviews as well as see what donuts other users made and review them as well.

Getting Started - To run this app, clone the repo and run bundle install. The run rils s to fire up a server. You should see the app running on http://127.0.0.1:3000/welcome.

Prerequisites - You will need to have Ruby installed on your machine - Linux or Mac.

Video Links - Video Walkthrough: https://www.youtube.com/watch?v=aNsoN38TsnQ&feature=youtu.be

Built With Ruby On Rails

Contributing - Feel free to contribute! Please fork, clone, and submit a PR if you like!

Versioning Version 1

Authors © 2020 by CoreyM21

License This project is licensed under the MIT License:

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


Flatiron Project Requirements
Use the Ruby on Rails framework.

Your models must:

X • Include at least one has_many, at least one belongs_to, and at least two has_many :through relationships

X • Include a many-to-many relationship implemented with has_many :through associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user

X Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.

X You must include at least one class level ActiveRecord scope method. a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort).

X Your application must provide standard user authentication, including signup, login, logout, and passwords.

X Your authentication system must also allow login from some other service. **GOOGLE** Facebook, Twitter, Foursquare, Github, etc...

You must include and make use of a nested resource with the appropriate RESTful URLs.

X • You must include a nested new route with form that relates to the parent resource

X • You must include a nested index or show route

Your forms should correctly display validation errors.

X a. Your fields should be enclosed within a fields_with_errors class

X b. Error messages describing the validation failures must be present within the view.

Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.

X • Logic present in your controllers should be encapsulated as methods in your models.

X • Your views should use helper methods and partials when appropriate.

X • Follow patterns in the Rails Style Guide and the Ruby Style Guide.

X (Did uses rails resoure generator) Do not use scaffolding to build your project. Your goal here is to learn. Scaffold is a way to get up and running quickly, but learning a lot is not one of the benefits of scaffolding.