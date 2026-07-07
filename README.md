# ⚽ Football Ticket Booking System

A relational database project for managing football ticket bookings. This project demonstrates database design, Entity Relationship Diagram (ERD) modeling, and SQL query implementation using a simplified Football Ticket Booking System.

---

## 📌 Project Overview

The Football Ticket Booking System is designed to manage:

* Registered users (Football Fans and Ticket Managers)
* Football matches and ticket availability
* Ticket booking transactions

The project focuses on designing a normalized relational database and writing SQL queries using joins, subqueries, aggregate functions, pattern matching, null handling, and pagination.

---

## 🎯 Objectives

* Design a relational database with proper normalization.
* Create an Entity Relationship Diagram (ERD).
* Implement Primary Keys and Foreign Keys.
* Maintain referential integrity.
* Practice intermediate and advanced SQL queries.

---

## 🛠 Technologies Used

* SQL
* PostgreSQL 
* DrawSQL (for ERD)

---

## 📂 Database Schema

### 1. Users

Stores information about all registered users.

| Column       | Description                    |
| ------------ | ------------------------------ |
| user_id      | Primary Key                    |
| full_name    | User's full name               |
| email        | Email address                  |
| role         | Football Fan or Ticket Manager |
| phone_number | Contact number                 |

---

### 2. Matches

Stores football match information.

| Column              | Description                                  |
| ------------------- | -------------------------------------------- |
| match_id            | Primary Key                                  |
| fixture             | Match between two teams                      |
| tournament_category | League or tournament                         |
| base_ticket_price   | Ticket price                                 |
| match_status        | Available, Selling Fast, Sold Out, Postponed |

---

### 3. Bookings

Stores ticket purchase records.

| Column         | Description                             |
| -------------- | --------------------------------------- |
| booking_id     | Primary Key                             |
| user_id        | Foreign Key → Users                     |
| match_id       | Foreign Key → Matches                   |
| seat_number    | Reserved seat                           |
| payment_status | Pending, Confirmed, Cancelled, Refunded |
| total_cost     | Final ticket price                      |

---

# 🗂 Entity Relationship Diagram (ERD)

Relationships implemented:

* **One User → Many Bookings**
* **One Match → Many Bookings**
* **Each Booking belongs to exactly one User and one Match**

```
Users (1)
   |
   |------< Bookings >------|
                             |
                           (1)
                         Matches
```

---

# 🧩 Database Relationships

### Users → Bookings

* One-to-Many (1:M)

A single user can purchase multiple tickets.

---

### Matches → Bookings

* One-to-Many (1:M)

A single football match can have many bookings.

---

### Bookings

Acts as the junction table connecting Users and Matches.

---

# 📋 SQL Features Implemented

* SELECT
* WHERE
* LIKE
* ILIKE 
* COALESCE
* IS NULL
* INNER JOIN
* LEFT JOIN
* Aggregate Functions
* AVG()
* Subqueries
* ORDER BY
* LIMIT
* OFFSET

---

# 📄 Queries Included

### Query 1

Retrieve all available Champions League matches.

---

### Query 2

Search users whose name starts with "Tanvir" or contains "Haque".

---

### Query 3

Display bookings with missing payment status.

---

### Query 4

Booking details with user and match information

---

### Query 5

Display a comprehensive list of all users and their booking IDs,ensuring that fans who have never bought a ticket are still listed

---

### Query 6

Find all bookings where the total cost is greater than the average of all ticket prices

---

### Query 7

Sorted Top 2 expensive matches and skip the absolute expensive one

---

# 📁 Project Structure

```
Football-Ticket-Booking-System/
│
├── README.md
├── QUERY.sql
├── ERD.png

```

---


# 📖 Learning Outcomes

This project demonstrates practical knowledge of:

* Database Design
* Entity Relationship Diagrams
* SQL Joins
* Foreign Keys
* Primary Keys
* Aggregate Functions
* Subqueries
* Pattern Matching
* Null Handling
* Pagination
* Relational Database Concepts

---

# 🤝 Contributing

Contributions are welcome!

1. Fork the repository.
2. Create a new branch.
3. Commit your changes.
4. Push to your branch.
5. Open a Pull Request.

---

# 📄 License

This project is intended for educational purposes and may be freely used for learning and academic practice.

---


⭐ If you found this project helpful, consider giving it a star on GitHub!
