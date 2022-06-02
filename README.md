# ECG
Electrocardiogram based heartbeat classification using Transfer Learning from a Self-Supervised model.
This was a group project. I worked on research, experimenting with SVM, CNN and MLP, building self-supervised models and constructing an ensemble.

The details of this project can be found in the [poster](poster.pdf).

## File Structure

- preprocessing (Files for preprocessing the data)
  - Supervised Preprocessing.ipynb - Split the PTB and MIT-BIH datasets for training and testing and save the processed data in files.
  - Unsupervised Preprocessing.ipynb - Apply transformations to the MIT dataset, label the data, split them for training and testing and store in files.

- supervised (Files for initial experiments)
  - MITBIH supervised models.ipynb
  - PTB supervised models.ipynb

- representational (Files for main implementation)
  - Representational Models.ipynb - Trains the self-supervised models. This file must be run after Unsupervised Preprocessing.ipynb
  - MITBIH Transfer Models.ipynb - Experiment with the transfer models for MIT-BIH. This file must be run after Representational Models.ipynb and Supervised Preprocessing.ipynb
  - PTB Transfer Models.ipynb - Experiment with the transfer models for PTB. This file must be run after Representational Models.ipynb and Supervised Preprocessing.ipynb
  - MITBIH Transfer Model Ensemble.ipynb - Experiment with the final ensemble for MIT-BIH. This file must be run after MITBIH Transfer Models.ipynb and Supervised Preprocessing.ipynb
  - PTB Transfer Model Ensemble.ipynb - Experiment with the final ensemble for PTB. This file must be run after PTB Transfer Models.ipynb and Supervised Preprocessing.ipynb

## Instruction
To run the preprocessing, you must make data directory and include the following csv files from [Kaggle](https://www.kaggle.com/shayanfazeli/heartbeat):
-	mitbih_test.csv
-	mitbih_train.csv
-	ptbdb_abnormal.csv
-	ptbdb_normal.csv

Preprocessing files must be run before experimenting with models.