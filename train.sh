SCENE_NAME=$1
LAMBDA_NORMAL=$2
POISSON_DEPTH=$3
VERTICES_DENSITY_QUANTILE=$4
NORMAL_CONSISTENCY_FACTOR=$5

FOLDER_ROOT_NAME=${SCENE_NAME}_lnorm${LAMBDA_NORMAL}_poisson${POISSON_DEPTH}_quantile${VERTICES_DENSITY_QUANTILE}_normalconsistency${NORMAL_CONSISTENCY_FACTOR}

# Step 1: training original gaussian splatting model
python gaussian_splatting/train.py \
    -s ../datasets/colmap/${SCENE_NAME} \
    --iterations 7000 \
    -m ./output/${FOLDER_ROOT_NAME}/ \
    --lambda_normal ${LAMBDA_NORMAL} \
    --use_wandb

# Step 2: training coarse sugar model
python train_coarse_density.py \
    -c ./output/${FOLDER_ROOT_NAME}/ \
    -s ../datasets/colmap/${SCENE_NAME} \
    -o ./output/${FOLDER_ROOT_NAME}/coarse/ \
    -i 7000 \
    --lambda_normal ${LAMBDA_NORMAL}

# Step 3: extract coarse mesh from coarse sugar model
python extract_mesh.py \
    -s ../datasets/colmap/${SCENE_NAME} \
    -c ./output/${FOLDER_ROOT_NAME}/ \
    -i 7000 \
    --coarse_model_path ./output/${FOLDER_ROOT_NAME}/coarse/sugarcoarse_3Dgs7000_densityestim02_sdfnorm02/15000.pt \
    --surface_level 0.3 \
    --decimation_target 1_000_000 \
    -o ./output/${FOLDER_ROOT_NAME}/coarse-mesh/ \
    --poisson_depth ${POISSON_DEPTH} \
    --vertices_density_quantile ${VERTICES_DENSITY_QUANTILE}

# Step 4: training refined sugar model
python train_refined.py \
    -s ../datasets/colmap/${SCENE_NAME} \
    -c ./output/${FOLDER_ROOT_NAME}/ \
    -i 7000 \
    -o ./output/${FOLDER_ROOT_NAME}/refined/ \
    --mesh_path ./output/${FOLDER_ROOT_NAME}/coarse-mesh/sugarmesh_3Dgs7000_densityestim02_sdfnorm02_level03_decim1000000.ply \
    --lambda_normal ${LAMBDA_NORMAL}

# Step 5: extract textured UV mesh from refined sugar model
python extract_refined_mesh_with_texture.py \
    -s ../datasets/colmap/${SCENE_NAME} \
    -c ./output/${FOLDER_ROOT_NAME}/ \
    -i 7000 \
    --coarse_mesh_path ./output/${FOLDER_ROOT_NAME}/coarse-mesh/sugarmesh_3Dgs7000_densityestim02_sdfnorm02_level03_decim1000000.ply \
    --refined_model_path ./output/${FOLDER_ROOT_NAME}/refined/sugarfine_3Dgs7000_densityestim02_sdfnorm02_level03_decim1000000_normalconsistency01_gaussperface1/15000.pt \
    -o ./output/${FOLDER_ROOT_NAME}/refined-mesh/ \
    --n_gaussians_per_surface_triangle 1 \
    --square_size 10
