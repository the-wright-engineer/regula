# Copyright 2020 Fugue, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
package tests.rules.gcp_compute_subnet_private_google_access

import data.fugue.regula

test_gcp_compute_subnet_private_google_access {
  report := regula.report with input as mock_input
  resources := report.rules.gcp_compute_subnet_private_google_access.resources

  resources["google_compute_subnetwork.valid-subnet-1"].valid == true
  resources["google_compute_subnetwork.invalid-subnet-1"].valid == false
  resources["google_compute_subnetwork.invalid-subnet-2"].valid == false
}