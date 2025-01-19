# **Kafka Proof of Concept**  

This **Proof of Concept (POC)** demonstrates a Kafka-based real-time **audio processing pipeline**. It consists of two **Jupyter notebooks** that simulate the **continuous creation of audio data**.  

Currently, the stream is generated from **locally stored audio files**, but it can be modified to **ingest live audio data from microphones**.  

---

## **How It Works**  

### **1️⃣ Producer Notebook**  
- Reads and processes **audio files**.  
- Converts them into **Mel spectrogram images**.  
- Sends these images to **a Kafka topic**.  

### **2️⃣ Consumer Notebook**  
- Listens to the **Kafka topic**.  
- Receives the **spectrogram images**.  
- Runs a **pre-trained model** for **real-time predictions**.  

---

## **🚀 Setup Instructions**  

- Open the **`docker-compose.yml`** file and update the **volumes** to include all **audio files** and **models** from your local directory.  
- Run the following command to **build and start** the Docker containers:  
  ```sh
  docker-compose up --build -d
  ```  
- Retrieve the **Jupyter Lab token** by running:  
  ```sh
  docker logs -f anaconda
  ```  
- Copy the **Jupyter Lab URL** from the logs and **paste it into your browser**.  
- Update the **Producer notebook** to use the correct **audio file path** from the volume.  
- Update the **Consumer notebook** to use the correct **trained model** corresponding to the producer's audio files.  
- Run the **Producer notebook** first, then the **Consumer notebook**.  

---

## **📌 Access Kafka UI**  
You can **monitor messages in Kafka UI** by opening:  
```
http://localhost:8080/
```

