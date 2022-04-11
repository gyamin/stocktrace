CREATE TABLE IF NOT EXISTS items (
    code VARCHAR(10) PRIMARY KEY,
    trading_name VARCHAR(255) NOT NULL,
    market_type VARCHAR(255) DEFAULT NULL,
    sector33_code INTEGER DEFAULT NULL,
    sector33_name VARCHAR(255) DEFAULT NULL,
    sector17_code INTEGER DEFAULT NULL,
    sector17_name VARCHAR(255) DEFAULT NULL,
    scale_code INTEGER DEFAULT NULL,
    scale_name VARCHAR(255) DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS stock_values (
    code VARCHAR(10) NOT NULL,
    trading_date DATE NOT NULL,
    current_price DECIMAL(11,1) DEFAULT NULL,
    the_day_before_price DECIMAL(11,1) DEFAULT NULL,
    start_price DECIMAL(11,1) DEFAULT NULL,
    high_price DECIMAL(11,1) DEFAULT NULL,
    low_price DECIMAL(11,1) DEFAULT NULL,
    year_high_price DECIMAL(11,1) DEFAULT NULL,
    year_high_price_date DATE DEFAULT NULL,
    year_low_price DECIMAL(11,1) DEFAULT NULL,
    year_low_price_date DATE DEFAULT NULL,
    trading_unit INT DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    primary key(code, trading_date)
);