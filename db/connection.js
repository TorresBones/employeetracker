const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    database: 'employees_db',
    password: 'password',
});

module.exports = connection;