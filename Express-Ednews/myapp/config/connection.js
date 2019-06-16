const mysql = require('mysql');
let connection;

if (process.env.JAWSDB_URL) {
    connection = mysql.createConnection(process.env.JAWSDB_URL);
}
else {
    connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '12345678',
        database: 'baodientu3n'
    });
    connection.connect(function(err) {
        if (err) throw err;
        console.log("Connected!");
      });
}

module.exports = connection;

