# 🚁 Parrot-Minidrone-Send-Email-Red-Image-

A Simulink-controlled autonomous drone project using a Parrot Mambo Minidrone that detects red objects on the ground, calculates the geometric center, hovers over it, and triggers an image snapshot to be sent via email. 
📌 This project was completed as part of a **vacation work program at [Opti-Num Solutions](https://www.optinum.co.za/)**.


## 🔑 Features

- ✅ Real-time red object detection 
- 📍 Geometric center calculation and precision hovering
- 🗺️ Lawnmower path planning area exploration
- 📷 Automatic image capture triggered by detection
- ✉️ Image saved and emailed using Interpreted MATLAB Function
- 
---

## 🛠️ Built With:

- **Simulink** – for modeling and control logic
- **MATLAB** – for vision processing and email automation
- **Parrot Mambo Minidrone** – hardware platform with downward camera
- **Image Thresholding App** – to tune red detection limits

---

## 🚀 Getting Started

### Prerequisites

- MATLAB & Simulink (R2024b)
- MATLAB Support Package for Parrot Minidrones
- Simulink Support for Parrot Minidrones
- Image Processing Toolbox
- Internet connection for email functionality

## 🧪 How to Use

Before running the model, you need to configure MATLAB to send emails by setting up your SMTP preferences.

### 📧 Step 1: Configure Email Settings

Personalize the following code by replacing the placeholders with **your own email address** and **App Password** (not your regular Gmail password). Then, paste it into the **MATLAB Command Window**:

```matlab
setpref('Internet','SMTP_Server','smtp.gmail.com');
setpref('Internet','E_mail','YourEmail@gmail.com');
setpref('Internet','SMTP_Username','YourEmail@gmail.com');
setpref('Internet','SMTP_Password','Your2StepVerificationPassword');

% Java mail system properties
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
props.setProperty('mail.smtp.socketFactory.class','javax.net.ssl.SSLSocketFactory');
props.setProperty('mail.smtp.socketFactory.port','465');

### 🚁 Step 2: Connect and Verify the Drone

Make sure your **Parrot Mambo Minidrone** is fully charged and turned on. Then, follow these steps to connect and verify that MATLAB can communicate with the drone:

1. Open MATLAB.
2. Ensure your computer's **Bluetooth** is turned on.
3. Connect to the drone via Bluetooth us
4. Monitior and tune
5. Run the model
