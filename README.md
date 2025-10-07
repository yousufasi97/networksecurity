# 🛡️ Network Security ML Pipeline with FastAPI, MLflow, Docker, and AWS EC2  

### 🧩 About this Project  
This project combines **machine learning and cybersecurity** to detect **phishing and malicious network traffic** automatically.  
What began as a small experiment grew into a complete **end-to-end MLOps system** — built with FastAPI, MLflow, MongoDB, Docker, GitHub Actions, and deployed on **AWS EC2**.  

The pipeline can train itself on raw data, validate and transform it, select the best-performing model, and serve real-time predictions via a FastAPI endpoint.  

---

## 🚀 Key Features  
- **End-to-end ML workflow**: ingestion → validation → transformation → model training → deployment  
- **Trains multiple models automatically** (Logistic Regression, KNN, Decision Tree, Random Forest, AdaBoost, Gradient Boosting)  
- **Evaluates models** using F1-score, Precision, and Recall — tracked in **MLflow via DagsHub**  
- **FastAPI interface** for live predictions and retraining  
- **MongoDB integration** for secure data handling  
- **Containerized with Docker** and automated CI/CD via GitHub Actions  
- **Deployed on AWS EC2** for real-time cloud inference  
- Custom **logging** and **exception handling** for production reliability  

---

## 🧠 Tech Stack  
**Languages & Frameworks:** Python, FastAPI  
**ML Libraries:** Scikit-learn, Pandas, NumPy  
**MLOps & Tracking:** MLflow, DagsHub  
**Database:** MongoDB  
**DevOps Tools:** Docker, GitHub Actions, AWS EC2, dotenv  
