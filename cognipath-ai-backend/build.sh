#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt
```

#### **Step 4: Push Everything to GitHub**

Before we can deploy, all your latest code must be on GitHub.

* **Action:** Open your terminal in the main project directory (`cognipath-ai`) and run the following commands:
    ```bash
    git add .
    git commit -m "feat: Prepare backend for production deployment"
    git push
    ```

### **Part 2: Deploying the Backend on Render (8 Steps)**

Now, let's get the backend and database live.

#### **Step 1: Create a Render Account**

* Go to [render.com](https://render.com) and sign up for a free account using your GitHub credentials.

#### **Step 2: Create the PostgreSQL Database**

1.  In the Render Dashboard, click **New +** > **PostgreSQL**.
2.  Give it a unique name (e.g., `cognipath-db`).
3.  Select a region near you.
4.  Ensure the **Free** plan is selected.
5.  Click **Create Database**. Wait for its status to become "Available."
6.  Once it's ready, scroll down to the "Connections" section and copy the **Internal Database URL**.  Keep this URL safe; you will need it in the next step.

#### **Step 3: Create the Backend Web Service**

1.  In the Dashboard, click **New +** > **Web Service**.
2.  Click **Build and deploy from a Git repository** and connect the GitHub repository for your project.
3.  Fill out the deployment settings exactly as follows:
    * **Name:** `cognipath-ai-backend` (or a unique name of your choice).
    * **Root Directory:** `cognipath-ai-backend` (This is crucial; it tells Render to look inside this subfolder).
    * **Environment:** `Python 3`.
    * **Region:** Choose the same region as your database.
    * **Build Command:** `bash build.sh`.
    * **Start Command:** `gunicorn -w 4 -k uvicorn.workers.UvicornWorker main:app`.
4.  Select the **Free** instance type.

#### **Step 4: Add Environment Variables (Critical Step)**

* Before creating the service, scroll down and click **Advanced**.
* Click **Add Environment Variable** twice to create two entries:
    * **Key:** `DATABASE_URL` -> **Value:** (Paste the Internal Database URL you copied from your PostgreSQL database).
    * **Key:** `GEMINI_API_KEY` -> **Value:** (Paste your actual Gemini API key).



#### **Step 5: Deploy the Backend**

* Scroll to the bottom and click **Create Web Service**.

Render will now build and deploy your backend. This will take a few minutes. Once the status says "Live," copy the URL for your backend (it will look like `https://cognipath-ai-backend.onrender.com`).

### **Part 3: Deploying the Frontend on Render (4 Steps)**

Now, we'll connect the frontend to the live backend and deploy it.

#### **Step 1: Update the Frontend's API URL**

Your React app needs to know the address of your live backend.

* **Action:** Open your `frontend/src/App.js` file. Find the line `const API_URL = 'http://127.0.0.1:8000';` and replace the local URL with your live Render backend URL.
    ```javascript
    const API_URL = 'https://cognipath-ai-backend.onrender.com'; // Your live backend URL
    ```

#### **Step 2: Push the Frontend Update to GitHub**

* **Action:** In your terminal, commit and push this final change:
    ```bash
    git add .
    git commit -m "feat: Configure frontend for production API"
    git push
    

