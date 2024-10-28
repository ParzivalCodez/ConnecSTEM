const express = require("express");
const router = express.Router();
const { createUserAccount } = require("../../controller/userController");

router.post("/api/users", (req, res, next) => {
  let requestBody = req.body;
  console.log(requestBody);
});

module.exports = router;
