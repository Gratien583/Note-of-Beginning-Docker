USE stepnote;
-- accounts テーブル
CREATE TABLE accounts (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- blogs テーブル
CREATE TABLE blogs (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    thumbnail TEXT,
    published TINYINT(1) DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    content TEXT
);

-- blog_categories テーブル
CREATE TABLE blog_categories (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    blog_id INT(11) NOT NULL,
    category_name VARCHAR(255) NOT NULL,
    FOREIGN KEY (blog_id) REFERENCES blogs(id) ON DELETE CASCADE
);

