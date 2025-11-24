CREATE TABLE IF NOT EXISTS addresses(
    id INTEGER AUTO_INCREMENT,
    street VARCHAR(50) NOT NULL,
    

    CONSTRAINT pk_addresses PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS companies(
    id INTEGER AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    catch_phrase VARCHAR(255) NOT NULL,
    bs VARCHAR(100) NOT NULL,

    CONSTRAINT pk_companies PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS users(
    id INTEGER AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    userame VARCHAR(30) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(25) NOT NULL,
    website VARCHAR(255) NOT NULL,
    address_id INTEGER NOT NULL,
    company_id INTEGER NOT NULL,

    CONSTRAINT pk_users PRIMARY KEY(id),
    CONSTRAINT fk_users_companies FOREIGN KEY (company_id) REFERENCES companies(id)
);
CREATE TABLE IF NOT EXISTS posts(
    id INTEGER AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    body VARCHAR(255) NOT NULL,
    user_id INTEGER NOT NULL,

    CONSTRAINT pk_posts PRIMARY KEY(id),
    CONSTRAINT fk_posts_users FOREIGN KEY (user_id) REFERENCES users(id)
);