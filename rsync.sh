#!/usr/bin/env bash


# Copyright © 2022 Anggit M Ginanjar <anggit@isi.co.id> from PT Infinys System Indonesia

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



# Your username
remote_username=""

# The destination or remote directory
destination=""

run_rysnc() {
	remote_address=$1

	# Use --delete option for synchronize local and remote directory
	rsync -arv $file $remote_username@$remote_address:$destination --delete
}

vm=$1
file=$2

case $vm in
	your_server_name_a)
		run_rysnc "Your_IP" $file
		;;

	your_server_name_b)
		run_rysnc "Your_IP" $file
		;;

	*)
		echo "Unknown server, VM options: your server"
		;;
esac
