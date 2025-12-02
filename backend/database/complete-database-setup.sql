-- =====================================================
-- GreenLeaf Nursery - Complete Database Setup Script
-- For Global Database Deployment
-- =====================================================
-- Generated: 2025-11-17
-- Description: Complete SQL script for setting up the entire database
--              on global platforms (AWS RDS, Azure, Railway, etc.)
-- =====================================================

-- =====================================================
-- 1. CREATE TABLES
-- =====================================================

-- Products Table
CREATE TABLE IF NOT EXISTS products (
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
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Users Table
CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  name VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Carts Table
CREATE TABLE IF NOT EXISTS carts (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  session_id VARCHAR(255),
  product_id INTEGER REFERENCES products(id) ON DELETE CASCADE,
  quantity INTEGER DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Contacts Table
CREATE TABLE IF NOT EXISTS contacts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  subject VARCHAR(255),
  message TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Newsletter Table
CREATE TABLE IF NOT EXISTS newsletter (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255) UNIQUE NOT NULL,
  subscribed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Orders Table
CREATE TABLE IF NOT EXISTS orders (
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

-- =====================================================
-- 2. CREATE INDEXES FOR PERFORMANCE
-- =====================================================

CREATE INDEX IF NOT EXISTS idx_products_category ON products(category);
CREATE INDEX IF NOT EXISTS idx_products_badge ON products(badge);
CREATE INDEX IF NOT EXISTS idx_products_instock ON products(instock);
CREATE INDEX IF NOT EXISTS idx_carts_user_id ON carts(user_id);
CREATE INDEX IF NOT EXISTS idx_carts_session_id ON carts(session_id);
CREATE INDEX IF NOT EXISTS idx_orders_user_id ON orders(user_id);
CREATE INDEX IF NOT EXISTS idx_orders_transaction_id ON orders(transaction_id);

-- =====================================================
-- 3. INSERT PRODUCT DATA (37 Products)
-- =====================================================

-- Clear existing data (optional - comment out if you want to keep existing data)
TRUNCATE TABLE products RESTART IDENTITY CASCADE;

-- Insert products
INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES 
('Peace Lily', 'Beautiful flowering plant that purifies air and adds elegance to your home. Features graceful white blooms and glossy green leaves.', 34.99, 34.99, 'flowering', '/images/products/plants/peace-lily.jpg', true, 4.7, 'air-purifier', 'medium'),
('Rose Bush', 'Classic flowering plant with fragrant blooms in beautiful colors. A timeless addition to any garden with proper care.', 59.99, 69.99, 'flowering', '/images/products/plants/rose-bush.jpg', true, 4.6, 'fragrant', 'large'),
('Orchid (Phalaenopsis)', 'Elegant flowering plant with long-lasting blooms. Available in various colors and adds sophistication to any space.', 42.99, 49.99, 'flowering', '/images/products/plants/orchid-phalaenopsis.jpg', true, 4.5, 'popular', 'small'),
('Anthurium', 'Exotic plant with heart-shaped, glossy red flowers. Blooms year-round and adds a pop of color to any room.', 39.99, 39.99, 'flowering', '/images/products/plants/anthurium.jpg', true, 4.6, 'popular', 'medium'),
('Geranium', 'Vibrant flowering plant perfect for outdoor spaces. Low maintenance and blooms throughout the season.', 24.99, 29.99, 'flowering', '/images/products/plants/geranium.jpg', true, 4.4, 'outdoor', 'small'),
('Jasmine', 'Fragrant flowering vine with star-shaped white flowers. Perfect for trellises and adds delightful scent.', 32.99, 32.99, 'flowering', '/images/products/plants/jasmine.jpg', true, 4.8, 'fragrant', 'medium'),
('Hibiscus', 'Tropical flowering plant with large, colorful blooms. Adds a bold statement to any garden or patio.', 44.99, 44.99, 'flowering', '/images/products/plants/hibiscus.jpg', true, 4.5, 'tropical', 'large'),
('Lavender', 'Aromatic flowering herb with purple blooms. Perfect for gardens and has calming properties.', 28.99, 28.99, 'flowering', '/images/products/plants/lavender.jpg', true, 4.7, 'fragrant', 'medium'),
('Sunflower', 'Cheerful flowering plant with large yellow blooms. Brings sunshine to any outdoor space.', 19.99, 19.99, 'flowering', '/images/products/plants/sunflower.jpg', true, 4.6, 'cheerful', 'large'),
('Begonia', 'Colorful flowering plant with beautiful foliage. Perfect for both indoor and outdoor settings.', 26.99, 26.99, 'flowering', '/images/products/plants/begonia.jpg', true, 4.5, 'colorful', 'small'),
('Snake Plant', 'Hardy indoor plant with striking upright leaves. Excellent air purifier and extremely low maintenance.', 29.99, 29.99, 'indoor', '/images/products/plants/snake-plant.jpg', true, 4.8, 'air-purifier', 'medium'),
('Pothos', 'Trailing indoor plant with heart-shaped leaves. Perfect for hanging baskets and very easy to grow.', 22.99, 22.99, 'indoor', '/images/products/plants/pothos.jpg', true, 4.7, 'beginner', 'small'),
('Spider Plant', 'Popular indoor plant with arching leaves and baby plantlets. Great air purifier and easy care.', 19.99, 24.99, 'indoor', '/images/products/plants/spider-plant.jpg', true, 4.6, 'air-purifier', 'medium'),
('Rubber Plant', 'Large-leafed indoor plant with glossy burgundy foliage. Makes a bold statement in any room.', 39.99, 39.99, 'indoor', '/images/products/plants/rubber-plant.jpg', true, 4.5, 'statement', 'large'),
('ZZ Plant', 'Extremely low-maintenance indoor plant with waxy leaves. Thrives on neglect and tolerates low light.', 34.99, 34.99, 'indoor', '/images/products/plants/zz-plant.jpg', true, 4.8, 'low-maintenance', 'medium'),
('Ficus', 'Classic indoor tree with elegant foliage. Perfect for larger spaces and air purification.', 49.99, 59.99, 'indoor', '/images/products/plants/ficus.jpg', true, 4.4, 'tree', 'large'),
('Dracaena', 'Tall indoor plant with colorful striped leaves. Easy care and excellent for modern interiors.', 36.99, 36.99, 'indoor', '/images/products/plants/dracaena.jpg', true, 4.6, 'colorful', 'large'),
('Philodendron', 'Versatile indoor plant with heart-shaped leaves. Fast-growing and perfect for beginners.', 27.99, 27.99, 'indoor', '/images/products/plants/philodendron.jpg', true, 4.7, 'beginner', 'medium'),
('Monstera', 'Trendy indoor plant with distinctive split leaves. Instagram-worthy and easy to care for.', 45.99, 45.99, 'indoor', '/images/products/plants/monstera.jpg', true, 4.9, 'trendy', 'large'),
('Aloe Vera', 'Medicinal succulent with healing gel. Low maintenance and great for sunny windowsills.', 24.99, 24.99, 'succulent', '/images/products/plants/aloe-vera.jpg', true, 4.7, 'medicinal', 'small'),
('Jade Plant', 'Lucky succulent with thick oval leaves. Symbol of prosperity and very easy to care for.', 21.99, 21.99, 'succulent', '/images/products/plants/jade-plant.jpg', true, 4.6, 'lucky', 'small');

-- Insert Pots (8 items)
INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES 
('Ceramic Planter Set', 'Set of 3 elegant ceramic planters with drainage holes. Perfect for indoor plants.', 34.99, NULL, 'pots', '/images/products/pots/ceramic-planter.jpg', true, 4.7, 'popular', 'medium'),
('Terracotta Pot Collection', 'Classic terracotta pots in various sizes. Breathable material for healthy roots.', 24.99, 29.99, 'pots', '/images/products/pots/terracotta-pot-collection.jpg', true, 4.8, 'sale', 'small'),
('Modern Hanging Planter', 'Stylish hanging planter with macramé holder. Perfect for trailing plants.', 42.99, NULL, 'pots', '/images/products/pots/modern-hanging-planter.jpg', true, 4.6, 'trending', 'small'),
('Self-Watering Planter', 'Innovative self-watering system keeps plants hydrated for weeks.', 39.99, 49.99, 'pots', '/images/products/pots/self-watering.jpg', true, 4.9, 'new', 'medium'),
('Decorative Planter Stand', 'Elegant metal stand with ceramic pot. Adds height and style to any room.', 54.99, NULL, 'pots', '/images/products/pots/decorative-planter-stand.jpg', true, 4.5, 'elegant', 'large'),
('Wooden Planter Box', 'Rustic wooden box for herbs and small plants', 899.00, NULL, 'pots', '/images/products/pots/wooden-planter-box.jpg', true, 4.5, NULL, 'Large'),
('Glazed Indoor Pot', 'Beautiful glazed ceramic pot with saucer. Available in multiple colors.', 649.00, NULL, 'pots', '/images/products/pots/glazed-indoor-pot.jpg', true, 4.6, 'New', 'Medium'),
('Bamboo Fiber Planter', 'Sustainable bamboo fiber planter. Biodegradable and eco-friendly.', 399.00, NULL, 'pots', '/images/products/pots/bamboo-fiber-planter.jpg', true, 4.5, 'Eco-Friendly', 'Small');

-- Insert Tools (8 items)
INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES 
('Pruning Shears Set', 'Professional-grade pruning shears with ergonomic handles. Perfect for trimming and shaping.', 29.99, NULL, 'tools', '/images/products/tools/pruning-shears-set.jpg', true, 4.8, 'popular', 'small'),
('Garden Tool Kit', 'Complete 10-piece garden tool set with storage bag. Everything you need for plant care.', 44.99, 54.99, 'tools', '/images/products/tools/tool-kit.jpg', true, 4.7, 'sale', 'medium'),
('Watering Can', 'Classic metal watering can with long spout for precise watering.', 19.99, NULL, 'tools', '/images/products/tools/watering-can.jpg', true, 4.6, 'essential', 'medium'),
('Plant Mister Spray Bottle', 'Fine mist spray bottle for humidity-loving plants. Adjustable nozzle.', 14.99, NULL, 'tools', '/images/products/tools/plant-mister-spray-bottle.jpg', true, 4.9, 'new', 'small'),
('Soil pH Tester', 'Digital soil tester for pH, moisture, and light levels. Essential for plant health.', 24.99, 29.99, 'tools', '/images/products/tools/ph-tester.jpg', true, 4.5, 'tech', 'small'),
('Plant Support Stakes', 'Pack of 10 bamboo support stakes', 199.00, NULL, 'tools', '/images/products/tools/plant-support-stakes.jpg', true, 4.4, NULL, '24 inches'),
('Hand Trowel and Fork Set', 'Stainless steel hand trowel and fork with comfortable wooden handles.', 349.00, NULL, 'tools', '/images/products/tools/hand-trowel-fork-set.jpg', true, 4.7, 'Popular', 'Standard'),
('Plant Fertilizer Organic', 'All-purpose organic plant food. Promotes healthy growth and blooms.', 249.00, NULL, 'tools', '/images/products/tools/plant-fertilizer-organic.jpg', true, 4.8, 'Bestseller', '500g');

-- =====================================================
-- 4. VERIFICATION QUERIES (Optional - Comment Out)
-- =====================================================

-- Check total products
-- SELECT COUNT(*) as total_products FROM products;

-- Check products by category
-- SELECT category, COUNT(*) as count FROM products GROUP BY category;

-- Check all table names
-- SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';

-- =====================================================
-- SETUP COMPLETE!
-- =====================================================
-- Total Tables: 6 (products, users, carts, contacts, newsletter, orders)
-- Total Products: 37 (21 plants, 8 pots, 8 tools)
-- Total Indexes: 7 (for performance optimization)
-- =====================================================
