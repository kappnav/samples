#!/bin/bash
#*****************************************************************
#*
#* Copyright 2019 IBM Corporation
#*
#* Licensed under the Apache License, Version 2.0 (the "License");
#* you may not use this file except in compliance with the License.
#* You may obtain a copy of the License at

#* http://www.apache.org/licenses/LICENSE-2.0
#* Unless required by applicable law or agreed to in writing, software
#* distributed under the License is distributed on an "AS IS" BASIS,
#* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#* See the License for the specific language governing permissions and
#* limitations under the License.
#*
#*****************************************************************
# install music-service sample
#
# install.sh <namespace>
#
s="music-service"
ns=$1

echo Install sample $s to namespace $ns
kubectl create namespace $ns 
echo kubectl apply -f . -n $ns 
kubectl apply -f . -n $ns 

kubectl create namespace api-namespace
kubectl create -f api-namespace/streaming-api.yaml -n api-namespace

kubectl create namespace ui-namespace
kubectl create -f ui-namespace/web-ui.yaml -n ui-namespace