CREATE TABLE flight (
    flightNumber INTEGER PRIMARY KEY,
    departureTime VARCHAR(5) NOT NULL,
    fromCode CHAR(3) NOT NULL,
    fromAirport TEXT NOT NULL,
    fromCity TEXT NOT NULL,
    arrivalTime VARCHAR(5) NOT NULL,
    toCode CHAR(3) NOT NULL,
    toAirport TEXT NOT NULL,
    toCity TEXT NOT NULL
);

CREATE TABLE reservation (
    reservationNumber SERIAL PRIMARY KEY,
    flightNumber INTEGER NOT NULL,
    flightDate DATE NOT NULL,
    ticketCount SMALLINT NOT NULL,
    capacity SMALLINT NOT NULL,
    name TEXT NOT NULL,
    FOREIGN KEY (flightNumber) REFERENCES flight(flightNumber)
);

INSERT INTO flight (flightNumber, departureTime, fromCode, fromAirport, fromCity, arrivalTime, toCode, toAirport, toCity)
VALUES (1, '09:30', 'FBU', 'Fornebu', 'Oslo', '10:40', 'HTR', 'Heathrow', 'London');

INSERT INTO reservation (flightNumber, flightDate, ticketCount, capacity, name)
VALUES (1, '2022-12-30', 2, 130, 'Pedersen');