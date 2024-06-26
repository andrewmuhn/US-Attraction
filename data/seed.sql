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
INSERT INTO users (name, email)
VALUES ('Jerry', 'jerry@example.com'),
    ('George', 'george@example.com');