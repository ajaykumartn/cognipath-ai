## 📦 Large Files & Hosting
⚠️ GitHub does not allow files >100 MB.  

👉 Our project has some files larger than 100 MB, which GitHub does not allow to push directly.  
We structured the repo so that the **code, docs, and smaller assets are on GitHub**, while the **large files are hosted externally** (e.g., Git LFS, Google Drive, Google Cloud, Hugging Face Hub).  
The repo README contains clear instructions and links to download them.

-   
- [🔗 Download Full Project Zip (Google Drive)](https://drive.google.com/drive/folders/1XWHdkrtD8OIl9-S5cLHvZDnGfNMQscbR?usp=sharing)
- 
Place downloaded files into:


# 🧠 CogniPath AI: The Diagnostic Learning Compass

CogniPath AI is a revolutionary, full-stack learning platform designed to uncover not just *what* a student knows, but *why* they struggle.  
It leverages a multi-agent AI ecosystem to deliver a hyper-personalized educational experience, using **generative AI** for content, **advanced adaptive models** for pacing, and **predictive analytics** for insights.

---

## ✨ Core Features
- **Generative Content** → Curriculum Agent (Google Gemini LLM + CSV fallback) generates unique, high-quality questions.
- **Advanced Adaptive Pacing** → Combines:
  - *Item Response Theory (IRT)* for dynamic ability estimation.
  - *Bayesian Knowledge Tracing (BKT)* for mastery tracking.
- **Personalized Cognitive Fingerprint** → Diagnostic Agent measures Concentration, Comprehension, Retention, Application.
- **Real-time Reporting & Visualization** → Generates charts after every answer.
- **Secure Authentication** → JWT-based login/registration.
- **Flexible Practice Modes** → Adaptive mode or manual difficulty selection.
- **Shareable Reports** → Unique links for teachers/parents.

---

## 🏗️ System Architecture: Multi-Agent AI Ecosystem
- **Diagnostic Agent (Analyst):** Builds the Cognitive Fingerprint.  
- **Curriculum Agent (Content Weaver):** Generates questions and hints (LLM + CSV fallback).  
- **Adaptive Engine (Pacer):** Maintains pacing using IRT + BKT.  
- **Motivational Agent (Coach):** Provides encouraging feedback.  
- **Reporting Agent (Communicator):** Creates performance charts.  

---

## 🛠️ Tech Stack
### Backend
- **Framework:** FastAPI (Python)  
- **Database:** PostgreSQL (production) / SQLite (local dev) with SQLAlchemy ORM  
- **AI & Data:** Google Generative AI, Scikit-learn, Matplotlib, Seaborn, Pandas  
- **Auth:** Passlib (hashing), Python-JOSE (JWT)  
- **Server:** Gunicorn + Uvicorn workers  

### Frontend
- **Framework:** React  
- **Language:** JavaScript with JS
- **Routing:** React Router DOM  
- **API Communication:** Axios  
- **Styling:** CSS (Flexbox, Grid)  

---

## 🚀 Getting Started

### Prerequisites
- Python **3.10+**
- Node.js & npm

---

### 🔹 Backend Setup
```bash
# Clone the repository
git clone https://https://github.com/ajaykumartn/cognipath-ai.git
cd cognipath-ai-project/cognipath-ai-backend

# Create virtual environment
python -m venv venv
# Windows
venv\Scripts\activate
# Mac/Linux
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Add Gemini API key (optional, fallback to CSV if missing)
echo GEMINI_API_KEY="YOUR_API_KEY_HERE" > .env

# Run backend
uvicorn main:app --reload
