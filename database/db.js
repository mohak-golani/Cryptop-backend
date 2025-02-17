import { Pool } from "pg";
import { configDotenv } from "dotenv";

const pool = new Pool({
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  database: process.env.DB_NAME,
});

pool
  .connect()
  .then(() => console.log("db connected"))
  .catch(() => console.log("db not connected"));

module.exports = { pool };
