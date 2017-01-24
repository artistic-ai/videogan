REMOTE_HOST ?= ec2-54-174-190-147.compute-1.amazonaws.com
ROMOTE_DIR = /root/artistic-ai/videogan


scp-vis:
    scp -i ~/.ssh/MykhailoZiatin.pem ubuntu@$(REMOTE_HOST):$(ROMOTE_DIR)/vis.zip . && \
    unzip vis.zip

pack-vis:
    zip vis.zip vis/*
