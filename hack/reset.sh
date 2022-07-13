#!/bin/bash
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


export IMG=gcr.io/my-gcp-project/gke-prober:latest
export PROJECT_ID=my-gcp-project

kpt fn eval --truncate-output=false --image gcr.io/kpt-fn/apply-setters:v0.2 manifests -- project=my-gcp-project namespace=gke-prober-system