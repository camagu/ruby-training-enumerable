Ruby Training Exercises: Enumerable
===================================

This a set of exercises which will help you imrpove your Ruby skills. It's
intended to:

- Learn language basics, specially [Enumerable][enumerable]
- Practice [TDD][tdd] using [RSpec][rspec]
- Practice writing clean code

Intended for beginners and intermediate level developers.

Prerequisites
-------------

- Basic Ruby and [RSpec][rspec] knowledge.
- Running Ruby development environment

Get started
-----------

1. [Fork][github-fork] this repo
1. Go to the repo folder
1. Run ´bundle install´

Rules
-----

- Commit and push you're changes after completing each requirement
- Every completed requirement should include it's corresponding tests
- Use [TDD][tdd] to develop the requirements
- Existing classes can be modified but no new classes should be added

Exercises
---------

We want to build a *phone book* to display the names and phone numbers for our
contacts. Although we will not build the phone book's UI we need to build a
library which complies to the following requirements:

> *NOTE:* Under the `lib` folder we already have the `Contact` and `Phonebook`
> classes.

1. As a _client_ I want a list of the phone book contacts' names so I can
   display them to the user

   > *Hint:* define a method in the `Phonebook` class which returns an array
   > filled with it's contacts' names.

1. As a _client_ I want a list of the phone book contacts' phone numbers so I
   can display them to the user

   > *Hint:* define a method in the `Phonebook` class which returns an array
   > filled with it's contacts' phone numbers.

1. As a _client_ I want a mapping of the phone book contacts' names to their
   phone numbers so I can display the contact's phone numbers under it's name

   > *Hint:* define a method in the `Phonebook` class which returns an hash
   > which keys are the contacts' name and which values are the contacts' phone
   > numbers

1. As a _client_ I need to know if all the phone book contacts have phone
   numbers so I can warn the user about incomplete entries

   > *Hint:* define a method in the `Phonebook` class which returns `true` if
   > all contacts have phone numbers and `false` otherwise

1. As a _client_ I want a list of phone book contacts without phone numbers so I
   can show them to the user

   > *Hint:* define a method in the `Phonebook` class which returns an array
   > with contacts without phone numbers

Good luck!

[enumerable]: http://ruby-doc.org/core-2.1.0/Enumerable.html
[tdd]: http://en.wikipedia.org/wiki/Test-driven_development
[rspec]: http://rspec.info/
[github-fork]: https://help.github.com/articles/fork-a-repo
