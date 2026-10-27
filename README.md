# Book Store Management System — PHP & MySQL Web Application

A full-stack web application for an online bookstore, built with PHP and MySQL, supporting both regular users and admin management.

## Overview
Users can browse, search, and download books, while admins have a dedicated panel to manage the book catalog. The system uses role-based access with separate login flows for users and admins.

## Features

**User side:**
- User registration and login
- Browse and read/download books
- Search books by title, author name, or category

**Admin side:**
- Admin login (separate from user login)
- Add new books (title, author, category, file)
- Edit or update existing book details
- Manage the full book catalog

## Tech Stack
- **Backend:** PHP
- **Database:** MySQL
- **Frontend:** HTML/CSS *(add JavaScript here if you used any)*

## Database Schema
*(Fill in your actual tables — example below, edit to match yours)*
- `users` — user_id, name, email, password, role (user/admin)
- `books` — book_id, title, author, category, file_path, upload_date
- *(add any other tables you have, e.g. downloads log, categories table)*

## How to Run
```bash
git clone https://github.com/hemal1020/book-store-management-system.git
cd book-store-management-system
# Import the database
mysql -u root -p your_database_name < database.sql
# Configure your DB connection in config.php (or your actual config file)
# Then serve with XAMPP/WAMP or PHP's built-in server:
php -S localhost:8000
```
*(Update the exact filenames/commands above to match your actual project structure)*

## Screenshots
*(Add 2-3 screenshots here: the browse/search page, a book detail page, and the admin panel — this is the single best thing you can add to make this repo stand out)*

## What I Learned
Building this project helped me practice:
- Role-based authentication (separating user vs admin access)
- CRUD operations connecting PHP to a MySQL backend
- Search functionality across multiple fields (title, author, category)

