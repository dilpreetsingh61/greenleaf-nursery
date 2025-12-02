// backend/db/index.js
const { Pool } = require("pg");
require("dotenv").config();

const pool = new Pool(
  process.env.DATABASE_URL
    ? {
        connectionString: process.env.DATABASE_URL,
        ssl: { rejectUnauthorized: false },
      }
    : {} // Fallback to empty configuration if DATABASE_URL is not set
);

async function testConnection() {
  try {
    const res = await pool.query("SELECT NOW()");
    console.log("✅ Connected to PostgreSQL successfully:", res.rows[0].now);
  } catch (err) {
    console.error("❌ PostgreSQL connection error:", err.message);
  } finally {
    pool.end();
  }
}

testConnection();

if (!process.env.DATABASE_URL) {
  console.error("❌ DATABASE_URL is not set in the environment variables.");
  throw new Error("DATABASE_URL is required to connect to the database.");
} else {
  console.log(
    "✅ Using DATABASE_URL for database connection:",
    process.env.DATABASE_URL
  );
}

console.log(
  "Using database connection:",
  process.env.DATABASE_URL || {
    host: process.env.PGHOST || "localhost",
    port: process.env.PGPORT || 5432,
    user: process.env.PGUSER || "plant_admin",
    password: process.env.PGPASSWORD || "Plant@123",
    database: process.env.PGDATABASE || "plantnursery_db",
  }
);

console.log(
  "Connecting to database with connection string:",
  process.env.DATABASE_URL
);
console.log("🔗 DATABASE_URL:", process.env.DATABASE_URL);
