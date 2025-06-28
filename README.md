# 🚀 Dockerized Flask + PostgreSQL App

A simple Python Flask application that connects to a PostgreSQL database, fully containerized using Docker and orchestrated with Docker Compose.

---

## 🛠 Tech Stack

- 🐍 Python 3.12
- 🔥 Flask 3.x
- 🐘 PostgreSQL 15
- 🐳 Docker & Docker Compose

---

## 📂 Project Structure

```
my-python-image/
├── app.py                # Flask application
├── requirements.txt      # Python dependencies
├── Dockerfile            # Docker image for Flask app
├── docker-compose.yml    # Defines Flask + PostgreSQL services
└── README.md             # Documentation
```

---

## ⚙️ Getting Started

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/Lucky5d7/docker-flask-postgres-app.git
cd docker-flask-postgres-app
```

### 2️⃣ Build & Run with Docker Compose

```bash
docker-compose up --build
```

Open your browser and navigate to:

```
http://localhost:5000
```

---

## 🧾 Database Configuration

Modify `docker-compose.yml` if needed:

```yaml
environment:
  POSTGRES_DB: mydatabase
  POSTGRES_USER: myuser
  POSTGRES_PASSWORD: mypassword
```

---

## ✅ Output

If everything is working, visiting the URL will return:

```json
{
  "message": "Connected to the database successfully!"
}
```

---

## 🧠 Future Improvements

- Add `.env` for secret management
- Add proper logging & error handling
- Dockerize with Gunicorn for production
- Add database migrations with Flask-Migrate
- Deploy to Render, Railway, or Azure

---
