const User = require("../model/User");

function createUserAccount(requestBody) {
  let user = User(
    requestBody.firstName,
    requestBody.lastName,
    requestBody.emailAddress,
    requestBody.password,
  ).create();
}

module.exports = {
  createUserAccount: createUserAccount,
};
