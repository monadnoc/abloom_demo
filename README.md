# abloom_demo
Image classification for flowering plants in Arches National Park
# Data
The classified data (labels on folder names) is up on NU's box [here](https://northwestern.box.com/s/03fimzl8eavj1nvybgym2d60hi3v9qf4)<br>
The folders can be mass-unzipped in Windows (if 7-zip is installed) by running run_zipjs.bat from powershell or cmd as long as zipjs.bat is in the same working directory (as done in this repo)...solutions for Mac/Linux not tested yet, but probably easy to do from commandline
# Approach
(1) From Scratch: <br>
The file structure is meant to mimic a image-classification for flowers [walk-through](https://gogul09.github.io/software/image-classification-python) with a similarly 'difficult' dataset.<br>
Regardless of data quality, one can try to follow the same steps as used in that walk-through; in general, the first step would be 'Feature extraction' with mahotas and cv2<br>
To train a model from scratch, the data will likely need more samples and fewer labels (aiming for ~100 samples per label, but perhaps ~1000 per sample is necessary). This is a continuing process: the dataset will be culled of labels with too few samples, and labels will be flushed out with other online sources of the same plant species. <br>
Good sources for flowers: <br>
[SEInet](http://swbiodiversity.org/seinet/checklists/checklist.php?clid=2688&pid=21) and [Arches National Park site](https://www.nps.gov/arch/learn/nature/wildflowers.htm) <br>
(2) From pre-trained models: <br>
Using Google's ecosystem (the photos are kept initially in a shared google library), there is at least one tutorial for running this on [Google Cloud](https://cloud.google.com/ml-engine/docs/tensorflow/flowers-tutorial) by [retraining](https://www.tensorflow.org/hub/tutorials/image_retraining) a TensorFlow model, namely that of [inception-v3](https://www.tensorflow.org/tutorials/images/image_recognition)<br>
There is still some infrastructure necessary to put in place for this (setting up a Google Cloud Platform project, etc.).
# 'From scratch' summary
The data is *not* great at the moment. After manual addition of more images, image augmentation will be explored.
# Goal
Demonstrate effective classification of flowering plants from the 'small' subset relevant to Arches National Park; build an API for future web or mobile app development
