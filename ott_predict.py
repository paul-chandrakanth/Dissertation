#!/usr/bin/env python
# coding: utf-8

# In[5]:


import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder
from sklearn.ensemble import RandomForestClassifier, GradientBoostingClassifier
from sklearn.linear_model import LogisticRegression


# In[8]:


# Step 1: Load and preprocess the data
def preprocess_data(data_file):
    data = pd.read_csv(data_file)
    label_encoder = LabelEncoder()
    data['System Configuration'] = label_encoder.fit_transform(data['System Configuration'])
    X = data[['User Count']]
    y = data['System Configuration']
    return X, y

# Step 2: Train multiple machine learning models
def train_models(X, y):
    # Split the data into training and testing sets
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
    
    # Train Random Forest Classifier
    rf_classifier = RandomForestClassifier(n_estimators=100, random_state=42)
    rf_classifier.fit(X_train, y_train)
    
    # Train Gradient Boosting Classifier
    gb_classifier = GradientBoostingClassifier(n_estimators=100, random_state=42)
    gb_classifier.fit(X_train, y_train)
    
    # Train Logistic Regression Classifier
    lr_classifier = LogisticRegression(random_state=42)
    lr_classifier.fit(X_train, y_train)
    
    return rf_classifier, gb_classifier, lr_classifier

# Step 3: Predict system configuration
def predict_system_config(user_count, models):
    rf_classifier, gb_classifier, lr_classifier = models
    rf_prediction = rf_classifier.predict([[user_count]])[0]
    gb_prediction = gb_classifier.predict([[user_count]])[0]
    lr_prediction = lr_classifier.predict([[user_count]])[0]
    return rf_prediction, gb_prediction, lr_prediction

# Example usage
data_file = 'ott_data.csv'
X, y = preprocess_data(data_file)
models = train_models(X, y)

user_count = 50  # Example user count
rf_prediction, gb_prediction, lr_prediction = predict_system_config(user_count, models)
print("Random Forest Prediction:", rf_prediction)
print("Gradient Boosting Prediction:", gb_prediction)
print("Logistic Regression Prediction:", lr_prediction)


# In[ ]:




