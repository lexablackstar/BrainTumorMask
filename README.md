# Brain Tumor Segmentation and Visualisation

This project implements a MATLAB-based image processing pipeline for **automatic brain tumor detection and visualization** from MRI images. The application processes multiple MRI scans, isolates the brain region, segments the tumor, and highlights it in red for clear visual interpretation.

---

## 🧠 Overview

Medical image segmentation plays a critical role in assisting radiologists and clinicians in identifying abnormal tissue. This project demonstrates a classical image-processing approach (non–deep learning) for tumor detection using:

- Grayscale conversion
- Adaptive thresholding
- Morphological operations
- Region filtering
- Color overlay visualization

The system processes **three MRI scans** and displays the original images alongside their tumor-highlighted versions.

---

## Why this project?
Accurate identification of brain tumors in MRI scans is a critical task in clinical diagnosis and treatment planning. This toolkit enables students, researchers, and biomedical engineers to process MRI data efficiently and extract tumor regions using transparent, explainable image-processing methods without relying on deep learning models.
The pipeline is modular, interpretable, and adaptable for experimentation with different MRI datasets.


### ⚙️ Features

- **Inner Brain Masking**  
  Removes background and skull regions to focus segmentation only inside the brain.

- **Tumor Segmentation**  
  Uses intensity thresholding and morphological filtering to isolate the tumor region.

- **Tumor Highlighting**  
  Overlays the detected tumor in red on the original MRI scan.

- **Batch Visualization**  
  Displays original and processed images for multiple MRI scans using subplots.

---

## 🧪 Image Processing Pipeline

1. Convert MRI image to grayscale
2. Extract inner brain region using adaptive binarization
3. Apply thresholding to detect high-intensity tumor regions
4. Refine segmentation using morphological operations:
   - Opening
   - Closing
   - Hole filling
   - Area filtering
5. Overlay tumor mask in red on the original MRI image

---
📄 License

This project is for educational and research purposes.
