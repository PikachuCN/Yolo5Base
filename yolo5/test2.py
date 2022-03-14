import torch

# Model
model =  torch.hub.load('ultralytics/yolov5', 'custom', path='best.pt')  # default

# Images
img = 'https://ultralytics.com/images/zidane.jpg'  # or file, Path, PIL, OpenCV, numpy, list

# Inference
results = model(img)

# Results
results.pandas().xyxy[0]  # or .show(), .save(), .crop(), .pandas(), etc.