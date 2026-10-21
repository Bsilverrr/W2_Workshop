# Requirements and Conceptual Model
Brandon Silverio, Aalexus White, Ajani Lewis
1b) Who is the end user?
Lana the owner will be end user and what she needs to be able to do is the following:
- Look up customer info
- Know which dogs belong to which customer
- See what walks are scheduled today and this week
- Mark a walk as completed
- Check a dog's special needs/requests before a walk
- Reach an emergency contact or vet
- Track what she has been paid and what is owed
1c) Categories of Data
Customers - Name, phone, email, address
Dogs - name, owner, breed, size, age, special requests, medical notes
Walks - date, time, duration, which customer, which dog, rate, completed, notes
Payments- amount, date, method, which client
Service type- service name, rate, duration

# Logical Model

2a) Entities
- Customers
- Dogs
- Walks
- Payments

2b) Attributes

Customers
- CustomerID (PK)
- FirstName
- LastName
- Phone
- Email
- Address

Example: C001, Daniel, Marisco, (201) 551-0118, daniel.marisco@gmail.com, 400 Oak Street Rd

Dogs
- DogID (PK)
- CustomerID (FK)
- DogName
- Breed
- Size
- Age
- SpecialRequests
- MedicalNotes

Example: D014, C001, Biscuit, Beagle, Small, 4, "use back door", "allergy meds at noon"

Walks
- WalkID (PK)
- CustomerID (FK)
- WalkDate
- StartTime
- Duration
- Rate
- Completed
- Notes

Example: W2210, C001, 10/22/2026, 12:30, 30, 25.00, Yes, "no issues"

Payments
- PaymentID (PK)
- CustomerID (FK)
- PaymentDate
- Amount
- Method

Example: P0088, C001, 10/25/2026, 100.00, Venmo

2c) Relationships
- One Customer has many Dogs (one-to-many)
- One Customer has many Walks (one-to-many)
- One Customer has many Payments (one-to-many)
- One Walk can cover many Dogs, and one Dog is on many Walks (many-to-many)

To show Lana a single walk, the database pulls the walk record together with
the customer's address from Customers and each dog's notes from Dogs.

