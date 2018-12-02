# abloom_demo
Machine-learning image classification demo for flowering plants in Arches National Park
## Approach
The file structure is meant to mimic a image-classification for flowers [walk-through](https://gogul09.github.io/software/image-classification-python) with a similarly 'difficult' dataset.<br>
In comparison to the walk-through, this code includes updates for scikit-learn 0.21 (and 0.22), migration of code to Python 3, elimination of poor algorithms (LDA), and removal of hard-coding number of images per class. <br>  
Regardless, the process is identical to that of the walk-through; in general, the first step would be 'Feature extraction' with mahotas and cv2 (done in `global.py`); the next step is using and comparing popular ML algorithms from scikit-learn (done in `train_test.py`); the final step (not done) would be model validation with segmentation of 'train' vs withheld 'test' data <br>
To develop a high accuracy model from scratch, the data will likely need more samples and fewer labels (aiming for ~100 samples per label, but perhaps ~1000 per sample is necessary). This is a continuing process: the dataset will be culled of labels with too few samples, and labels will be flushed out with other online sources of the same plant species. <br>
Good sources for flowers: <br>
[SEInet](http://swbiodiversity.org/seinet/checklists/checklist.php?clid=2688&pid=21) and [Arches National Park site](https://www.nps.gov/arch/learn/nature/wildflowers.htm) <br>
## Data
The initial classified data (labels on folder names) is in a NU Box folder [here](https://northwestern.box.com/s/03fimzl8eavj1nvybgym2d60hi3v9qf4). This data contains as few as 5 pictures per category. <br>
More populated data is also available [here](https://northwestern.box.com/s/od40yary4cmwfjs9sawyglvtiyoujn90) (filled in mostly with SEInet) with as many as 15 images per class. Note: the *ipomopsis gunnisonii* genus-species is only populated to 13 <br>
The folders can be mass-unzipped in Windows (if 7-zip is installed) by running run_zipjs.bat from powershell or cmd as long as zipjs.bat is in the same working directory (as done in this repo); solutions for Mac/Linux not tested yet, but probably easy to do from bash terminal
# Summary of Demo
The data is *not* great at the moment. <br>
After manual addition of more images, the accuracy of most sk-learn algorithms actually decreases! <br>
Specific to the data: the introduction of a greater variance in images (not just from same phone/camera as in the original data, etc.) may make this a much harder problem. Some of the newly introduced images are much lower resolution, and some of them do not explicitly include pictures of the flower (originally thought this might improve classification if a given flower's leaves are more distinct than the flower itself). <br>
Specific to the process: The removal of hard-coding number of images per class in `global.py` may be engendering 'data leakage' because some of the folders have many more pictures than others, and so many of the algorithms are biased towards these. Thus, the accuracy decreases as the number of pictures per class becomes more uniform and the classification problem becomes harder.<br>
Image augmentation will be explored in next commit to see if a *truly* uniform number of pictures per class can be achieved. <br>
Train vs test data comparison may be shelved in favor of using data to retrain a neural network (tensorflow)
