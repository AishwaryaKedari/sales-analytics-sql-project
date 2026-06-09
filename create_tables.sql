Create customer table:-
      CREATE TABLE customers (
          customer_id SERIAL PRIMARY KEY,
          customer_name VARCHAR(100),
          city VARCHAR(50)
      );

Create Product table:-
        CREATE TABLE products (
            product_id SERIAL PRIMARY KEY,
            product_name VARCHAR(100),
            category VARCHAR(50),
            price DECIMAL(10,2)
        );

Create order table:-
        CREATE TABLE orders (
            order_id SERIAL PRIMARY KEY,
            customer_id INT,
            product_id INT,
            quantity INT,
            order_date DATE,
            FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
            FOREIGN KEY (product_id) REFERENCES products(product_id)
        );
