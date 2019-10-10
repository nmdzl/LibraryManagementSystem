# README

# Heroku link: https://fierce-badlands-55306.herokuapp.com/

# Admin account:
  * email: team587@ncsu.edu
  * password: 111111
  
# Functions of all pages(buttons):
## Important Keys:
* 1. The first requirement of Bounes finished (cannot see others' private contents )
* 2. Admin could manage all books of all libraries, librarian could only manage books of his own library.
* 3. If there is no any books in the database, you can run rails db:seed to run some code which it could create several fake books.(Not used for heroku)
* 4.




## Homepage(Two Login Channels)

* login:
- [x] Student login (including Admin)
- [x] Librarian login

* signup:
- [x] the admin account cannot be signed up
- [x] sign up to new student (select the university)
- [x] sign up to new librarian (including select the library which he belongs to)

## after admin login

1. View Profile(show the private info.):
- [x] name 
- [x] email (it cannot be modified)

2. View all books: 
- [x] Including isbn, title, authors, language, published time, edition, associated lirary, subject, status (show: show the specific book info. like summary...)
- [x] View checkout history: View the checkout history of each book
- [x] Edit: edit the info. of each book
- [x] View checkout status: check each book is available or not
- [x] Checkout: borrow the book
- [x] Bookmark the book witch they are interested in


3. Search books: 
- [x] By publication date, title, subject or author 

4. My checkout history:
- [x] could see the checkout history of himself

5. Manage Library: 
- [x] Create a new library
- [x] Edit/ show/ destory a exist library 

6. Manage Librarian: 
- [x] Create a new librarian(could select the existed library which he would like to belong to)
- [x] Edit/ show/ destory a exist librarian

7. Manage Student: 
- [x] Create a new student
- [x] Edit/ show/ destory a exist student
- [x] view their checkout history (including check-out & check-in date of each book, and the overdue of each student)

8. Manage book: 
- [x] For the admin, "View all books" and "Manage books" are the same function

9. All requests for specical collection:
- [x] When there is a student try to checkout a book which belongs to special collection, it will show "Successfully requested, please wait for approval of admin/librarian"
then the admin or librarian could see a request of that book with two buttons "approve" and "deny"


## after student login
1. View Profile(show the private info.):
- [x] name
- [x] email
- [x] educational level
- [x] university
- [x] maximum of book
- [x] overdue

2. Search books: 
- [x] By publication date, title, subject or author 
    
3. View all books: 
- [x] Including isbn, title, authors, language, published time, edition, associated lirary, subject, status (show: show the specific book info. like summary...)
- [x] Checkout: borrow the book (if the book belongs to special collection, he needs to request an approve)
- [x] View checkout history: View the checkout history of each book
- [x] Bookmark the book witch they are interested in


## after librarian login

1. View Profile(show the private info.):
- [x] name
- [x] email
- [x] library which he belongs to

2. Choose library
- [x] Switch to another library(view profile -> edit, there you can change your library)

3. Manage book: (the difference with admin: the librarian could only manage the book which belongs to his library)
- [x] Including isbn, title, authors, language, published time, edition, associated lirary, subject, status (show: show the specific book info. like summary...)
- [x] View checkout history: View the checkout history of each book
- [x] Edit: edit the info. of each book (Manage Library -> View Books In Your Library)
- [x] View checkout status: check each book is available or not
- [x] Bookmark the book witch they are interested in
- [x] Add books to his library (Manage Library -> Add Book To Library)

## Bounes
- [x] No student/librarian should access any private content associated with other student/librarian/admin's account.
- [ ] All users can use their LinkedIn/Google/Facebook account (implementing any one of them is enough) to log into the system.
      
