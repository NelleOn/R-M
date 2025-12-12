CREATE TABLE Restaurang (
    restaurang_id SERIAL PRIMARY KEY,
    name TEXT,
    adress TEXT,
    phone TEXT,
    email TEXT;
    describtion TEXT
);
CREATE TABLE Menucategory(
 catalog_id SERIAL PRIMARY KEY,
name TEXT NOT NULL
    
);
CREATE TABLE OpeningHours (
    day_of_week TEXT PRIMARY KEY,
    open_time TIME,
    close_time TIME
);

CREATE TABLE Booking (
    booking_id SERIAL PRIMARY KEY,
    customer_name TEXT,
    customer_phone TEXT,
    customer_email TEXT,
    date DATE,
    time TIME,
    party_size INT,
    status TEXT DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT NOW(),
    cancelled_at TIMESTAMP
);
