# AI-Driven Financial Crime Detection & Compliance System
### PG-DBDA Capstone Project (C-DAC)

![Project Status](https://img.shields.io/badge/Status-Completed-success)
![Domain](https://img.shields.io/badge/Domain-FinTech%20%7C%20Big%20Data-blue)
![Tech Stack](https://img.shields.io/badge/Stack-Python%20%7C%20Django%20%7C%20React%20%7C%20ML-orange)

## 📌 Project Overview

This project is a comprehensive **Anti-Money Laundering (AML) Monitoring System** developed as part of the **Post Graduate Diploma in Big Data Analytics (PG-DBDA)** curriculum at C-DAC. 

It addresses the critical industry challenge of identifying sophisticated financial crimes in high-volume transaction data. By integrating **Unsupervised Machine Learning (Isolation Forest)** for anomaly detection and **Generative AI (RAG + Llama-3)** for automated compliance reporting, this system significantly reduces the manual workload of compliance officers.

## 🎯 Key Objectives

1.  **Automated Anomaly Detection**: Analyze large datasets to detect structuring, round-tripping, and money mule patterns without predefined rules.
2.  **Regulatory Compliance**: Ensure adherence to **PMLA 2002 (Prevention of Money Laundering Act)** and **RBI KYC Master Directions**.
3.  **Data-Driven Reporting**: Auto-generate detailed Suspicious Activity Reports (SARs) using Retrieval-Augmented Generation (RAG).
4.  **Real-time Visualization**: Provide an interactive dashboard for financial crime investigators.

## 🛠️ Technology Stack (Big Data & Analytics)

### Data Science & Machine Learning
*   **Python**: Core language for data processing and backend logic.
*   **Pandas**: High-performance data manipulation and vectorized feature engineering.
*   **Scikit-Learn**: Implementation of the `Isolation Forest` algorithm for outlier detection.
*   **NumPy**: Numerical computing for risk score calculations.

### Generative AI & NLP
*   **LangChain**: Orchestration framework for RAG pipeline.
*   **Llama-3 (via Groq)**: Large Language Model for drafting legal narratives.
*   **FAISS**: Vector database for efficient semantic search of legal documents.

### Full-Stack Web Development
*   **Backend**: Django REST Framework (DRF) - Robust, scalable API architecture.
*   **Frontend**: React.js + Vite - Modern, responsive user interface.
*   **Database**: SQLite (Development) / PostgreSQL (Production-ready).

## 📊 Features & Functionality

### 1. Intelligent Risk Engine
*   Ingests transaction data (CSV/Excel).
*   Extracts behavioral features:
    *   *Structuring Count* (Transactions just below reporting limits).
    *   *Flow Velocity* (Rapid movement of funds).
    *   *Round Trip patterns*.
*   Assigns a dynamic **Risk Score (0-100)** to every account.

### 2. AI Compliance Assistance
*   **RAG System**: Retrieves relevant sections of the PMLA Act based on detected patterns.
*   **SAR Generator**: Drafts a professional-grade Suspicious Activity Report with citations, ready for submission to FIU-IND.

### 3. Investigator Dashboard
*   Visualizes transaction networks.
*   Displays risk trends over time.
*   Allows case management and export.

## 🚀 Installation Guide

### Prerequisites
*   Python 3.10+
*   Node.js & npm

### Backend Setup
```bash
# Clone the repository
git clone https://github.com/AkshayPatil20001/Anti-Money-Laundering-Monitoring-System.git
cd Anti-Money-Laundering-Monitoring-System

# Create Virtual Environment
python -m venv .venv
source .venv/bin/activate  # Windows: .venv\Scripts\activate

# Install Dependencies
pip install -r requirements.txt

# Migrate Database
python manage.py migrate

# Run Server
python manage.py runserver
```

### Frontend Setup
```bash
cd aml_frontend
npm install
npm run dev
```

## 📜 Future Scope (Big Data Extension)
*   **Spark Integration**: Utilizing PySpark for distributed processing of massive datasets.
*   **Kafka Streaming**: Real-time fraud detection on streaming transaction logs.
*   **Graph Database**: Implementing Neo4j for advanced link analysis between entities.

---
**Developed by Akshay Patil** | PG-DBDA Candidate | C-DAC
