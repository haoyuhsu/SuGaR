SCENE_NAME=garden
FOLDER_ROOT_NAME=${SCENE_NAME}_lnorm0.0_imgsize1920

python extract_refined_mesh_with_texture.py \
    -s ../datasets/colmap/${SCENE_NAME} \
    -c ./output/${FOLDER_ROOT_NAME}/ \
    -i 7000 \
    --coarse_mesh_path ./output/${FOLDER_ROOT_NAME}/coarse-mesh/sugarmesh_3Dgs7000_densityestim02_sdfnorm02_level03_decim1000000.ply \
    --refined_model_path ./output/${FOLDER_ROOT_NAME}/refined/sugarfine_3Dgs7000_densityestim02_sdfnorm02_level03_decim1000000_normalconsistency01_gaussperface1/15000.pt \
    -o ./output/${FOLDER_ROOT_NAME}/refined-mesh-with-post-process/ \
    --n_gaussians_per_surface_triangle 1 \
    --square_size 10 \
    --postprocess_mesh True


SCENE_NAME=playroom
FOLDER_ROOT_NAME=${SCENE_NAME}_lnorm0.0_imgsize1920

python extract_refined_mesh_with_texture.py \
    -s ../datasets/colmap/${SCENE_NAME} \
    -c ./output/${FOLDER_ROOT_NAME}/ \
    -i 7000 \
    --coarse_mesh_path ./output/${FOLDER_ROOT_NAME}/coarse-mesh/sugarmesh_3Dgs7000_densityestim02_sdfnorm02_level03_decim1000000.ply \
    --refined_model_path ./output/${FOLDER_ROOT_NAME}/refined/sugarfine_3Dgs7000_densityestim02_sdfnorm02_level03_decim1000000_normalconsistency01_gaussperface1/15000.pt \
    -o ./output/${FOLDER_ROOT_NAME}/refined-mesh-with-post-process/ \
    --n_gaussians_per_surface_triangle 1 \
    --square_size 10 \
    --postprocess_mesh True


SCENE_NAME=counter
FOLDER_ROOT_NAME=${SCENE_NAME}_lnorm0.0_imgsize1920

python extract_refined_mesh_with_texture.py \
    -s ../datasets/colmap/${SCENE_NAME} \
    -c ./output/${FOLDER_ROOT_NAME}/ \
    -i 7000 \
    --coarse_mesh_path ./output/${FOLDER_ROOT_NAME}/coarse-mesh/sugarmesh_3Dgs7000_densityestim02_sdfnorm02_level03_decim1000000.ply \
    --refined_model_path ./output/${FOLDER_ROOT_NAME}/refined/sugarfine_3Dgs7000_densityestim02_sdfnorm02_level03_decim1000000_normalconsistency01_gaussperface1/15000.pt \
    -o ./output/${FOLDER_ROOT_NAME}/refined-mesh-with-post-process/ \
    --n_gaussians_per_surface_triangle 1 \
    --square_size 10 \
    --postprocess_mesh True