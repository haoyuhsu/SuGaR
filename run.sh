# scene_name: garden, counter, donuts, figurines, ramen, teatime
# bash train.sh \
#   SCENE_NAME=$1
#   LAMBDA_NORMAL=$2  (default: 0.01)
#   POISSON_DEPTH=$3  (default: 10)
#   VERTICES_DENSITY_QUANTILE=$5 (default: 0.1)
#   NORMAL_CONSISTENCY_FACTOR=$4 (default: 0.1)

# Try different hyperparameters on different scenes
# LAMBDA_NORMAL: 0.01*, 0.1
# POISSON_DEPTH: 10*, 9
# VERTICES_DENSITY_QUANTILE: 0.1*, 0.0
# NORMAL_CONSISTENCY_FACTOR: 0.1*

bash train.sh garden

bash train.sh counter

bash train.sh donuts

bash train.sh figurines

bash train.sh ramen

bash train.sh teatime 0.1 9 0.0 0.1
