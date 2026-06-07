# 4K Wallpapers - Complete Setup Guide

## 🚀 Quick Start (5 Minutes)

### Prerequisites
- GitHub account
- Supabase account (free)
- Basic knowledge of copy-paste

---

## Step-by-Step Setup

### Step 1️⃣: Create Supabase Project

1. Go to [supabase.com](https://supabase.com)
2. Click **Sign Up** (or Sign In if you have account)
3. Sign up with GitHub, Google, or email
4. Click **New Project**
5. Fill in project details:
   - **Project Name**: `4kwallpapers` (or any name)
   - **Database Password**: Create a strong password (save it!)
   - **Region**: Choose closest to your location
6. Click **Create New Project** and wait (usually 1-2 minutes)

✅ **You now have a Supabase project!**

---

### Step 2️⃣: Set Up Database Table

1. In Supabase dashboard, click **SQL Editor** (left sidebar)
2. Click **New Query**
3. **Copy the entire content from `setup.sql` file** in this repository
4. **Paste it** into the SQL Editor
5. Click **Run** button
6. Wait for success message

✅ **Database table created with 5 sample wallpapers!**

---

### Step 3️⃣: Get Your API Credentials

1. In Supabase dashboard, click **Settings** (bottom of left sidebar)
2. Click **API** tab
3. Copy your credentials:
   - **Project URL**: Look for `https://...supabase.co`
   - **Anon Key**: The public key (long string starting with `eyJ...`)
4. **Keep these safe!** (already in index.html)

✅ **Credentials secured!**

---

### Step 4️⃣: Deploy to GitHub Pages

1. Fork this repository to your GitHub account
2. Go to your forked repo → **Settings** → **Pages**
3. Under "Build and deployment":
   - **Source**: Select `Deploy from a branch`
   - **Branch**: Select `main`
   - **Folder**: Select `/ (root)`
4. Click **Save**
5. Wait 1-2 minutes for deployment
6. Your site is live at: `https://YOUR_USERNAME.github.io/4kwallpaper/`

✅ **Website is LIVE! 🎉**

---

## 📸 Adding Wallpapers

### Method 1: Using Supabase Dashboard (Easiest)

1. Go to Supabase dashboard
2. Click **Table Editor** (left sidebar)
3. Select **wallpapers** table
4. Click **Insert** → **Insert Row**
5. Fill in the fields:
   - **title**: Name of wallpaper (e.g., "Sunset Beach")
   - **image_url**: Direct link to image
   - **category**: Type (Nature, Abstract, Space, Urban, etc.)
   - **description**: What's in the image (optional)
6. Click **Save**
7. Refresh your website to see it!

### Method 2: Using Supabase UI

1. Open Supabase → **Table Editor** → **wallpapers**
2. Click **+** button to add new row
3. Fill in all fields
4. Press Enter to save

---

## 🖼️ Best Image Sources

### Free Stock Photos (Recommended)

| Website | Quality | Instructions |
|---------|---------|---------------|
| **Unsplash** | ⭐⭐⭐⭐⭐ | Search → Right-click image → Copy link |
| **Pexels** | ⭐⭐⭐⭐⭐ | Search → Click image → Copy URL from address bar |
| **Pixabay** | ⭐⭐⭐⭐ | Search → Download → Get the download link |
| **Pinterest** | ⭐⭐⭐⭐ | Search → Right-click image → Copy image address |
| **Wallpaper Haven** | ⭐⭐⭐⭐⭐ | Search → Download link provided |

### How to Get Direct Image URLs

**From Unsplash:**
```
https://images.unsplash.com/photo-XXXXX?w=3840&q=80
(Add ?w=3840&q=80 for 4K quality)
```

**From Pexels:**
```
Right-click image → Open image in new tab → Copy URL
```

**From Pinterest:**
```
1. Find image
2. Click on it
3. Right-click → Open image in new tab
4. Copy the URL
```

---

## 🎯 Pinterest-Style Algorithm Explained

Our site uses Pinterest's algorithm features:

- **Random Shuffle**: Posts are randomly shuffled when you load the site
- **Smart Search**: Filter by title, category, or description
- **Masonry Layout**: Pinterest-style grid that adjusts to content
- **Image Hover**: See title on hover (like Pinterest)
- **Quick Preview**: Click any image to open detailed view

---

## ⚙️ Customization

### Change Site Title
Open `index.html`, find:
```html
<title>4K Wallpapers - Premium HD Wallpapers</title>
```
Change to your title.

### Change Logo/Icon
The logo is currently the black "4" with blue dot. To change:
1. Open `index.html`
2. Find the SVG code (search for `falcon-icon`)
3. Replace with your own SVG or image

### Change Colors
Search for these in `index.html`:
- `#3b82f6` = Blue (primary color)
- `#1f2937` = Dark gray (text)
- `#ffffff` = White (background)
- `#e5e7eb` = Light gray (borders)

Replace with your colors.

### Add More Categories
Just add new categories when inserting wallpapers. The site automatically recognizes them!

---

## 🐛 Troubleshooting

### Problem: "No wallpapers found"
**Solution:**
1. Check if setup.sql was executed properly
2. Go to Supabase Table Editor and verify wallpapers table exists
3. Insert at least one wallpaper
4. Refresh website

### Problem: "Images not loading"
**Solution:**
1. Check if image URL is correct
2. Try the URL in your browser directly
3. Use image URLs from trusted sources (Unsplash, Pexels)
4. Ensure URL ends with image extension (.jpg, .png, .webp)

### Problem: "Search not working"
**Solution:**
1. Clear browser cache (Ctrl+Shift+Delete)
2. Hard refresh (Ctrl+Shift+R on Windows, Cmd+Shift+R on Mac)
3. Check browser console for errors (F12)

### Problem: "GitHub Pages not updating"
**Solution:**
1. Wait 2-5 minutes after pushing changes
2. Clear browser cache
3. Check GitHub Actions to see deployment status
4. Hard refresh the GitHub Pages URL

### Problem: "Can't connect to Supabase"
**Solution:**
1. Verify credentials are correct in index.html
2. Check Supabase dashboard → Settings → API
3. Ensure RLS policies are set correctly
4. Check browser console (F12) for specific error

---

## 📱 Responsive Design

Website works perfectly on:
- ✅ Desktop (5 columns)
- ✅ Laptop (4 columns)
- ✅ Tablet (3 columns)
- ✅ Mobile (2 columns, then 1 on small phones)

---

## 🔐 Security Notes

- Your **Anon Key** is public (that's intentional)
- RLS policies restrict what users can do
- Only read and insert operations are allowed
- Users cannot delete or modify others' posts
- Database is secure and protected

---

## 📊 Database Schema

```
wallpapers table:
├── id (auto-generated)
├── title (text) - Name of wallpaper
├── image_url (text) - Direct image link
├── category (text) - Type/category
├── description (text) - Details about image
├── created_at (timestamp) - When added
└── updated_at (timestamp) - Last update
```

---

## 🚀 Advanced Features

### Bulk Insert Multiple Wallpapers
In Supabase SQL Editor:
```sql
INSERT INTO wallpapers (title, image_url, category, description) VALUES
('Title 1', 'https://example.com/image1.jpg', 'Nature', 'Description 1'),
('Title 2', 'https://example.com/image2.jpg', 'Abstract', 'Description 2'),
('Title 3', 'https://example.com/image3.jpg', 'Space', 'Description 3');
```

### Export Data
1. Go to Supabase Table Editor
2. Click three dots → Download as CSV

---

## 📞 Need Help?

1. **Check GitHub Issues** - See if problem is already reported
2. **Review Browser Console** - Press F12 and check for errors
3. **Check Supabase Status** - Ensure project is active
4. **Re-run setup.sql** - Database might need reset
5. **Clear Cache** - Browser cache might have old data

---

## 💡 Tips for Success

1. **Use High-Quality Images** - 4K (3840x2160) works best
2. **Consistent Categories** - Keep category names consistent
3. **Descriptive Titles** - Help users find images
4. **Update Regularly** - Add new wallpapers frequently
5. **Test on Mobile** - Always check mobile view
6. **Monitor Performance** - Check Supabase usage

---

## 📈 Next Steps

1. ✅ Complete the setup above
2. ✅ Add 10-20 wallpapers
3. ✅ Test all features (search, modal, responsive)
4. ✅ Share with friends
5. ✅ Collect feedback
6. ✅ Add more features as needed

---

**Happy Wallpaper Sharing! 🎨✨**