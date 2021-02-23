# All I Want For ...
Personal project to build a website where users can create & share gift wish lists.  

This project was conceived to enable me to practice using Ruby on Rails, following a Makers group project using the same stack.

## Quick Start

1. Clone this repo
2. cd into the new folder
3. run `bundle install`
4. create the development and test databases in postgresql
5. run `rails db:migrate` to run migrations on database
6. run `npm install`
7. install yarn `npm install yarn -g`

## Planning

### Entity Relationship Diagrams

Entity relationship diagram for tables excluding friendships:

![Entity relationship diagram for tables excluding friendships](/app/assets/images/ERD_excl_friendships.png)

### Planning Notes
- [x] Rails project
- [x] Linted with Rubocop
- [x] Tested with Rspec & Capybara
- [x] Test coverage checked using SimpleCov
- [x] CI through Travis CI
- [ ] Styled using Bootstrap - investigate using colour palettes
- [x] Deployed via Heroku
- [x] Progress tracked via Github Projects

### User Stories

#### Minimum Viable Product:

```
As a user
So that I can set up gift lists
I want to be able to register for 'All I Want For'
```

```
As a user
So that I can store my list securely
I want to be able to log in to 'All I Want For'
```

```
As a user
So that my account remains secure
I want to be able to log out of 'All I Want For'
```

```
As a user
So that I can record what I want
I want to be able to create a gift list
```

```
As a user
So that I can request gifts
I want to be able to add items to my gift list
```

#### Second tranche:

```
As a user
In case the details change
I want to be able to amend items on my gift list
```

```
As a user
In case I buy things for myself
I want to be able to delete items from my gift list
```

```
As a user
So that I can let my friends & family know what I want
I want to be able to generate a link to my list
```

```
As a user
So that I don't receive duplicate gifts
I want people to be able to mark gifts as bought
```

```
As a user
So that I can manage my lists
I want to be able to move items between lists
```

```
As a user
So that I can keep my lists relevant
I want to be able to archive old lists
```

```
As a user
So that I only receive relevant gifts
I want to receive a reminder to update my list a month before my birthday
```

#### Third Tranche

```
As a user
So that I can keep up to date with my friends' gift ideas
I want to be able to add friends
```

```
As a user
So that I can buy a gift
I want to be able to view my friends' lists
```

```
As a user
So that I don't forget my friends' birthdays
I want to receive a reminder email
```
