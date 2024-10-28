const { databaseInstance } = require("../database/database");
const { v4: uuidv4 } = require("uuid");

class User {
  constructor(firstName, lastName, emailAddress, password) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.emailAddress = emailAddress;
    this.password = password;
  }

  create() {
    databaseInstance.collection("users").insertOne({
      userId: uuidv4(),
      personal_info: {
        firstName: this.firstName,
        lastName: this.lastName,
        emailAddress: this.emailAddress,
        password: this.password,
      },
    });
  }
}

module.exports = User;
