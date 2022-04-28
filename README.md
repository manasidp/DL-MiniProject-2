
The two videos considered are data_src and data_dst as included here.
Faces have already been extracted and aligned and stored in folders "a" and "b" for the data_src and data_dst videos respectively.
The model has been trained over 100000 epochs for recognizing these faces.

#to generate phtos with swapped faces we use writes_images.py

python3 writes_images.py

#the images generated are stored in saved_images folder

#to generate swapped videos we use video_writer.py program
#this part still gives us error which is to be resolved

python3 video_writer.py -original_video [video name] -model_location saved_models/model.pt -out_name myswappedvideo -decoder [either 'a' or 'b']


