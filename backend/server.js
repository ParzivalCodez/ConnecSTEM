// Dependencies & Packages Import
const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");
const { databaseConnection } = require("./database/database");
const routes = require("./routes/routes");
const app = express();
const port = 3000;

// Database Connection
databaseConnection();

const corsOptions = {
  origin: "*", // Allow only this origin
  methods: ["GET", "POST"], // Allow only specific HTTP methods
  allowedHeaders: ["Content-Type", "Authorization"], // Allow specific headers
  credentials: true, // Include if you are dealing with cookies or credentials
};

// CORS middleware applied before routes
app.use(cors(corsOptions));

// Handle preflight requests
app.options("*", cors(corsOptions));

// Body Parser Configuration
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Application Routes
app.use(routes);

// Server Activity Listen
app.listen(port, () => console.log(`Server is active on port ${port}`));
