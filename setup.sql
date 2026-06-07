-- Create wallpapers table
CREATE TABLE IF NOT EXISTS wallpapers (
  id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  title TEXT NOT NULL,
  image_url TEXT NOT NULL,
  category TEXT NOT NULL,
  description TEXT,
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW()
);

-- Enable RLS (Row Level Security)
ALTER TABLE wallpapers ENABLE ROW LEVEL SECURITY;

-- Create policy to allow public read access
CREATE POLICY "Allow public read" ON wallpapers
  FOR SELECT USING (true);

-- Create policy to allow public insert
CREATE POLICY "Allow public insert" ON wallpapers
  FOR INSERT WITH CHECK (true);

-- Insert sample wallpapers
INSERT INTO wallpapers (title, image_url, category, description, created_at) VALUES
('Mountain Sunrise', 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=3840&q=80', 'Nature', 'Beautiful mountain sunrise with golden light', NOW()),
('Abstract Blue', 'https://images.unsplash.com/photo-1541961017774-22349e4a1262?w=3840&q=80', 'Abstract', 'Modern abstract design with blue tones', NOW()),
('Space Galaxy', 'https://images.unsplash.com/photo-1419242902214-272b3f66ee7a?w=3840&q=80', 'Space', 'Stunning galaxy view from space', NOW()),
('Ocean Waves', 'https://images.unsplash.com/photo-1505142468610-359e7d316be0?w=3840&q=80', 'Nature', 'Peaceful ocean waves at sunset', NOW()),
('Aurora Borealis', 'https://images.unsplash.com/photo-1444080748397-f442aa95c3e5?w=3840&q=80', 'Nature', 'Northern lights over snowy landscape', NOW());
