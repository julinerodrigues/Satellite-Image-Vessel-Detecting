# Load the required package for image manipulation
library(imager)  # Package used to load and process images

# Define the path to the image
# Replace the path below with the location of your satellite image.
img_path <- "G:/My Drive/Global Fishing Watch Application/Satellite Image.png"

# Load the image
# The load.image function reads the image from the specified path and converts it into a manipulable object.
img <- load.image(img_path)

# Display basic information about the image
# The dim function returns the dimensions of the image (width, height, and color channels).
print(dim(img))  # Displays the dimensions of the loaded image

# Display the original image
# The plot function shows the image in its original format.
plot(img, main = "Original Image")

# Convert the image to grayscale
# The grayscale function converts the image to a single intensity channel, simplifying the analysis.
gray_img <- grayscale(img)

# Display the grayscale image
plot(gray_img, main = "Grayscale Image")

# Enhance the image contrast
# Multiplying the pixel values increases the contrast, highlighting areas of interest.
contrast_img <- gray_img * 1.5  # Adjust the multiplier as needed

# Apply a threshold to binarize the image
# Converts the image to black and white, separating objects (white) from the background (black).
binary_img <- contrast_img > 0.3  # Adjust the threshold value for better results

# Display the binarized image
plot(binary_img, main = "Binarized Image with Enhanced Contrast")

# Detect objects in the binarized image
# Load the EBImage package, required for the bwlabel function.
if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
BiocManager::install("EBImage")
library(EBImage)

# The bwlabel function identifies connected regions in the binary image and labels each as a separate object.
labeled_img <- bwlabel(binary_img)

# Visualize the detected objects with different colors
# The colorLabels function assigns distinct colors to each labeled object.
color_labels <- colorLabels(labeled_img)
plot(color_labels, main = "Detected Objects")

# Count the total number of detected objects
# The max function returns the highest numerical label, corresponding to the total number of detected objects.
num_objects <- max(labeled_img)

# Print the total number of detected objects
cat("Total number of detected objects:", num_objects, "\n")
