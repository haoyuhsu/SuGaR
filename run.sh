# scene_name: garden, counter, (donuts, figurines, ramen, teatime --> Optional)
# bash train.sh \
#   SCENE_NAME=$1
#   LAMBDA_NORMAL=$2  (default: 0.01)
#   MAX_IMG_SIZE=$3   (default: 1920)

# Try different hyperparameters on different scenes
# LAMBDA_NORMAL: 0.01*, 0.1
# MAX_IMG_SIZE: 1920*, 1600. 1080

# bash train.sh garden 0.01 1920

# bash train.sh garden 0.0 1920

# bash train.sh counter 0.01 1920

# bash train.sh counter 0.0 1920

# bash train.sh donuts 0.0 1920

# bash train.sh figurines 0.0 1920

# bash train.sh ramen 0.0 1920

# bash train.sh teatime 0.0 1920

# bash train.sh dozer_nerfgun_waldo 0.0 1920

# bash train.sh espresso 0.0 1920

# bash train.sh playground 0.0 1920

# bash train.sh drjohnson 0.0 1920

# bash train.sh playroom 0.0 1920

# bash train.sh bonsai 0.0 1920

# bash train.sh shoe_rack 0.0 1920

# bash train.sh waldo_kitchen 0.0 1920

# bash train.sh bedroom 0.0 1920 # not completed

# bash train.sh garden 0.0 1600

# bash train.sh garden 0.0 1080