CREATE TABLE stores(
  store_id INT PRIMARY KEY,
  store_name VARCHAR(25) NOT NULL,
  district VARCHAR(25) NOT NULL,
  manager_name VARCHAR(25) DEFAULT('ISHIKAWA'),
);

CREATE TABLE sales(
  sale_id INT PRIMARY KEY,
  store_id INT NOT NULL,
  sale_date DATE NOT NULL,
  revenue_yen INT NOT NULL,
  cogs_yen INT NOT NULL,
  transactions INT NOT NULL,
  units_sold INT NOY NULL,
  FOREIGN KEY(store_id) REFERENCES stores(store_id)
);

INSERT INTO stores VALUES 
('S01', 'Shibuya Flagship', 'Central', 'Tokyo', 'Kenji Sato', 260),
('S02', 'Shinjuku West', 'Central', 'Tokyo', 'Hana Mori', 190),
('S03', 'Kichijoji', 'West', 'Tokyo', 'Daiki Tanaka', 145),
('S04', 'Roppongi Hills', 'Central', 'Tokyo', 'Yumi Kurosawa', 210),
('S05', 'Yokohama Minato', 'South', 'Kanagawa', 'Ren Takahashi', 180);

INSERT INTO sales VALUES
(101, 'S01', '2026-11-02', 4850000, 1746000, 3120, 1240),
(102, 'S01', '2026-11-09', 5120000, 1843200, 3310, 1325),
(103, 'S02', '2026-11-02', 3920000, 1450400, 2450, 960),
(104, 'S02', '2026-11-09', 3640000, 1346800, 2210, 870),
(105, 'S03', '2026-11-02', 2680000, 938000, 1980, 810),
(106, 'S03', '2026-11-09', 2810000, 983500, 2090, 855),
(107, 'S04', '2026-11-02', 4150000, 1452500, 1890, 720),
(108, 'S04', '2026-11-09', 4290000, 1501500, 1960, 750),
(109, 'S05', '2026-11-02', 3180000, 1144800, 2140, 890),
(110, 'S05', '2026-11-09', 3340000, 1202400, 2250, 940);
