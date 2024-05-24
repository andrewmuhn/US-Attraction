DROP DATABASE IF EXISTS vacation_attractions;
CREATE DATABASE vacation_attractions;
DROP TABLE IF EXISTS vacation_attractions.attractions;
DROP TABLE IF EXISTS vacation_attractions.states;
CREATE TABLE states (
    state_id SERIAL PRIMARY KEY,
    state_name VARCHAR(50) NOT NULL,
    state_abbreviation CHAR(2) NOT NULL,
    capital VARCHAR(50)
);
CREATE TABLE attractions (
    attraction_id SERIAL PRIMARY KEY,
    attraction_name VARCHAR(50) NOT NULL,
    attraction_description TEXT,
    state_id INT NOT NULL,
    state_abbreviation CHAR(2) NOT NULL,
    price_of_admission DECIMAL(10, 2),
    attraction_type VARCHAR(50) NOT NULL,
    attraction_rating DECIMAL(2, 1) NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states(state_id)
);
INSERT INTO states (state_name, state_abbreviation, capital)
VALUES ('California', 'CA', 'Sacramento'),
    ('New York', 'NY', 'Albany'),
    ('Texas', 'TX', 'Austin'),
    ('Florida', 'FL', 'Tallahassee'),
    ('Illinois', 'IL', 'Springfield'),
    ('Ohio', 'OH', 'Columbus'),
    ('Michigan', 'MI', 'Lansing'),
    ('Georgia', 'GA', 'Atlanta'),
    ('Colorado', 'CO', 'Denver'),
    ('Washington', 'WA', 'Olympia'),
    ('Arizona', 'AZ', 'Phoenix'),
    ('Oregon', 'OR', 'Salem'),
    ('Nevada', 'NV', 'Carson City'),
    ('Massachusetts', 'MA', 'Boston'),
    ('Pennsylvania', 'PA', 'Harrisburg'),
    ('Virginia', 'VA', 'Richmond'),
    ('Tennessee', 'TN', 'Nashville'),
    ('North Carolina', 'NC', 'Raleigh'),
    ('South Carolina', 'SC', 'Columbia'),
    ('Louisiana', 'LA', 'Baton Rouge'),
    ('Alabama', 'AL', 'Montgomery'),
    ('Mississippi', 'MS', 'Jackson'),
    ('Missouri', 'MO', 'Jefferson City'),
    ('Wisconsin', 'WI', 'Madison'),
    ('Minnesota', 'MN', 'St. Paul'),
    ('Indiana', 'IN', 'Indianapolis'),
    ('Kentucky', 'KY', 'Frankfort'),
    ('Oklahoma', 'OK', 'Oklahoma City'),
    ('Iowa', 'IA', 'Des Moines'),
    ('Kansas', 'KS', 'Topeka'),
    ('Nebraska', 'NE', 'Lincoln'),
    ('Arkansas', 'AR', 'Little Rock'),
    ('New Mexico', 'NM', 'Santa Fe'),
    ('Utah', 'UT', 'Salt Lake City'),
    ('Idaho', 'ID', 'Boise'),
    ('Montana', 'MT', 'Helena'),
    ('Wyoming', 'WY', 'Cheyenne'),
    ('North Dakota', 'ND', 'Bismarck'),
    ('South Dakota', 'SD', 'Pierre'),
    ('Alaska', 'AK', 'Juneau'),
    ('Hawaii', 'HI', 'Honolulu'),
    ('New Hampshire', 'NH', 'Concord'),
    ('Connecticut', 'CT', 'Hartford'),
    ('Rhode Island', 'RI', 'Providence'),
    ('Vermont', 'VT', 'Montpelier'),
    ('Maine', 'ME', 'Augusta'),
    ('West Virginia', 'WV', 'Charleston'),
    ('Maryland', 'MD', 'Annapolis'),
    ('Delaware', 'DE', 'Dover'),
    ('New Jersey', 'NJ', 'Trenton');
INSERT INTO attractions (
        attraction_name,
        state_id,
        state_abbreviation,
        attraction_type,
        price_of_admission,
        attraction_description,
        attraction_rating
    )
VALUES (
        'Golden Gate Bridge',
        1,
        'CA',
        'Landmark',
        10.00,
        'Iconic suspension bridge',
        4.5
    ),
    (
        'Yosemite National Park',
        1,
        'CA',
        'National Park',
        15.00,
        'Stunning natural beauty',
        4.8
    ),
    (
        'Times Square',
        2,
        'NY',
        'Landmark',
        NULL,
        'Vibrant entertainment hub',
        4.3
    ),
    (
        'Statue of Liberty',
        2,
        'NY',
        'Landmark',
        20.00,
        'Symbol of freedom',
        4.7
    ),
    (
        'The Alamo',
        3,
        'TX',
        'Historical Site',
        5.00,
        'Historic battle site',
        4.2
    ),
    (
        'San Antonio River Walk',
        3,
        'TX',
        'Tourist Attraction',
        NULL,
        'Scenic riverside promenade',
        4.6
    ),
    (
        'Walt Disney World',
        4,
        'FL',
        'Amusement Park',
        100.00,
        'Magical theme park',
        4.9
    ),
    (
        'Universal Studios Florida',
        4,
        'FL',
        'Amusement Park',
        90.00,
        'Movie-themed park',
        4.7
    ),
    (
        'Willis Tower',
        5,
        'IL',
        'Landmark',
        25.00,
        'Tallest building in Chicago',
        4.4
    ),
    (
        'Navy Pier',
        5,
        'IL',
        'Tourist Attraction',
        NULL,
        'Lakefront entertainment complex',
        4.3
    ),
    (
        'Rock and Roll Hall of Fame',
        6,
        'OH',
        'Museum',
        30.00,
        'Celebrating rock music history',
        4.5
    ),
    (
        'Cedar Point',
        6,
        'OH',
        'Amusement Park',
        70.00,
        'Thrill-seeker"s paradise',
        4.8
    );
SELECT *
FROM states;
SELECT attraction_name,
    attraction_description,
    state_name,
    price_of_admission
FROM attractions
    JOIN states ON attractions.state_id = states.state_id;
SELECT attraction_name,
    attraction_description,
    state_name,
    price_of_admission
FROM attractions
    JOIN states ON attractions.state_id = states.state_id
WHERE price_of_admission IS NULL;
UPDATE attractions
SET price_of_admission = 10.00
WHERE price_of_admission IS NULL
    AND attraction_id = 3;
SELECT attraction_name,
    attraction_description,
    state_name,
    price_of_admission
FROM attractions
    JOIN states ON attractions.state_id = states.state_id
WHERE price_of_admission IS NULL;
DELETE FROM attractions
WHERE attraction_id = 4;
SELECT attraction_name,
    attraction_description,
    state_name,
    price_of_admission
FROM attractions
    JOIN states ON attractions.state_id = states.state_id;
INSERT INTO attractions (
        attraction_name,
        state_id,
        state_abbreviation,
        attraction_description,
        price_of_admission,
        attraction_type,
        attraction_rating
    )
VALUES (
        'Crater Lake',
        12,
        'OR',
        'National Park',
        30.00,
        'Beatiful Lake',
        4.9
    );
SELECT attraction_name,
    attraction_description,
    state_name,
    price_of_admission
FROM attractions
    JOIN states ON attractions.state_id = states.state_id;