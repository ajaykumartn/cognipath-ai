🧠 CogniPath AI: The Diagnostic Learning Compass
CogniPath AI is a revolutionary, full-stack learning platform designed to uncover not just what a student knows, but why they struggle. It leverages a multi-agent AI ecosystem to deliver a hyper-personalized educational experience, using generative AI for content, advanced adaptive models for pacing, and predictive analytics for insights.

This repository contains the complete source code for the backend API, the React frontend, and all the advanced AI models that power the platform.

✨ Core Features
This platform is a fully-featured prototype that implements the core vision of the original project plan.

Generative Content: The Curriculum Agent uses a Large Language Model (Google's Gemini) to generate unique, high-quality questions on the fly, with a seamless fallback to a static CSV dataset for reliability.

Advanced Adaptive Pacing: The Adaptive Engine combines two sophisticated models:

Item Response Theory (IRT): Dynamically calculates user ability and selects questions with the optimal difficulty level.

Bayesian Knowledge Tracing (BKT): Models the probability of skill mastery to prevent "lucky guesses" from moving a user forward prematurely.

Personalized Cognitive Fingerprint: The Diagnostic Agent analyzes user performance and response time to build a unique profile, scoring them across Concentration, Comprehension, Retention, and Application.

Real-time Reporting & Visualization: The Reporting Agent generates and saves two charts after every answer, providing instant visual feedback on the user's Cognitive Fingerprint and Learning Trajectory.

Secure User Authentication: Full-featured registration and login system using JWT (JSON Web Tokens) for secure, persistent sessions.

Flexible Practice Modes: Users can start a session in Adaptive Mode or choose a specific difficulty level to target their practice.

Shareable Reports: Users can generate unique, shareable links to their performance reports, perfect for sharing with teachers or parents.

🏗️ System Architecture: The AI Agent Ecosystem
The intelligence of CogniPath AI is distributed across five specialized, collaborating agents:

The Diagnostic Agent (The Analyst): Creates the "Cognitive Fingerprint" by analyzing user answers and response times.

The Curriculum Agent (The Content Weaver): Generates unique questions and hints using an LLM, with a CSV fallback.

The Adaptive Engine (The Pacer): Uses IRT and BKT models to ensure perfect pacing and difficulty adjustment.

The Motivational Agent (The Coach): Provides personalized, encouraging feedback to the user.

The Reporting Agent (The Communicator): Synthesizes performance data into clear, visual charts.

🛠️ Tech Stack
Backend
Framework: Python with FastAPI

Database: SQLAlchemy ORM with PostgreSQL (for production) and SQLite (for local development)

AI & Data: Google Generative AI, Scikit-learn, Matplotlib, Seaborn, Pandas

Authentication: Passlib (for hashing), Python-JOSE (for JWT)

Server: Gunicorn with Uvicorn workers

Frontend
Framework: React

Language: JavaScript (ES6+) with JSX

Routing: React Router DOM

API Communication: Axios

Styling: Plain CSS with modern techniques (Flexbox, Grid)

🚀 Getting Started: Local Setup & Installation
Follow these steps to get a local copy of the project up and running.

Prerequisites
Python 3.10+

Node.js and npm

Backend Setup
Clone the repository:

git clone [https://github.com/YourUsername/cognipath-ai-project.git](https://github.com/YourUsername/cognipath-ai-project.git)
cd cognipath-ai-project/cognipath-ai-backend

Create and activate a virtual environment:

python -m venv venv
# On Windows
venv\Scripts\activate
# On Mac/Linux
source venv/bin/activate

Install dependencies:

pip install -r requirements.txt

(Optional) Add your Gemini API Key:

Create a file named .env in the cognipath-ai-backend folder.

Add your API key to it like this: GEMINI_API_KEY="YOUR_API_KEY_HERE"

If you skip this, the app will run in CSV fallback mode.

Run the backend server:

uvicorn main:app --reload

The backend will be running at http://127.0.0.1:8000.

Frontend Setup
Open a new terminal.

Navigate to the frontend directory:

cd cognipath-ai-project/frontend

Install dependencies:

npm install

Run the frontend development server:

npm start
