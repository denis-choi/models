#! /bin/sh

cd ../../..
gcloud ai-platform jobs submit training $JOB_NAME \
	--job-dir $OUTPUT_PATH \
	--python-version 3.5 \
	--runtime-version 1.8 \
	--config object_detection/albatross/job_albatross_d1/cloud.yml \
	--module-name object_detection.model_main \
	--packages dist/object_detection-0.1.tar.gz,slim/dist/slim-0.1.tar.gz,../../cocoapi/pycocotools-2.0.tar.gz \
	--region $REGION \
	-- \
	--pipeline_config_path=gs://${GCS_BUCKET}/data/ssd_mobilenet_v2_coco.config

