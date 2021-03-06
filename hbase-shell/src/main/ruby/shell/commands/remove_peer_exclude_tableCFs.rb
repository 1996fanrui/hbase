#
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

module Shell
  module Commands
    class RemovePeerExcludeTableCFs < Command
      def help
        <<-EOF
Remove table-cfs config from the specified peer' exclude table-cfs to make them replicable
Examples:

  # remove tables / table-cfs from peer' exclude table-cfs
  hbase> remove_peer_exclude_tableCFs '2', { "table1" => [], "ns2:table2" => ["cfA", "cfB"]}
        EOF
      end

      def command(id, table_cfs)
        replication_admin.remove_peer_exclude_tableCFs(id, table_cfs)
      end

      def command_name
        'remove_peer_exclude_tableCFs'
      end
    end
  end
end
