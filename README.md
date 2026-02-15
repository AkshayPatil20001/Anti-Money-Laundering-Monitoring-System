
# AI-Powered AML Detection Dashboard

An advanced Anti-Money Laundering (AML) monitoring system that uses **Unsupervised Machine Learning (Isolation Forest)** to detect suspicious financial patterns and **Generative AI (RAG + Llama-3)** to draft automatic Suspicious Activity Reports (SARs).

![Project Status](https://img.shields.io/badge/Status-Active-green)
![Python](https://img.shields.io/badge/Backend-Django-blue)
![React](https://img.shields.io/badge/Frontend-React%20%2B%20Vite-cyan)

## 🚀 Features

*   **Risk Engine**: Analyzes transactions for Structuring, Round Tripping, and Money Mule patterns.
*   **AI SAR Generation**: Automatically writes legal compliance reports using RAG (Retrieval Augmented Generation).
*   **Interactive Dashboard**: Real-time alerts, trend analysis, and network visualization.
*   **Background Processing**: Threaded file processing for large datasets.

## 📂 Project Structure

```
├── aml_backend/        # Django Settings & Configuration
├── aml_frontend/       # React Frontend Application
├── dashboard/          # Core Backend Logic (API, Models, Views)
│   ├── ml/             # Machine Learning (Isolation Forest)
│   └── rag/            # AI & Vector Database Logic
├── data/               # Sample Transaction datasets
├── docs/               # Technical Documentation & Diagrams
├── scripts/            # Standalone Testing Scripts
└── manage.py           # Django CLI Handler
```

## 🛠️ Installation

### 1. Backend Setup (Django)
```bash
# Create Virtual Environment
python -m venv .venv
source .venv/bin/activate  # Windows: .venv\Scripts\activate

# Install Dependencies
pip install -r requirements.txt

# Environment Setup
# Copy the example environment file and add your API keys
cp .env.example .env  # Windows: copy .env.example .env
# Edit .env and add your GOOGLE_CLIENT_ID, GOOGLE_CLIENT_SECRET, and GROQ_API_KEY


# Run Migrations
python manage.py migrate

# Start Server
python manage.py runserver
```

### 2. Frontend Setup (React)
```bash
cd aml_frontend
npm install
npm run dev
```

## 🧠 How It Works

1.  **Upload**: Upload a CSV of transactions via the dashboard.
2.  **Detect**: The System runs `RiskEngine.analyze()` to calculate risk scores (0-100).
3.  **Alert**: High-risk accounts generate an Alert.
4.  **Report**: Click "Generate SAR" to have the AI write a legal report citing PMLA/RBI laws.

## 🧪 Testing

Run purely backend logic without the UI:
```bash
# Test AI Generation
python -m scripts.test_sar

# Test Full Flow
python -m scripts.test_full_app
```

## 📜 Documentation

Check the `docs/` folder for:
- [Technical Deep Dive](docs/INTERVIEW_TECHNICAL_DEEP_DIVE.txt)
- [Function Trigger Map](docs/FUNCTION_TRIGGER_MAP.md)
