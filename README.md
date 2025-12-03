# 🌱 GreenLeaf Nursery - Plant E-Commerce Platform

<div align="center">

![Plant Nursery](https://img.shields.io/badge/Plant-Nursery-2d5a27?style=for-the-badge&logo=leaflet&logoColor=white)
![Node.js](https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=nodedotjs&logoColor=white)
![Express.js](https://img.shields.io/badge/Express.js-000000?style=for-the-badge&logo=express&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![MongoDB](https://img.shields.io/badge/MongoDB-4EA94B?style=for-the-badge&logo=mongodb&logoColor=white)

**A modern, full-stack e-commerce platform for plant enthusiasts** 🪴

[Features](#-features) • [Tech Stack](#-tech-stack) • [Installation](#-installation) • [Usage](#-usage) • [API](#-api-documentation) • [Contributing](#-contributing)

</div>

---

## 📖 About The Project

GreenLeaf Nursery is a comprehensive e-commerce solution designed for online plant retail. Built with modern web technologies, it offers a seamless shopping experience for plant lovers, featuring real-time inventory management, secure authentication, and an intuitive user interface.

### ✨ Live Demo

> 🚀 [View Live Demo](#) (Add your deployment link here)

---

## 🎯 Features

### 🛍️ **Shopping Experience**
- 🔍 **Advanced Search & Filtering** - Find plants by category, price, size, and care level
- 📦 **Product Catalog** - 37+ products including plants, pots, and gardening tools
- 🛒 **Smart Shopping Cart** - Persistent cart with local storage and session management
- 💳 **Secure Checkout** - Multi-step checkout process with payment integration
- ⭐ **Product Ratings** - View ratings and reviews for informed decisions

### 👤 **User Management**
- 🔐 **Authentication System** - JWT-based secure login and registration
- 📱 **Session Management** - MongoDB session store for persistent logins
- 👨‍💼 **User Dashboard** - Track orders and manage account
- 🔒 **Password Security** - bcrypt encryption for user credentials

### 🎨 **User Interface**
- 📱 **Responsive Design** - Mobile-first approach, works on all devices
- 🌙 **Modern UI/UX** - Clean, intuitive interface with smooth animations
- 🎨 **Dynamic Product Display** - Grid/List view toggle
- 🖼️ **Product Quick View** - Modal preview without leaving the page
- 🔄 **Sort & Filter** - Multiple sorting options (price, rating, name)

### 🛠️ **Admin Features**
- 📊 **Database Management** - Automated setup and data import
- 📈 **Product Management** - Easy product addition and updates
- 💾 **Data Export** - Export product data to SQL

### 📧 **Communication**
- 📬 **Newsletter Subscription** - Stay updated with latest offers
- 📞 **Contact Form** - Direct communication with support
- 🔔 **Notifications** - Real-time updates using WebSockets

### 🚀 **Performance & Security**
- ⚡ **Redis Caching** - Fast product retrieval with 2-minute TTL
- 🛡️ **Security Headers** - Helmet.js for enhanced security
- 🔄 **Rate Limiting** - Login rate limiter to prevent brute force
- 📦 **Compression** - Gzip compression for faster load times

---

## 🏗️ Tech Stack

### **Frontend**
- **HTML5** - Semantic markup
- **CSS3** - Custom styling with CSS variables
- **JavaScript (ES6+)** - Modern vanilla JS
- **EJS** - Server-side templating
- **Font Awesome** - Icon library

### **Backend**
- **Node.js** - JavaScript runtime
- **Express.js** - Web application framework
- **EJS** - Template engine

### **Databases**
- **PostgreSQL** - Primary database for products, orders, carts
- **MongoDB Atlas** - Session storage and user authentication
- **Redis Cloud** - Caching layer for improved performance

### **Authentication & Security**
- **JWT** - JSON Web Tokens for authentication
- **bcrypt** - Password hashing
- **Helmet.js** - Security headers
- **express-rate-limit** - Rate limiting
- **CORS** - Cross-origin resource sharing

### **Additional Tools**
- **Socket.io** - Real-time WebSocket communication
- **Morgan** - HTTP request logger
- **dotenv** - Environment variable management
- **Cookie Parser** - Cookie handling

---

## 📁 Project Structure

```
BEE_Project/
├── backend/
│   ├── config/
│   │   └── redisClient.js          # Redis configuration
│   ├── database/
│   │   ├── products-data.sql       # Product data (37 items)
│   │   └── init.sql                # Database schema
│   ├── db/
│   │   ├── pool.js                 # PostgreSQL connection pool
│   │   └── index.js                # Database exports
│   ├── middleware/
│   │   ├── auth.js                 # Authentication middleware
│   │   ├── cache.js                # Redis caching middleware
│   │   ├── errorHandler.js         # Error handling
│   │   ├── jwt.js                  # JWT utilities
│   │   └── loginRateLimiter.js     # Rate limiting
│   ├── routes/
│   │   ├── api.js                  # API routes
│   │   ├── auth.js                 # Authentication routes
│   │   ├── cart.js                 # Shopping cart routes
│   │   ├── contacts.js             # Contact form routes
│   │   ├── newsletter.js           # Newsletter routes
│   │   ├── orders.js               # Order management routes
│   │   ├── payment.js              # Payment routes
│   │   └── products.js             # Product routes
│   ├── views/
│   │   ├── layout.ejs              # Main layout template
│   │   ├── home.ejs                # Homepage
│   │   ├── aux-grid.ejs            # Pots/Tools pages
│   │   ├── checkout.ejs            # Checkout page
│   │   ├── auth-login.ejs          # Login page
│   │   ├── auth-register.ejs       # Registration page
│   │   └── ...                     # Other pages
│   ├── server.js                   # Main server file
│   ├── setup-database.js           # Database setup script
│   ├── export-current-data.js      # Data export utility
│   └── package.json                # Backend dependencies
├── frontend/
│   ├── css/
│   │   ├── style.css               # Main stylesheet
│   │   └── responsive.css          # Responsive styles
│   ├── js/
│   │   ├── main.js                 # Main JavaScript
│   │   ├── cart.js                 # Cart functionality
│   │   ├── products.js             # Product display
│   │   ├── filters.js              # Filter logic
│   │   ├── newsletter.js           # Newsletter handling
│   │   ├── jwt-integration.js      # JWT client-side
│   │   └── websocket-integration.js # WebSocket client
│   └── images/
│       ├── products/               # Product images
│       └── favicon.ico             # Site favicon
├── archive/                        # Archived development files
├── .env                            # Environment variables
├── .gitignore                      # Git ignore rules
└── README.md                       # This file
```

---

## 🚀 Installation

### Prerequisites

Before you begin, ensure you have the following installed:
- **Node.js** (v14 or higher)
- **PostgreSQL** (v12 or higher)
- **MongoDB** (optional, for sessions)
- **Redis** (optional, for caching)

### Step 1: Clone the Repository

```bash
git clone https://github.com/sharma-7-Deepak/plant-nursery-ce2.git
cd plant-nursery-ce2
```

### Step 2: Install Dependencies

```bash
cd backend
npm install
```

### Step 3: Environment Configuration

Create a `.env` file in the `backend` folder:

```env
# Database Configuration
DATABASE_URL=postgresql://username:password@localhost:5432/plant_nursery

# Server Configuration
PORT=3000
NODE_ENV=development

# Session Secret
SESSION_SECRET=your_random_secret_key_here

# MongoDB (Optional - for sessions)
MONGODB_URI=mongodb://127.0.0.1:27017/plant_nursery

# Redis (Optional - for caching)
REDIS_URL=redis://localhost:6379
```

### Step 4: Database Setup

**Option 1: Fresh Installation**
```bash
# The setup script will create the database and import all data
node setup-database.js
```

**Option 2: Manual Setup**
```sql
-- Create database
CREATE DATABASE plant_nursery;

-- Then run the setup script
node setup-database.js
```

### Step 5: Start the Server

```bash
npm run dev
```

The server will start at `http://localhost:3000` 🎉

---

## 📊 Database Schema

### Products Table
```sql
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  price DECIMAL(10, 2) NOT NULL,
  original_price DECIMAL(10, 2),
  category VARCHAR(50) NOT NULL,
  image VARCHAR(255),
  instock BOOLEAN DEFAULT true,
  badge VARCHAR(20),
  size VARCHAR(50),
  rating DECIMAL(3, 2),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### Users Table
```sql
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  name VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

### Orders Table
```sql
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  transaction_id VARCHAR(255) UNIQUE NOT NULL,
  total_amount DECIMAL(10, 2) NOT NULL,
  payment_method VARCHAR(50) NOT NULL,
  payment_status VARCHAR(20) DEFAULT 'pending',
  shipping_info JSONB NOT NULL,
  items JSONB NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

---

## 🎮 Usage

### For Users

1. **Browse Products** - Visit the homepage to explore plants, pots, and tools
2. **Filter & Search** - Use filters to find the perfect plant
3. **Add to Cart** - Click "Add to Cart" on any product
4. **Checkout** - Review your cart and proceed to checkout
5. **Create Account** - Register to track orders and manage your profile
6. **Place Order** - Complete your purchase securely

### For Developers

#### Running Tests
```bash
npm test
```

#### Building for Production
```bash
npm run build
```

#### Export Current Database
```bash
node export-current-data.js
```

---

## 📡 API Documentation

### Authentication Endpoints

#### Register User
```http
POST /api/auth/register
Content-Type: application/json

{
  "email": "user@example.com",
  "password": "securepassword",
  "name": "John Doe"
}
```

#### Login
```http
POST /api/auth/login
Content-Type: application/json

{
  "email": "user@example.com",
  "password": "securepassword"
}
```

#### Check Session
```http
GET /api/auth/check-session
```

### Product Endpoints

#### Get All Products
```http
GET /api/products
```

#### Get Product by ID
```http
GET /api/products/:id
```

#### Get Products by Category
```http
GET /api/products/category/:category
```

### Cart Endpoints

#### Add to Cart
```http
POST /api/cart/add
Content-Type: application/json

{
  "productId": 1,
  "quantity": 2
}
```

#### Get Cart
```http
GET /api/cart
```

#### Update Cart Item
```http
PUT /api/cart/:productId
Content-Type: application/json

{
  "quantity": 3
}
```

### Order Endpoints

#### Create Order
```http
POST /api/orders
Content-Type: application/json

{
  "items": [...],
  "shippingInfo": {...},
  "paymentMethod": "credit_card"
}
```

#### Get User Orders
```http
GET /api/orders/user/:userId
```

---


## 🗺️ Roadmap

- [x] Core e-commerce functionality
- [x] User authentication & authorization
- [x] Shopping cart & checkout
- [x] Product filtering & search
- [x] Newsletter subscription
- [x] Contact form
- [ ] Payment gateway integration (Stripe/PayPal)
- [ ] Order tracking system
- [ ] Admin dashboard
- [ ] Product reviews & ratings
- [ ] Wishlist functionality
- [ ] Email notifications
- [ ] Multi-language support
- [ ] Mobile app (React Native)

---

## 🤝 Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

### How to Contribute

1. **Fork the Project**
2. **Create your Feature Branch** (`git checkout -b feature/AmazingFeature`)
3. **Commit your Changes** (`git commit -m 'Add some AmazingFeature'`)
4. **Push to the Branch** (`git push origin feature/AmazingFeature`)
5. **Open a Pull Request**

### Contribution Guidelines

- Follow the existing code style
- Write meaningful commit messages
- Update documentation as needed
- Test your changes thoroughly
- Add comments for complex logic

---

## 🐛 Bug Reports

If you discover a bug, please create an issue with:
- Clear bug description
- Steps to reproduce
- Expected vs actual behavior
- Screenshots (if applicable)
- Environment details (OS, browser, Node version)

---

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---



## 🙏 Acknowledgments

- **Font Awesome** - Icon library
- **Google Fonts** - Poppins font family
- **Unsplash** - Product placeholder images
- **PostgreSQL** - Robust database system
- **Express.js** - Fast web framework
- **Node.js** - JavaScript runtime
- All contributors and supporters

---

## 📞 Support

For support, email support@greenleafnursery.com or join our Slack channel.

---

## ⭐ Star History

If you find this project helpful, please consider giving it a ⭐!

---

<div align="center">

**Made with ❤️ and 🌱 by Dilpreet Singh, Aryan Rana, Deepak Sharma Pushpendra singh yadav**

![Plant](https://img.shields.io/badge/🪴-Plant_Lover-2d5a27?style=for-the-badge)

</div>
