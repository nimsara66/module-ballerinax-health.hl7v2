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

# Appointment Information.
#
# + name - Segment name
# + aig1 - Set ID - AIG  
# + aig2 - Segment Action Code  
# + aig3 - Resource ID  
# + aig4 - Resource Type  
# + aig5 - Resource Group
@hl7v2:SegmentDefinition {
    name: "AIG",
    required: false,
    maxReps: 1,
    fields: {
        "aig1": {
            required: true,
            length: 4,
            maxReps: 1,
            dataType: SI
        },
        "aig2": {
            required: false,
            length: 3,
            maxReps: 1,
            dataType: ID
        },
        "aig3": {
            required: false,
            length: 200,
            maxReps: 1,
            dataType: CE
        },
        "aig4": {
            required: true,
            length: 200,
            maxReps: 1,
            dataType: CE
        },
        "aig5": {
            required: false,
            length: 200,
            maxReps: -1,
            dataType: CE
        }
    }
}
public type AIG record {
    *hl7v2:Segment;
    string name = AIG_SEGMENT_NAME;
    SI aig1 = -1;
    ID aig2 = "";
    CE aig3 = {};
    CE aig4 = {};
    CE[] aig5 = [];
};

public const AIG_SEGMENT_NAME = "AIG";
