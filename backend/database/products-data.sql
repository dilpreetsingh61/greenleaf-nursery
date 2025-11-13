-- Products Data Export
-- Generated on: 2025-11-12T17:12:24.501Z

-- Clear existing data
TRUNCATE TABLE products RESTART IDENTITY CASCADE;

-- Insert products
INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Peace Lily',
  'Beautiful flowering plant that purifies air and adds elegance to your home. Features graceful white blooms and glossy green leaves.',
  34.99,
  34.99,
  'flowering',
  '/images/products/plants/peace-lily.jpg',
  true,
  4.7,
  'air-purifier',
  'medium'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Rose Bush',
  'Classic flowering plant with fragrant blooms in beautiful colors. A timeless addition to any garden with proper care.',
  59.99,
  69.99,
  'flowering',
  '/images/products/plants/rose-bush.jpg',
  true,
  4.6,
  'fragrant',
  'large'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Orchid (Phalaenopsis)',
  'Elegant flowering plant with long-lasting blooms. Available in various colors and adds sophistication to any space.',
  42.99,
  49.99,
  'flowering',
  '/images/products/plants/orchid-phalaenopsis.jpg',
  true,
  4.5,
  'popular',
  'small'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Anthurium',
  'Exotic plant with heart-shaped, glossy red flowers. Blooms year-round and adds a pop of color to any room.',
  39.99,
  NULL,
  'flowering',
  '/images/products/plants/anthurium.jpg',
  true,
  4.8,
  'popular',
  'small'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Monstera Deliciosa',
  'A stunning tropical plant with large, split leaves perfect for brightening up any indoor space. Known for its unique fenestrated leaves that develop as the plant matures.',
  45.99,
  55.99,
  'indoor',
  '/images/products/plants/monstera.jpg',
  true,
  4.8,
  'popular',
  'medium'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Snake Plant (Sansevieria)',
  'Low-maintenance plant that thrives in low light conditions. Perfect for beginners and known for its air-purifying qualities.',
  29.99,
  29.99,
  'indoor',
  '/images/products/plants/snake-plant.jpg',
  true,
  4.9,
  'beginner-friendly',
  'small'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Fiddle Leaf Fig',
  'A popular indoor tree with large, glossy leaves that makes a statement in any room. Requires consistent care but rewards with dramatic growth.',
  89.99,
  109.99,
  'indoor',
  '/images/products/plants/fiddle-leaf-fig.jpg',
  true,
  4.5,
  'sale',
  'large'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Rubber Plant',
  'Glossy, dark green leaves make this plant a stylish addition to modern interiors. Hardy and forgiving, perfect for busy plant parents.',
  39.99,
  49.99,
  'indoor',
  '/images/products/plants/rubber-plant.jpg',
  true,
  4.6,
  'sale',
  'medium'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Spider Plant',
  'Easy-care plant that produces baby plants, perfect for propagation. Great for hanging baskets with cascading plantlets.',
  24.99,
  24.99,
  'indoor',
  '/images/products/plants/spider-plant.jpg',
  true,
  4.9,
  'propagation-friendly',
  'small'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Boston Fern',
  'Lush, green fern that adds a natural, forest-like feel to your space. Perfect for bathrooms and humid environments.',
  42.99,
  42.99,
  'indoor',
  '/images/products/plants/boston-fern.jpg',
  true,
  4.3,
  'air-purifier',
  'medium'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Pothos Golden',
  'Trailing plant with heart-shaped leaves, perfect for hanging baskets. One of the easiest plants to grow and propagate.',
  22.99,
  22.99,
  'indoor',
  '/images/products/plants/pothos-golden.jpg',
  true,
  4.9,
  'trailing',
  'small'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'ZZ Plant',
  'Extremely low-maintenance plant with glossy, waxy leaves. Perfect for offices and low-light conditions.',
  35.99,
  35.99,
  'indoor',
  '/images/products/plants/zz-plant.jpg',
  true,
  4.8,
  'low-maintenance',
  'medium'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'ZZ Plant (Zamioculcas)',
  'Nearly indestructible plant with glossy, dark green leaves. Thrives on neglect and perfect for busy plant parents.',
  34.99,
  NULL,
  'indoor',
  '/images/products/plants/zz-plant-zamioculcas.jpg',
  true,
  4.9,
  'popular',
  'medium'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Bird''s Nest Fern',
  'Unique fern with wavy, rippled fronds that create a nest-like appearance. Excellent for humid environments like bathrooms.',
  28.99,
  NULL,
  'indoor',
  '/images/products/plants/birds-nest-fern.jpg',
  true,
  4.7,
  'new',
  'small'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Calathea Medallion',
  'Stunning plant with intricately patterned leaves in green and purple. Leaves fold up at night, creating a prayer-like motion.',
  36.99,
  42.99,
  'indoor',
  '/images/products/plants/calathea.jpg',
  true,
  4.5,
  'sale',
  'medium'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Bird of Paradise',
  'Dramatic tropical plant with stunning orange and blue flowers. A showstopper that brings exotic beauty to your garden or large indoor space.',
  129.99,
  149.99,
  'outdoor',
  '/images/products/plants/bird-of-paradise.jpg',
  false,
  4.4,
  'exotic',
  'large'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'English Lavender',
  'Fragrant herb with beautiful purple flowers. Great for gardens and has culinary and aromatherapy uses.',
  24.99,
  24.99,
  'outdoor',
  '/images/products/plants/english-lavender.jpg',
  true,
  4.7,
  'fragrant',
  'small'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Ceramic Planter Set',
  'Set of 3 elegant ceramic planters with drainage holes. Perfect for indoor plants.',
  34.99,
  NULL,
  'pots',
  '/images/products/pots/ceramic-planter.jpg',
  true,
  4.7,
  'popular',
  'medium'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Terracotta Pot Collection',
  'Classic terracotta pots in various sizes. Breathable material for healthy roots.',
  24.99,
  29.99,
  'pots',
  '/images/products/pots/terracotta-pot-collection.jpg',
  true,
  4.8,
  'sale',
  'small'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Modern Hanging Planter',
  'Stylish hanging planter with macramé holder. Perfect for trailing plants.',
  42.99,
  NULL,
  'pots',
  '/images/products/pots/modern-hanging-planter.jpg',
  true,
  4.6,
  'trending',
  'small'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Self-Watering Planter',
  'Innovative self-watering system keeps plants hydrated for weeks.',
  39.99,
  49.99,
  'pots',
  '/images/products/pots/self-watering.jpg',
  true,
  4.9,
  'new',
  'medium'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Decorative Planter Stand',
  'Elegant metal stand with ceramic pot. Adds height and style to any room.',
  54.99,
  NULL,
  'pots',
  '/images/products/pots/decorative-planter-stand.jpg',
  true,
  4.5,
  'elegant',
  'large'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Wooden Planter Box',
  'Rustic wooden box for herbs and small plants',
  899.00,
  NULL,
  'pots',
  '/images/products/pots/wooden-planter-box.jpg',
  true,
  4.5,
  NULL,
  'Large'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Glazed Indoor Pot',
  'Beautiful glazed ceramic pot with saucer. Available in multiple colors.',
  649.00,
  NULL,
  'pots',
  '/images/products/pots/glazed-indoor-pot.jpg',
  true,
  4.6,
  'New',
  'Medium'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Bamboo Fiber Planter',
  'Sustainable bamboo fiber planter. Biodegradable and eco-friendly.',
  399.00,
  NULL,
  'pots',
  '/images/products/pots/bamboo-fiber-planter.jpg',
  true,
  4.5,
  'Eco-Friendly',
  'Small'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Aloe Vera',
  'Medicinal succulent plant that''s both beautiful and functional for skincare. Easy to care for and propagates readily.',
  19.99,
  19.99,
  'succulent',
  '/images/products/plants/aloe-vera.jpg',
  true,
  4.8,
  'medicinal',
  'small'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Jade Plant',
  'Lucky succulent with thick, glossy leaves that brings prosperity. A symbol of good fortune in many cultures.',
  27.99,
  34.99,
  'succulent',
  '/images/products/plants/jade-plant.jpg',
  true,
  4.7,
  'lucky',
  'small'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Cactus Variety Pack',
  'Collection of 5 different small cacti in decorative pots. Perfect for beginners or as gifts.',
  49.99,
  59.99,
  'succulent',
  '/images/products/plants/cactus-variety.jpg',
  true,
  4.5,
  'variety-pack',
  'small'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'String of Pearls',
  'Unique trailing succulent with bead-like leaves. Perfect for hanging planters and adds whimsy to your space.',
  24.99,
  NULL,
  'succulent',
  '/images/products/plants/string-of-pearls.jpg',
  true,
  4.7,
  'sale',
  'small'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Pruning Shears Set',
  'Professional-grade pruning shears with ergonomic handles. Perfect for trimming and shaping.',
  29.99,
  NULL,
  'tools',
  '/images/products/tools/pruning-shears-set.jpg',
  true,
  4.8,
  'popular',
  'small'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Garden Tool Kit',
  'Complete 10-piece garden tool set with storage bag. Everything you need for plant care.',
  44.99,
  54.99,
  'tools',
  '/images/products/tools/tool-kit.jpg',
  true,
  4.7,
  'sale',
  'medium'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Watering Can',
  'Classic metal watering can with long spout for precise watering.',
  19.99,
  NULL,
  'tools',
  '/images/products/tools/watering-can.jpg',
  true,
  4.6,
  'essential',
  'medium'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Plant Mister Spray Bottle',
  'Fine mist spray bottle for humidity-loving plants. Adjustable nozzle.',
  14.99,
  NULL,
  'tools',
  '/images/products/tools/plant-mister-spray-bottle.jpg',
  true,
  4.9,
  'new',
  'small'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Soil pH Tester',
  'Digital soil tester for pH, moisture, and light levels. Essential for plant health.',
  24.99,
  29.99,
  'tools',
  '/images/products/tools/ph-tester.jpg',
  true,
  4.5,
  'tech',
  'small'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Plant Support Stakes',
  'Pack of 10 bamboo support stakes',
  199.00,
  NULL,
  'tools',
  '/images/products/tools/plant-support-stakes.jpg',
  true,
  4.4,
  NULL,
  '24 inches'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Hand Trowel and Fork Set',
  'Stainless steel hand trowel and fork with comfortable wooden handles.',
  349.00,
  NULL,
  'tools',
  '/images/products/tools/hand-trowel-fork-set.jpg',
  true,
  4.7,
  'Popular',
  'Standard'
);

INSERT INTO products (name, description, price, original_price, category, image, instock, rating, badge, size) VALUES (
  'Plant Fertilizer Organic',
  'All-purpose organic plant food. Promotes healthy growth and blooms.',
  249.00,
  NULL,
  'tools',
  '/images/products/tools/plant-fertilizer-organic.jpg',
  true,
  4.8,
  'Bestseller',
  '500g'
);

