# Satellite Boat Detection

This repository contains a project focused on detecting boats in satellite images using image processing techniques in R. The code is designed to highlight and count objects in the image, simulating the analysis of optical data, a skill relevant for fisheries monitoring and remote sensing.

## Project Goals

- **Develop skills in optical data analysis**: Process satellite images to detect and analyze objects.
- **Simulate fisheries monitoring**: Identify boats in satellite imagery as part of learning to work with tracking and enforcement data.
- **Enhance image processing knowledge**: Utilize R libraries to preprocess, enhance, and analyze image data.

## Features

- Load and preprocess satellite images.
- Enhance image contrast and convert to grayscale.
- Apply thresholding to binarize the image.
- Detect connected objects in the image and label them.
- Count and visualize detected objects.

## Requirements

The following R packages are required to run the code:

- **imager**: For image loading and manipulation.
- **EBImage**: For detecting connected regions and labeling objects.

To install the required packages:
```r
install.packages("imager")
if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
BiocManager::install("EBImage")
