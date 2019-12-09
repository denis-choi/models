#! /bin/sh

cd ../../..

gcloud ai-platform jobs submit training $JOB_NAME \
	--packages dist/object_detection-0.1.tar.gz,slim/dist/slim-0.1.tar.gz,../../cocoapi/pycocotools-2.0.tar.gz \
	--module-name object_detection.model_main \
	--job-dir $OUTPUT_PATH \
	--runtime-version 1.14 \
	--region $REGION \
	--config object_detection/albatross/job_albatross_d1/cloud.yml \
	-- \
	--train_dir=$OUTPUT_PATH \
	--pipeline_config_path=gs://${GCS_BUCKET}/data/ssd_mobilenet_v2_coco.config

