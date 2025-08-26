# 🛒 Shopzy - E-Commerce Platform


Shopzy is a modern, full-stack e-commerce platform built with the MERN stack. It offers a seamless shopping experience for users and powerful management tools for admins. The project is designed for scalability, performance, and ease of use.

---

## 📁 Project Structure

```
shopzy/
├── backend/         # Express.js server, API, database, business logic
│   ├── controllers/ # Route controllers
│   ├── lib/         # Utility libraries (db, cloudinary, redis, stripe)
│   ├── middleware/  # Express middlewares
│   ├── models/      # Mongoose models
│   └── routes/      # API route definitions
├── frontend/        # React app (Vite, Tailwind CSS, Zustand)
│   ├── public/      # Static assets
│   ├── src/         # React components, pages, stores, libs
│   └── ...          # Frontend configs
├── package.json     # Project metadata
└── README.md        # Project documentation
```

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
   # Clone the repository
   git clone <repo-url>
   cd shopzy

   # Install backend dependencies
   npm install

   # Install frontend dependencies
   cd frontend
   npm install
   cd ..
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

   ### Development
   Open two terminals:
   1. In the root folder, start the backend:
      ```bash
      npm run dev
      ```
   2. In another terminal, start the frontend:
      ```bash
      cd frontend
      npm run dev
      ```

   ### Production
   ```bash
   npm run build
   npm run start
   ```

---

## 📦 Usage

- Visit `http://localhost:5173` for the frontend.
- Access backend API at `http://localhost:5000` (default).
- Admin dashboard is available after logging in as an admin user.

