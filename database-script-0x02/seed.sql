-- Mohamed Gharieb
INSERT INTO users (user_id, full_name, email, username, password_hash, role)
VALUES (
    'b9a59ad0-dc2a-4b99-8145-000000000001',
    'Mohamed Gharieb',
    'm.gharieb@gmail.com',
    'gharieb',
    'hashed_password_123',  -- use a real hash in production
    'user'
);

-- Other users
INSERT INTO users (user_id, full_name, email, username, password_hash)
VALUES
('b9a59ad0-dc2a-4b99-8145-000000000002', 'Nour Mohamed', 'nourm@example.com', 'fatma90', 'hashed_pw_f'),
('b9a59ad0-dc2a-4b99-8145-000000000003', 'Ahmed Lotfy', 'ahmed@example.com', 'lotfy', 'hashed_pw_a');

INSERT INTO bookings (booking_id, user_id, property_id, start_date, end_date, total_price, status)
VALUES
('55d6c8f5-2222-4000-bc2c-000000000001',
 'b9a59ad0-dc2a-4b99-8145-000000000003', -- Ahmed is guest
 '888f5b4e-1111-4000-bc2c-000000000001', -- Mohamed's apartment
 '2025-07-01', '2025-07-05', 3000.00, 'confirmed'),

('55d6c8f5-2222-4000-bc2c-000000000002',
 'b9a59ad0-dc2a-4b99-8145-000000000001', -- Mohamed is guest
 '888f5b4e-1111-4000-bc2c-000000000002', -- Fatma's beach house
 '2025-08-10', '2025-08-15', 4900.00, 'completed');

INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
('99d9f9f9-4444-4000-bc2c-000000000001',
 '55d6c8f5-2222-4000-bc2c-000000000001',
 3000.00, 'credit_card'),

('99d9f9f9-4444-4000-bc2c-000000000002',
 '55d6c8f5-2222-4000-bc2c-000000000002',
 4900.00, 'bank_transfer');


INSERT INTO reviews (review_id, user_id, property_id, rating, comment)
VALUES
('rev-0001-aaaa-bbbb-cccccccc0001',
 'b9a59ad0-dc2a-4b99-8145-000000000001',  -- Mohamed reviews Fatma’s property
 '888f5b4e-1111-4000-bc2c-000000000002',
 5,
 'Amazing view, very clean and relaxing.'),

('rev-0002-aaaa-bbbb-cccccccc0002',
 'b9a59ad0-dc2a-4b99-8145-000000000003',  -- Ahmed reviews Mohamed’s property
 '888f5b4e-1111-4000-bc2c-000000000001',
 4,
 'Good place, great location. Would visit again.');

INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
('msg-0001-cccc-dddd-eeeeeeee0001',
 'b9a59ad0-dc2a-4b99-8145-000000000003', -- Ahmed
 'b9a59ad0-dc2a-4b99-8145-000000000001', -- Mohamed
 'Hi Mohamed, is the apartment available on July 1st?'),

('msg-0002-cccc-dddd-eeeeeeee0002',
 'b9a59ad0-dc2a-4b99-8145-000000000001', -- Mohamed
 'b9a59ad0-dc2a-4b99-8145-000000000003', -- Ahmed
 'Yes, it’s available. I’ve sent the confirmation!');
