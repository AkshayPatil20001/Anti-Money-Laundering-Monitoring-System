# Intelligent Financial Crime Detection System (IFCDS)

> **Advanced AI-driven Anti-Money Laundering (AML) platform integrating Unsupervised Machine Learning and Generative AI for real-time anomaly detection and automated compliance reporting.**

![Project Status](https://img.shields.io/badge/Status-Research%20Prototype-blue)
![Python](https://img.shields.io/badge/AI%20Core-Python%203.11-yellow)
![ML](https://img.shields.io/badge/ML-Isolation%20Forest-orange)
![LLM](https://img.shields.io/badge/GenAI-Llama--3%20%2B%20RAG-purple)

## 📌 Project Overview

This project addresses the critical challenge of detecting sophisticated financial crimes in high-volume transaction datasets. Unlike traditional rule-based systems, this solution leverages **Unsupervised Learning (Isolation Forest)** to identify unknown anomaly patterns and **Retrieval-Augmented Generation (RAG)** to automate the complex process of writing Suspicious Activity Reports (SARs) in compliance with PMLA 2002 and RBI guidelines.

Developed as part of an advanced computing curriculum (C-DAC), this system demonstrates end-to-end full-stack development with a heavy focus on data science and AI integration.

## 🚀 Key Technical Features

### 1. Unsupervised Anomaly Detection (ML Engine)
*   **Algorithm**: `Isolation Forest` (Scikit-Learn) for outlier detection in high-dimensional feature spaces.
*   **Feature Engineering**: Vectorized processing using `Pandas` to extract behavioral features:
    *   *Structuring/Smurfing* (transactions just below reporting thresholds).
    *   *Round Tripping* (funds moving in circular loops).
    *   *Money Mule Patterns* (rapid high-volume deposit & withdrawal).
*   **Risk Scoring**: Dynamic normalization of anomaly scores to a 0-100 risk scale.

### 2. Generative AI Compliance Officer (RAG Module)
*   **Architecture**: Retrieval-Augmented Generation (RAG) using `LangChain`.
*   **LLM**: Meta Llama-3 (via Groq Inference Engine) for low-latency reasoning.
*   **Vector Database**: `FAISS` (Facebook AI Similarity Search) for semantic retrieval of legal documents.
*   **Knowledge Base**: Indexed PMLA Act 2002, RBI Master Directions, and FIU-IND reporting formats.

### 3. Scalable Web Architecture
*   **Backend**: `Django REST Framework` (DRF) for secure, scalable API endpoints.
*   **Frontend**: `React.js` + `Vite` for a responsive, high-performance dashboard.
*   **Visualization**: `Recharts` for interactive network graphs and transaction timelines.

## 📂 Project Structure

```bash
├── aml_backend/        # Django Project Configuration & Settings
├── aml_frontend/       # React.js SPA (Single Page Application)
├── dashboard/          # Core Application Logic
│   ├── ml/             # Machine Learning Engine (Isolation Forest)
│   ├── rag/            # RAG Pipeline (Vector DB + LLM Integration)
│   ├── api.py          # REST API Endpoints
│   └── views.py        # Request Handlers
├── data/               # Synthetic Financial Transaction Datasets
└── requirements.txt    # Python Dependencies
```

## 🛠️ Installation & Setup

### Prerequisites
*   Python 3.10+
*   Node.js & npm

### 1. Backend Setup (Python/Django)
```bash
# Clone the repository
git clone https://github.com/AkshayPatil20001/Anti-Money-Laundering-Monitoring-System.git
cd Anti-Money-Laundering-Monitoring-System

# Create Virtual Environment
python -m venv .venv
source .venv/bin/activate  # Windows: .venv\Scripts\activate

# Install Core ML & Web Dependencies
pip install -r requirements.txt

# Configure Environment Variables
# Copy the example file and add your GROQ_API_KEY for the AI engine
cp .env.example .env

# Initialize Database
python manage.py migrate

# Start the Analysis Engine
python manage.py runserver
```

### 2. Frontend Setup (React)
```bash
cd aml_frontend
npm install
npm run dev
```

## 🧪 Usage Workflow

1.  **Data Ingestion**: Upload transaction CSVs (bulk processing supported).
2.  **Automated Analysis**: The system runs the `RiskEngine` to flag high-risk accounts.
3.  **Investigate**: Analysts review flagged profiles with visualized transaction graphs.
4.  **AI Reporting**: Click **"Generate SAR"** to instantly draft a legal report citing specific violated sections of the PMLA Act.

---
*Created by [Your Name] | CDAC Project Portfolio*
