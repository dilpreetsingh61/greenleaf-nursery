-- =====================================================
-- Add Missing Pots and Tools Data
-- Run this on your global database
-- =====================================================

-- Delete existing pots and tools (if any incorrect data)
DELETE FROM products WHERE category IN ('pots', 'tools');

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

-- Verify the data
SELECT category, COUNT(*) as count FROM products GROUP BY category ORDER BY category;
