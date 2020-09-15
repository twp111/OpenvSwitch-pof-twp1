#!/bin/bash
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at:
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

set -o xtrace

# We use the LOCAL port of br-eth1 to simulate the port connected to network.
# expect to arrive on lport5 (ofport 6) and lport6 (ofport 8)
ovs-appctl ofproto/trace br-eth1 in_port=LOCAL,dl_src=00:00:00:00:00:07,dl_dst=ff:ff:ff:ff:ff:ff,dl_vlan=101 -generate
