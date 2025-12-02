// backend/db/pool.js
const { Pool } = require("pg");
require("dotenv").config();

console.log("Using DATABASE_URL:", process.env.DATABASE_URL);
console.log("Environment Variables Loaded:", process.env);
const pool = new Pool(
  process.env.DATABASE_URL
    ? {
        connectionString: process.env.DATABASE_URL,
        ssl: { rejectUnauthorized: false },
      }
    : {} // Fallback to empty configuration if DATABASE_URL is not set
);
pool.on("error", (err) => {
  console.error("Unexpected error on idle client", err);
});

(async () => {
  try {
    await pool.connect();
    console.log("✅ Connected to PostgreSQL");
  } catch (err) {
    console.error("❌ PostgreSQL connection error:", err.message);
    console.error("Error stack trace:", err.stack);
  }
})();

module.exports = pool;
