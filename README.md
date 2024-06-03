# Assignment-2

## Question 1 :

In this contract there is a state variable 'owner' to store the current owner's address. It emits an event 'OwnerChanged' whenever the owner is updated.
The function 'changeOwner' is a public function that takes an unsigned integer input. It checks if the input is a prime number and changes the owner to the address that calls the function if the input is prime or else it reverts the function call if the input is less than 1.
The function 'isPrime' is a private helper function used to check if a given number is prime or not.

## Question 2 :

This contract defines a struct 'Employee' to represent the properties of an employee and a mapping 'employees' to store employees by their IDs. It has a state variable 'nextEmployeeID' to track the ID for the next employee to be added.
The function 'addEmployee' adds a new employee to the mapping and emits an 'EmployeeAdded' event with the details of the new employee.
The function 'updateEmployee' updates the details of an existing employee in the mapping and emits an 'EmployeeUpdated' event with the updated details.
The function 'getEmployeeDetails' returns the name, position, and salary of an employee based on their ID.
The function 'deleteEmployee' removes an employee from the mapping and emits an 'EmployeeDeleted' event with the details of the deleted employee.

## Question 3 :

This contract defines a struct 'Book' to represent the properties of a book and two mappings: 'books' to store books by their ID, and 'borrowed_books' to store books borrowed by users by their address.

The function 'addBook' adds a new book to the books mapping.
The function 'borrowBook' allows a user to borrow a book by its ID.
The function 'getBookDetails' retrieves the details of a book by its ID.
The function 'returnBook' allows a user to return a borrowed book.
The modifier 'validBook' checks if the given book ID is valid or not.
Events are emitted for adding books ('BookAdded'), borrowing books ('BookBorrowed'), and returning books ('BookReturned').











