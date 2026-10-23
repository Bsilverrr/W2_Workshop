USE lana_dog_walking;

-- Customers
INSERT INTO Customers (CustomerID, FirstName, LastName, Phone, Email, Address) VALUES
(1,  'Maria',  'Reyes',       '(201) 555-0118', 'maria.reyes@email.com',    '42 Oak Street, Hoboken, NJ 07030'),
(2,  'James',  'Okafor',      '(201) 555-0247', 'j.okafor@email.com',       '915 Garden Avenue, Jersey City, NJ 07302'),
(3,  'Priya',  'Shah',        '(973) 555-0390', 'priya.shah@email.com',     '18 Linden Court, Montclair, NJ 07042'),
(4,  'Daniel', 'Brooks',      '(201) 555-0421', 'dbrooks@email.com',        '506 Willow Terrace, Hoboken, NJ 07030'),
(5,  'Nina',   'Castellanos', '(201) 555-0563', 'nina.cast@email.com',      '77 Bloomfield Street, Hoboken, NJ 07030'),
(6,  'Marcus', 'Webb',        '(973) 555-0674', 'marcus.webb@email.com',    '230 Valley Road, Montclair, NJ 07042'),
(7,  'Yuki',   'Tanaka',      '(201) 555-0782', 'y.tanaka@email.com',       '1104 Grove Street, Jersey City, NJ 07302'),
(8,  'Tom',    'Delgado',     '(201) 555-0835', 'tom.delgado@email.com',    '63 Clinton Street, Hoboken, NJ 07030'),
(9,  'Rachel', 'Finn',        '(973) 555-0946', 'rachel.finn@email.com',    '841 Park Street, Montclair, NJ 07042'),
(10, 'Andre',  'Boucher',     '(201) 555-0157', 'andre.b@email.com',        '320 Newark Avenue, Jersey City, NJ 07302');

-- Dogs
INSERT INTO Dogs (DogID, CustomerID, DogName, Breed, Size, Age, SpecialRequests, MedicalNotes) VALUES
(1,  1,  'Biscuit', 'Beagle',           'Small',  4,  'Use the side gate, code 4412',       'Allergy medication at noon'),
(2,  1,  'Pepper',  'Jack Russell',     'Small',  6,  'Walk with Biscuit, not alone',       'None'),
(3,  2,  'Zeus',    'German Shepherd',  'Large',  3,  'Harness is in the hall closet',      'Recovering from hip strain, short walks only'),
(4,  3,  'Mango',   'Corgi',            'Small',  2,  'Leave through back door',            'None'),
(5,  4,  'Rufus',   'Labrador',         'Large',  7,  'Pulls hard, use the training collar','Arthritis, avoid stairs'),
(6,  5,  'Luna',    'Husky',            'Medium', 5,  'Walk with Shadow',                   'None'),
(7,  5,  'Shadow',  'Husky',            'Medium', 5,  'Walk with Luna',                     'Sensitive stomach, no treats'),
(8,  6,  'Tank',    'Bulldog',          'Medium', 8,  'Short walks, overheats fast',        'Breathing issues in heat'),
(9,  7,  'Mochi',   'Shiba Inu',        'Small',  1,  'Still in training, no dog parks',    'None'),
(10, 8,  'Bruno',   'Boxer',            'Large',  4,  'Nervous around strangers',           'None'),
(11, 9,  'Olive',   'Poodle',           'Small',  3,  'Text when the walk starts',          'Ear drops every evening'),
(12, 10, 'Gus',     'Golden Retriever', 'Large',  6,  'Loves the dog run on Grove',         'None');

-- Walks
INSERT INTO Walks (WalkID, CustomerID, WalkDate, StartTime, Duration, Rate, Completed, Notes) VALUES
(1,  1,  '2026-10-19', '12:30:00', 30, 25.00, TRUE,  'Both dogs walked together, no issues'),
(2,  2,  '2026-10-19', '09:00:00', 30, 25.00, TRUE,  'Kept it short, hip seemed fine'),
(3,  3,  '2026-10-19', '15:00:00', 60, 40.00, TRUE,  'Long loop through the park'),
(4,  4,  '2026-10-20', '08:30:00', 30, 25.00, TRUE,  'Avoided the stairs on Willow'),
(5,  5,  '2026-10-20', '13:00:00', 60, 45.00, TRUE,  'Two huskies, needed the full hour'),
(6,  6,  '2026-10-20', '17:00:00', 30, 25.00, TRUE,  'Warm out, took a water break'),
(7,  7,  '2026-10-21', '11:00:00', 30, 25.00, TRUE,  'Training walk, practiced heel'),
(8,  8,  '2026-10-21', '14:30:00', 60, 40.00, TRUE,  'Quiet route, less foot traffic'),
(9,  9,  '2026-10-22', '10:00:00', 30, 25.00, TRUE,  'Texted at start as requested'),
(10, 10, '2026-10-22', '16:00:00', 60, 40.00, TRUE,  'Twenty minutes at the dog run'),
(11, 1,  '2026-10-23', '12:30:00', 30, 25.00, FALSE, 'Scheduled'),
(12, 5,  '2026-10-23', '13:00:00', 60, 45.00, FALSE, 'Scheduled');

-- Payments
INSERT INTO Payments (PaymentID, CustomerID, PaymentDate, Amount, Method) VALUES
(1,  1,  '2026-10-20', 50.00,  'Venmo'),
(2,  2,  '2026-10-20', 25.00,  'Cash'),
(3,  3,  '2026-10-21', 40.00,  'Zelle'),
(4,  4,  '2026-10-21', 25.00,  'Venmo'),
(5,  5,  '2026-10-22', 90.00,  'Zelle'),
(6,  6,  '2026-10-22', 25.00,  'Cash'),
(7,  7,  '2026-10-22', 25.00,  'Venmo'),
(8,  8,  '2026-10-23', 40.00,  'Check'),
(9,  9,  '2026-10-23', 25.00,  'Venmo'),
(10, 10, '2026-10-23', 40.00,  'Zelle');

-- Walk_Dogs
INSERT INTO Walk_Dogs (WalkID, DogID) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(5, 7),
(6, 8),
(7, 9),
(8, 10),
(9, 11),
(10, 12),
(11, 1),
(11, 2),
(12, 6),
(12, 7);
SELECT * FROM Customers;
SELECT * FROM Walk_Dogs;