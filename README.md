# Customer Churn Analysis – Machine Learning & BI Project

A complete data analytics and machine learning solution designed to understand **why telecom customers churn** and enable strategic retention planning to protect recurring revenue.

---

## 📌 Table of Contents
- [Overview](#overview)
- [Dataset Summary](#dataset-summary)
- [Business Goals](#business-goals)
- [Project Workflow](#project-workflow)
- [Dashboards & Visuals](#dashboards--visuals)
- [Machine Learning Approach](#machine-learning-approach)
- [Key Insights](#key-insights)
- [Business Recommendations](#business-recommendations)
- [Tech Stack](#tech-stack)
- [Repository Structure](#repository-structure)
- [Author & Contact](#author--contact)

---

## 🎯 Overview
Customer churn is a critical challenge in the telecom industry, as losing existing subscribers directly impacts revenue, customer acquisition cost, and long-term business growth.

This project analyzes customer behavior and service usage patterns to:
- Identify **why customers discontinue services**
- Reveal **high-risk customer segments**
- Provide **data-driven business recommendations**
- Support **predictive churn monitoring** using a machine learning model

The solution includes EDA, customer churn dashboards, and a machine-learning model trained to classify churn risk.

---

## 📂 Dataset Summary
The dataset contains **6,057 customer records** and includes key categories such as:
- Customer demographics (Age, Tenure)
- Subscription & service plans
- Internet type and add-on services
- Billing and usage patterns
- Customer churn flag

---

## 🎯 Business Goals
| Objective | Description |
|----------|-------------|
| Churn Measurement | Understand churn distribution and trend |
| Churn Driver Identification | Detect attributes most strongly linked with churn |
| Risk Segmentation | Compare patterns of churned vs retained customers |
| Predictive Capability | Use ML to estimate churn probability in advance |

---

## 🔄 Project Workflow
1. Data Cleaning & Preprocessing  
2. Univariate and Bivariate Analysis  
3. Feature Engineering  
4. Machine Learning Model (Random Forest)  
5. Dashboard & Report Development  
6. Business Recommendations  

---

## 📊 Dashboards & Visuals
Interactive dashboards highlight:
- Churn vs Retained share
- Churn by **contract type, internet type, and tenure**
- **Revenue impact** of churn across customer segments
- High-risk and low-risk customer groups

> Dashboard screenshots are included in the **/dashboards** folder of this repository.

---

## Machine Learning Approach
- **Algorithm:** Random Forest Classifier
- **Why:** Handles nonlinear patterns, works with mixed categorical & numerical data, and provides feature importance for explainability.

## Top Predictive Features
- Contract Type  
- Tenure in Months  
- Internet Type (especially Fiber Optic)  
- Monthly Charge  
- Long-distance Charges  

---

## 📌 Key Insights
- **Month-to-month subscribers churn the most**, while **two-year contracts show very low churn**.
- **Early-life customers (low tenure) churn more frequently**, indicating onboarding dissatisfaction.
- **Fiber Optic internet customers show higher churn** than DSL or Cable.
- **Higher monthly charges and add-on usage fees correlate with higher churn**.
- **Referral counts are low**, suggesting weak customer advocacy.

---

## 🧾 Business Recommendations
| Area | Recommendation |
|------|--------------|
| Retention Strategy | Offer incentives to migrate from monthly → annual / two-year contracts |
| Customer Lifecycle | Focus onboarding improvements in the first 90 days |
| Billing Strategy | Introduce usage-based flexible or loyalty discounts for high-bill customers |
| Service Optimization | Investigate service experience gaps for Fiber Optic users |
| Word-of-Mouth Growth | Strengthen referral & rewards programs |

---

## 🛠 Tech Stack
| Category | Tools |
|---------|-------|
| Programming | Python |
| Data Analysis | Pandas, NumPy |
| Visualization | Matplotlib, Seaborn |
| Machine Learning | Scikit-Learn |
| Reporting / Dashboarding | Power BI |
| Development | Jupyter Notebook |

---


## 👤 Author & Contact <a id="author--contact"></a>
**Mandeep Singh**  
Data Analyst • Business Intelligence • Machine Learning  

📧 Email – **mandeepsandhu055@email.com**  
🔗 LinkedIn – **https://www.linkedin.com/in/mandeep-sandhu-data-analyst/**

---

