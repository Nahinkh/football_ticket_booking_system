-- =========================================================================
-- SYSTEM: Football Ticket Booking System Database
-- =========================================================================

-- DROP TABLES IF THEY ALREADY EXIST TO PREVENT CONFLICTS
DROP TABLE IF EXISTS Bookings;
DROP TABLE IF EXISTS Matches;
DROP TABLE IF EXISTS Users;

-- =========================================================================
-- 1. CREATE USERS TABLE
-- =========================================================================
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    role VARCHAR(100) CHECK (role IN ('Football Fan', 'Ticket Manager')),
    phone_number VARCHAR(20)
);

-- =========================================================================
-- 2. CREATE MATCHES TABLE
-- =========================================================================
    CREATE TABLE Matches (
        match_id INT PRIMARY KEY,
        fixture VARCHAR(255) NOT NULL,
        tournament_category VARCHAR(100),
        base_ticket_price DECIMAL(10, 2) CHECK (base_ticket_price >= 0),
        match_status VARCHAR(50) CHECK (match_status IN ('Available', 'Selling Fast', 'Sold Out','Postponed'))
    );

-- =========================================================================
-- 3. CREATE BOOKINGS TABLE
-- =========================================================================
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    user_id INT REFERENCES Users(user_id) ON DELETE CASCADE,
    match_id INT REFERENCES Matches(match_id) ON DELETE CASCADE,
    seat_number VARCHAR(20),
    payment_status VARCHAR(50) CHECK (payment_status IN ('Pending', 'Confirmed', 'Cancelled')),
    total_cost DECIMAL(10, 2) CHECK (total_cost >= 0),
    UNIQUE (user_id, match_id, seat_number)  -- Ensure a user cannot book the same seat for the same match more than once
);