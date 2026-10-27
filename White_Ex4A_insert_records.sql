USE lana_dog_walking;

INSERT INTO Customer (
    Customer_ID,
    First_Name,
    Last_Name,
    Phone_Number,
    Email,
    Street_Address,
    City,
    State,
    Zip_Code
)
VALUES
(555, 'Divine', 'Laurent', '(212) 555-0333',
 'Laurentd5@Gmail.com',
 '428 Greenwich Avenue', 'New York', 'NY', '10013'),

(556, 'Amara', 'Bennett', '(212) 555-0101',
 'amara.bennett@example.com',
 '125 Hudson Street', 'New York', 'NY', '10013'),

(557, 'Julian', 'Rivera', '(212) 555-0102',
 'julian.rivera@example.com',
 '85 West Broadway', 'New York', 'NY', '10007'),

(558, 'Naomi', 'Carter', '(646) 555-0103',
 'naomi.carter@example.com',
 '210 West 23rd Street', 'New York', 'NY', '10011'),

(559, 'Elijah', 'Brooks', '(917) 555-0104',
 'elijah.brooks@example.com',
 '330 East 14th Street', 'New York', 'NY', '10003'),

(560, 'Camille', 'Morgan', '(212) 555-0105',
 'camille.morgan@example.com',
 '75 Spring Street', 'New York', 'NY', '10012'),

(561, 'Adrian', 'Foster', '(646) 555-0106',
 'adrian.foster@example.com',
 '240 West 72nd Street', 'New York', 'NY', '10023'),

(562, 'Simone', 'Ellis', '(917) 555-0107',
 'simone.ellis@example.com',
 '180 East 86th Street', 'New York', 'NY', '10028'),

(563, 'Marcus', 'Reed', '(212) 555-0108',
 'marcus.reed@example.com',
 '95 Christopher Street', 'New York', 'NY', '10014'),

(564, 'Brielle', 'Hayes', '(646) 555-0109',
 'brielle.hayes@example.com',
 '410 West 42nd Street', 'New York', 'NY', '10036'),

(565, 'Xavier', 'Coleman', '(917) 555-0110',
 'xavier.coleman@example.com',
 '225 East 34th Street', 'New York', 'NY', '10016');
 
 SELECT * FROM Customer;
 SELECT * FROM customer ORDER BY Customer_ID;
 
 INSERT INTO Dog (
    Dog_ID,
    Customer_ID,
    Dog_Name,
    Age,
    Breed,
    Special_Instructions
)
VALUES
(818, 555, 'Jasper', 5, 'Golden Retriever',
 'Friendly puppy. Keep leashed and walks gentle.'),

(819, 556, 'Bella', 24, 'Labrador Retriever',
 'Very energetic. Enjoys long walks. Keep leashed near busy streets.'),

(820, 557, 'Milo', 18, 'French Bulldog',
 'Avoid strenuous exercise and hot weather. Provide frequent rest breaks.'),

(821, 558, 'Luna', 36, 'Siberian Husky',
 'Strong puller. Use a secure harness and avoid off-leash areas.'),

(822, 559, 'Cooper', 12, 'Beagle',
 'Easily distracted by scents. Keep leashed and avoid unfamiliar food.'),

(823, 560, 'Daisy', 48, 'Poodle',
 'Prefers quiet walking routes. May become nervous around large crowds.'),

(824, 561, 'Rocky', 30, 'German Shepherd',
 'Responds well to basic commands. Allow space around unfamiliar dogs.'),

(825, 562, 'Coco', 8, 'Shih Tzu',
 'Young puppy. Short, gentle walks and frequent rest breaks preferred.'),

(826, 563, 'Max', 60, 'Boxer',
 'Friendly but excitable. Avoid jumping and use positive reinforcement.'),

(827, 564, 'Rosie', 15, 'Cocker Spaniel',
 'Shy around strangers. Approach calmly and avoid crowded dog parks.'),

(828, 565, 'Teddy', 9, 'Cavalier King Charles Spaniel',
 'Enjoys relaxed walks. Keep close near traffic and offer water breaks.');
RENAME TABLE dogs TO dog;
SELECT * FROM dog;

INSERT INTO Appointment (
    Appointment_ID,
    Customer_ID,
    Service_ID,
    Appointment_Date,
    Start_Time,
    Requests
)
VALUES
(90123, 555, 101, '2026-07-12', '12:00:00',
 'Keep Jasper leashed and walks gentle.'),

(90124, 556, 102, '2026-07-13', '09:00:00',
 'Please use the side entrance.'),

(90125, 557, 101, '2026-07-14', '10:30:00',
 'Avoid crowded walking routes.'),

(90126, 558, 102, '2026-07-15', '08:00:00',
 'Please bring Luna''s harness.'),

(90127, 559, 101, '2026-07-16', '11:00:00',
 'Call upon arrival.'),

(90128, 560, 101, '2026-07-17', '13:30:00',
 'Use the quieter park entrance.'),

(90129, 561, 102, '2026-07-18', '07:30:00',
 'Avoid other dogs during the walk.'),

(90130, 562, 101, '2026-07-19', '14:00:00',
 'Please pick up Coco from the lobby.'),

(90131, 563, 102, '2026-07-20', '16:00:00',
 'Please send an update after the walk.'),

(90132, 564, 101, '2026-07-21', '09:30:00',
 'Use the building''s rear entrance.'),

(90133, 565, 101, '2026-07-22', '15:00:00',
 'Please knock instead of ringing the bell.');

INSERT INTO Service (
    Service_ID,
    Service_Name,
    Walk_Duration,
    Service_Rate
)
VALUES
(101, 'Standard Walk', 60, 25.00),
(102, 'Extended Walk', 90, 35.00),
(103, 'Standard Walk', 60, 25.00),
(104, 'Extended Walk', 90, 35.00),
(105, 'Standard Walk', 60, 25.00),
(106, 'Extended Walk', 90, 35.00),
(107, 'Standard Walk', 60, 25.00),
(108, 'Extended Walk', 90, 35.00),
(109, 'Standard Walk', 60, 25.00),
(110, 'Extended Walk', 90, 35.00),
(111, 'Standard Walk', 60, 25.00);

SELECT *
FROM Service
ORDER BY Service_ID;

SELECT * FROM appointment;
SELECT * FROM service;
SELECT * FROM appointment_dog;
SELECT * FROM Customer;
SELECT * FROM payment;
SELECT * FROM dog;

INSERT INTO Appointment_Dog (
    Appointment_ID,
    Dog_ID
)
VALUES
(90123, 818),
(90124, 819),
(90125, 820),
(90126, 821),
(90127, 822),
(90128, 823),
(90129, 824),
(90130, 825),
(90131, 826),
(90132, 827),
(90133, 828);

SELECT * FROM appointment_dog;

INSERT INTO Payment (
    Payment_ID,
    Appointment_ID,
    Payment_Status,
    Payment_Method,
    Payment_Date
)
VALUES
(99, 90123, 'Paid', 'Debit', '2026-07-02'),
(100, 90124, 'Paid', 'Credit', '2026-07-13'),
(101, 90125, 'Paid', 'Debit', '2026-07-14'),
(102, 90126, 'Pending', NULL, NULL),
(103, 90127, 'Paid', 'Cash', '2026-07-16'),
(104, 90128, 'Paid', 'Credit', '2026-07-17'),
(105, 90129, 'Paid', 'Debit', '2026-07-18'),
(106, 90130, 'Pending', NULL, NULL),
(107, 90131, 'Paid', 'Credit', '2026-07-20'),
(108, 90132, 'Paid', 'Cash', '2026-07-21'),
(109, 90133, 'Paid', 'Debit', '2026-07-22');

SELECT * FROM payment;
