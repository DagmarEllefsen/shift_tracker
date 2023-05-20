CREATE TABLE IF NOT EXISTS hospital (
    id INT GENERATED ALWAYS AS IDENTITY, 
    hospital_name VARCHAR(300) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS doctor (
    id INT GENERATED ALWAYS AS IDENTITY, 
    full_name VARCHAR(300) NOT NULL,
    preferred_name VARCHAR(300) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS price_code (
    id INT GENERATED ALWAYS AS IDENTITY, 
    price_code VARCHAR(300) UNIQUE NOT NULL,
    amount DECIMAL NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS shift_type (
    id INT GENERATED ALWAYS AS IDENTITY, 
    type_name VARCHAR(50) UNIQUE NOT NULL,
    price_code_id INT UNIQUE NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(price_code_id) REFERENCES price_code(id)
);

CREATE TABLE IF NOT EXISTS shift (
    id INT GENERATED ALWAYS AS IDENTITY, 
    doctor_id INT NOT NULL,
    shift_type_id INT NOT NULL,
    hospital_id INT NOT NULL,
    start_time TIMESTAMPTZ NOT NULL,
    end_time TIMESTAMPTZ,
    PRIMARY KEY(id),
    FOREIGN KEY(doctor_id) REFERENCES doctor(id),
    FOREIGN KEY(shift_type_id) REFERENCES shift_type(id),
    FOREIGN KEY(hospital_id) REFERENCES hospital(id)
);

CREATE TABLE IF NOT EXISTS consultation(
    id INT GENERATED ALWAYS AS IDENTITY,
    shift_id INT NOT NULL,
    price_code_id INT UNIQUE NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(shift_id) REFERENCES shift(id),
    FOREIGN KEY(price_code_id) REFERENCES price_code(id)
);

CREATE TABLE IF NOT EXISTS travel(
    id INT GENERATED ALWAYS AS IDENTITY,
    shift_id INT NOT NULL,
    distance INT NOT NULL,
    price_code_id INT UNIQUE NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(shift_id) REFERENCES shift(id),
    FOREIGN KEY(price_code_id) REFERENCES price_code(id)
);