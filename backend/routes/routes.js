const express = require("express");
const authRoutes = require("./routes/authRoutes");
const router = express.Router();

router.get("/", (req, res, next) => {
  res.send("Welcome to the API!");
});

router.use(authRoutes);

module.exports = router;
