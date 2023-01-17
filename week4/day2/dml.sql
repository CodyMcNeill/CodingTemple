INSERT INTO customer(
    first_name,
    last_name,
    age,
    email
) VALUES (
    'Shoha',
    'Tsuchida',
    9001,
    'shohat@codingtemple.com'
);

SELECT * FROM customer;

INSERT INTO customer(
    first_name,
    last_name,
    email,
    age
) VALUES (
    'Brandt',
    'Carlson',
    'brandtc@codingtemple.com',
    90010
),(
    'Aubrey',
    'Plaza',
    'aubreyp@codingtemple.com',
    29
),('Nicole', 'Shannon', 'nicoles@codingtemple.com',21);


INSERT INTO product(
    product_name,
    product_description,
    image_url,
    price
) VALUES(
    'Pillow Pet',
    'This is a cute and adorable pillow',
    'https://cdn11.bigcommerce.com/s-r7rkk91ha4/images/stencil/1280x1280/products/274/2035/Appa16_pet__54799.1665080252.jpg?c=1',
    19.99
);

SELECT * FROM product;









INSERT INTO sale(
    transaction_id,
    product_id
) VALUES(1,1);