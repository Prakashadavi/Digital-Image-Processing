# Steganography Image Processing in MATLAB

This project demonstrates **image steganography** using grayscale images in MATLAB. The idea is to hide a secret image within a cover image by manipulating the least significant bits (LSBs) of pixel values.

## 🖼️ Project Overview

Two main MATLAB scripts are provided:

1. `image_processing_project.m.txt`  
   - Uses `lena.jpg` as the carrier image.
   - Hides the image `testpat1.png` inside it.
   - Stores the output as `newimage.png`.

2. `image_processing_project_2.m.txt`  
   - Uses `cameraman.tif` as the carrier image.
   - Also hides `testpat1.png`.
   - Stores the output as `newimage.tif`.

## 📁 Files Included

- `image_processing_project.m.txt` – Steganography using Lena image.
- `image_processing_project_2.m.txt` – Steganography using Cameraman image.
- Required input images (not included):  
  - `lena.jpg` or `cameraman.tif` (carrier)  
  - `testpat1.png` (secret)

## 🔧 How It Works

1. **Embedding Phase:**
   - The secret image’s **Most Significant Bits (MSBs)** are inserted into the **Least Significant Bits (LSBs)** of the carrier image.
   - This generates a new "stego image" that looks nearly identical to the original.

2. **Retrieval Phase:**
   - The script reads back the LSBs from the stego image.
   - Based on LSB values, it reconstructs a rough version of the hidden secret image.

## 🛠️ Requirements

- MATLAB (tested with R2021a and later)
- Input images in the working directory:
  - `lena.jpg` or `cameraman.tif`
  - `testpat1.png`

## 📷 Output

Each script displays 4 subplots:
1. Carrier Image  
2. Secret Image  
3. Stego Image (carrier + hidden message)  
4. Retrieved Secret Image  

Stego images are also saved as:
- `newimage.png` (from `image_processing_project`)
- `newimage.tif` (from `image_processing_project_2`)

## 🚀 Usage

1. Download or clone this repository.
2. Place the required image files in the MATLAB directory.
3. Run the `.m` file of your choice in MATLAB.
4. View the visual output and inspect the saved stego image.

## 📚 Concepts Used

- Binary manipulation using `dec2bin` and `bin2dec`
- Steganography using LSB embedding
- Grayscale image processing

## 📌 Notes

- This is a basic demonstration of steganography.
- It does not use encryption or compression.
- Works best with grayscale images of the same size.

---

📫 For questions or enhancements, feel free to open an issue or pull request!