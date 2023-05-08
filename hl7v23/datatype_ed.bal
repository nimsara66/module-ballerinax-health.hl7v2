// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com).

// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerinax/health.hl7v2;

# Encapsulated Data.
#
# + ed1 - Source Application  
# + ed2 - Type Of Data  
# + ed3 - Data Subtype  
# + ed4 - Data Subtype  
# + ed5 - Data
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type ED record {
    *hl7v2:CompositeType;
    HD ed1 = {};
    ID ed2 = "";
    ID ed3 = "";
    ID ed4 = "";
    ST ed5 = "";
};
