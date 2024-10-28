const { MongoClient } = require("mongodb");
const DATABASE_URL = "mongodb://localhost:27017/ConnecSTEM";
let database;

function DatabaseConnection() {
  MongoClient.connect(DATABASE_URL).then((client) => {
    database = client.db();
    console.log("Connected to database was successful!");
  });
}

function DatabaseInstance() {
  if (database) {
    return database;
  }
}

module.exports = {
  databaseConnection: DatabaseConnection,
  databaseInstance: DatabaseInstance,
};
