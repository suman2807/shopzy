# 🛒 Shopzy - E-Commerce Platform

A modern full-stack e-commerce application built with the MERN stack.

## ✨ Features

- 🔐 User authentication with JWT
- 🛍️ Product browsing and shopping cart
- 💳 Stripe payment integration
- 👑 Admin dashboard with analytics
- 🎨 Modern UI with Tailwind CSS
- ⚡ Redis caching for performance

## 🛠️ Tech Stack

**Frontend:** React, Tailwind CSS, Zustand  
**Backend:** Node.js, Express, MongoDB, Redis  
**Services:** Stripe, Cloudinary

## 🚀 Quick Start

1. **Clone & Install**
   ```bash
   git clone <repo-url>
   cd mern-ecommerce
   npm install
   cd frontend && npm install && cd ..
   ```

2. **Environment Setup**
   
   Create `.env` in root:
   ```env
   PORT=5000
   MONGO_URI=your_mongo_uri
   UPSTASH_REDIS_URL=your_redis_url
   ACCESS_TOKEN_SECRET=your_access_secret
   REFRESH_TOKEN_SECRET=your_refresh_secret
   CLOUDINARY_CLOUD_NAME=your_cloud_name
   CLOUDINARY_API_KEY=your_api_key
   CLOUDINARY_API_SECRET=your_api_secret
   STRIPE_SECRET_KEY=your_stripe_secret
   CLIENT_URL=http://localhost:5173
   ```
   
   Create `frontend/.env`:
   ```env
   VITE_STRIPE_PUBLISHABLE_KEY=your_stripe_public_key
   ```

3. **Run Application**
   ```bash
   # Development
   npm run dev
   
   # Production
   npm run build
   npm run start
   ```

