#!/bin/bash

./urbit -ctx comet 2>&1 | tee ./urbit-data/log.txt

(sleep 5 && \
python ./herb ./comet -d "our" 2>&1 | tee ./urbit-data/id.txt && \
python ./herb ./comet -d "+code" 2>&1 | tee ./urbit-data/id.txt) & \
(./urbit -t comet 2>&1 | tee ./urbit-data/log.txt)