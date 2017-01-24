.PHONY: scp-vis pack-vis generate generate-default

REMOTE_HOST ?= ec2-54-174-190-147.compute-1.amazonaws.com
SSH_KEY ?= ~/.ssh/MykhailoZiatin.pem


generate: generate-default pack-vis

generate-default:
	th generate.lua

scp-vis:
	scp -i $(SSH_KEY) ubuntu@$(REMOTE_HOST):vis.zip . && \
	unzip vis.zip

pack-vis:
	zip vis.zip vis/* && \
	mv vis.zip /home/ubuntu/
