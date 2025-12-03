/**
 * routes/payment.js
 * Mock Payment API route for checkout functionality
 * This simulates a payment endpoint (you can replace it later with Stripe, Razorpay, etc.)
 */

const express = require("express");
const router = express.Router();
const pool = require("../db/pool");

// ✅ POST /api/payment/checkout
router.post("/checkout", async (req, res) => {
  try {
    const { name, email, amount, method, cart, shippingInfo } = req.body;

    // Basic validation
    if (!name || !email || !amount || !method) {
      return res.status(400).json({
        success: false,
        error: "Missing required payment details.",
      });
    }

    console.log("💳 Payment request received:", { name, email, amount, method });

    // Generate unique transaction ID and order number
    const transactionId = "TXN" + Math.floor(Math.random() * 1_000_000_000);
    const orderNumber = "ORD" + Date.now() + Math.floor(Math.random() * 1000);

    // Save order to database
    const orderData = {
      user_email: email,
      user_name: name,
      items: cart || [],
      shipping_info: shippingInfo || {},
      total_amount: amount,
      payment_method: method,
      transaction_id: transactionId,
      order_number: orderNumber,
      payment_status: 'success'
    };

    await pool.query(
      `INSERT INTO orders (user_email, user_name, items, shipping_info, total_amount, payment_method, transaction_id, order_number, payment_status, created_at)
       VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, CURRENT_TIMESTAMP AT TIME ZONE 'Asia/Kolkata')`,
      [orderData.user_email, orderData.user_name, JSON.stringify(orderData.items), JSON.stringify(orderData.shipping_info), 
       orderData.total_amount, orderData.payment_method, orderData.transaction_id, orderData.order_number, orderData.payment_status]
    );

    console.log("✅ Order saved to database:", orderNumber);

    res.status(200).json({
      success: true,
      message: "Payment processed successfully",
      transactionId,
      orderNumber,
      details: { name, email, amount, method },
    });
  } catch (err) {
    console.error("❌ Payment error:", err.message);
    res.status(500).json({ success: false, error: "Internal payment error" });
  }
});

module.exports = router;
