 CREATE TABLE clients ( id_number int, full_name varchar(60), email varchar(60), phone varchar(20), address varchar(255), PRIMARY KEY(id_number) );

 CREATE TABLE mechanics ( id_number int, full_name varchar(60), phone varchar(20), specialty varchar(255),PRIMARY KEY(id_number)  ) ;

 CREATE TABLE vehicles ( number_plate varchar(10), owner_id int(11), brand varchar(30), model varchar(50), color varchar(25), yom int(11),PRIMARY KEY(number_plate), FOREIGN KEY (owner_id) REFERENCES clients(id_number) );

 CREATE TABLE bookings(booking_id INT AUTO_INCREMENT, client_id INT, mechanic_id INT, day DATE, scheduled_time VARCHAR(50), description TEXT, services VARCHAR(255),PRIMARY KEY(booking_id), FOREIGN KEY(client_id) REFERENCES clients(id_number), FOREIGN KEY(mechanic_id) REFERENCES mechanics(id_number));

 CREATE TABLE services(service_id INT, service_name VARCHAR(100), service_cost INT, PRIMARY KEY(service_id));


 -- Insert sample data into the clients table
INSERT INTO clients (id_number, full_name, email, phone, address)
VALUES
  (1, 'John Doe', 'johndoe@example.com', '0712345678', '123 Main Street, Nairobi'),
  (2, 'Jane Smith', 'janesmith@example.com', '0723456789', '456 Park Avenue, Mombasa'),
  (3, 'Alice Johnson', 'alicejohnson@example.com', '0734567890', '789 Oak Lane, Kisumu');

-- Insert sample data into the mechanics table
INSERT INTO mechanics (id_number, full_name, phone, specialty)
VALUES
  (101, 'David Kim', '0745678901', 'Engine Repair'),
  (102, 'Emily Lee', '0756789012', 'Brake Repair'),
  (103, 'Frank Chen', '0767890123', 'Tire Replacement');

-- Insert sample data into the vehicles table
INSERT INTO vehicles (number_plate, owner_id, brand, model, color, yom)
VALUES
  ('KBX 123A', 1, 'Toyota', 'Corolla', 'White', 2020),
  ('KCD 456B', 2, 'Nissan', 'X-Trail', 'Blue', 2018),
  ('KGH 789C', 3, 'Honda', 'Civic', 'Red', 2022);

-- Insert sample data into the bookings table
INSERT INTO bookings (client_id, mechanic_id, day, scheduled_time, description, services)
VALUES
  (1, 101, '2024-10-01', '10:00 AM', 'Engine tune-up', 'Oil change, spark plug replacement'),
  (2, 102, '2024-10-02', '14:00 PM', 'Brake inspection', 'Brake pad replacement'),
  (3, 103, '2024-10-03', '09:00 AM', 'Tire rotation', 'Tire pressure check');

-- Insert sample data into the services table
INSERT INTO services (service_id, service_name, service_cost)
VALUES
  (1, 'Oil Change', 3000),
  (2, 'Tire Rotation', 1500),
  (3, 'Brake Pad Replacement', 5000),
  (4, 'Engine Tune-up', 4000);