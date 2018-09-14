# terraform-vra-rhel6

This is the vRA Rhel6 module

## Inputs

| Name | Description | Value(s) | Required |
|------|-------------|--------|----------|
| environment | Choose the environment of the server | DEV<br/>TEST<br/>STG<br/>PROD | Yes |
| network_zone | Choose the zone of the server | intranet | Yes |
| interface_zone | Choose the interface zone | Intranet | Yes |
| cpu | Choose the amount of CPU needed | 1-12 | Yes |
| memory | Choose the amount of RAM needed | 2048-65536 | Yes |
| datacenter | Choose the datacenter of the server | CTC<br/>ELR | Yes |
| askid | Choose the askid associated with the server | `<Application ID>` | Yes |
| dr_code | Choose the DR needed for the server | DR-101 | Yes |
| unixid_search | Enter the Unix ID of the user who needs access to the server | `<UNIX ID>` | Yes |
| unixid | Enter the Unix ID of the user who needs access to the server (This should be the same value as unixid_search) | `<UNIX ID>` | Yes |
| disk | Enter the amount of disk needed | 1-1024 | No |
| resilience_zone | Enter which RZ for the server (RZ3 and RZ5 only available if environment = PROD) | RZ3<br/>RZ5<br/>None | Yes |
| reservation_policy_name | Choose the host in the RZ (Only available if you choose RZ3 or RZ5) | rz003mn011v2gc4c02gn<br/>rz005mn011v2gc1c01gn<br/>rz003mn053v2gc4c02gn<br/>rz005mn053v2gc1c01gn | No |
| reservation_policy_id | Enter the ID for the host given in 'reservation_policy_name' | 4000c223-3192-41a4-bb07-32818eee3258<br/><br/>c0b92a7c-5da6-4b45-83f3-4833a525245e<br/><br/>30c6c3a2-926b-4bbf-92b1-3be8400bcef0<br/><br/>c0b92a7c-5da6-4b45-83f3-4833a525245e | No |
| ebiz_description | Description of ebiz necessity | "We need apache for X, Y, and Z." | Yes |
| ebiz_mui | Enter the MUI for the ebiz instance | `<EBIZ ID>` | Yes |
| ebiz_mui_selection | Enter the MUI for the ebiz instance | `<EBIZ ID>` | Yes |
| ebiz_apache_version | Choose the apache version | 2.2/2.4 | Yes |
| LOB | Enter the Line of Business | Community & State<br/>Employer & Individual and Clinical Services<br/>Medicare & Retirement<br/>Optum Call Center Services (CCS)<br/>Optum Corporate and Shared Services<br/>Optum ET<br/>OptumInsight and PEDS<br/>OptumRx<br/>Provider<br/>UHC Corporate and Shared Svcs<br/>UHC Shared Services<br/>UHG Corp | Yes |
| count | Choose the number of servers needed | 1-10 | Yes |

## How to set up RZ 

!! Note this for production boxes only !!

If you are to choose 'RZ3' or 'RZ5' then you need to set 'reservation_policy_name' and reservation_policy_id'
See which values you should be choosing using this table

| Datacenter | RZ | Policy Name | Policy ID |
|------------|----|-------------|-----------|
| CTC | RZ3 | rz003mn011v2gc4c02gn | 4000c223-3192-41a4-bb07-32818eee3258 |
| CTC | RZ5 | rz005mn011v2gc1c01gn | c0b92a7c-5da6-4b45-83f3-4833a525245e |
| ELR | RZ3 | rz003mn053v2gc4c02gn | 30c6c3a2-926b-4bbf-92b1-3be8400bcef0 |
| ELR | RZ5 | rz005mn053v2gc1c01gn | c0b92a7c-5da6-4b45-83f3-4833a525245e |

Author: jordan.east@optum.com