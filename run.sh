# scene_name: garden, counter, (donuts, figurines, ramen, teatime --> Optional)
# bash train.sh \
#   SCENE_NAME=$1
#   LAMBDA_NORMAL=$2  (default: 0.01)
#   MAX_IMG_SIZE=$3   (default: 1920)

# Try different hyperparameters on different scenes
# LAMBDA_NORMAL: 0.01*, 0.1
# MAX_IMG_SIZE: 1920*, 1600. 1080

bash train.sh garden 0.0 1920

bash train.sh counter 0.0 1920

bash train.sh playroom 0.0 1920