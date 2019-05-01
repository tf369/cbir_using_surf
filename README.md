# cbir_using_surf
Content-Based Image Retrieval (CBIR) is a challenging task which retrieves the similar images from the large database. Most of the CBIR system uses the low-level features such as color, texture and shape to extract the features from the images. In Recent years the Interest points are used to extract the most similar images with different view point and different transformations. In this project the SURF is combined with the color feature to improve the retrieval accuracy. SURF is fast and robust interest points detector/descriptor which is used in many computer vision applications. To improve the performance of the system the SURF is combined with Color Moments since SURF works only on gray scale images. The KD-tree with the Best Bin First (BBF) search algorithm is to index and match the similarity between the features of the images. Finally, Voting Scheme algorithm is used to rank and retrieve the matched images from the database.