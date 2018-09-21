# terraform-vra-apache

This is the vRA Apache module

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
| resilience_zone | Enter which RZ for the server (RZ3 and RZ5 only available if environment of server and vRA = PROD) | RZ3<br/>RZ5<br/>None | Yes |
| reservation_policy_name | Choose the host in the RZ (Only needed if you choose RZ3 or RZ5 in prod vRA with a prod server) | rz003mn011v2gc4c02gn<br/>rz005mn011v2gc1c01gn<br/>rz003mn053v2gc4c02gn<br/>rz005mn053v2gc1c01gn | No |
| reservation_policy_id | Enter the ID for the proper Datacenter (See the proper table below for more details) | Production vRA IDs: <br/>4000c223-3192-41a4-bb07-32818eee3258<br/><br/>c0b92a7c-5da6-4b45-83f3-4833a525245e<br/><br/>30c6c3a2-926b-4bbf-92b1-3be8400bcef0<br/><br/>c0b92a7c-5da6-4b45-83f3-4833a525245e<br/><br/>Stage vRA IDs:<br/><br/>95c5f016-8c6d-4015-8390-4eef2da71b61<br/><br/>d3b736ac-ec2c-4dd1-9b71-ccde0a355993 | Yes |
| ebiz_description | Description of ebiz necessity | "We need apache for X, Y, and Z." | Yes |
| ebiz_mui | Enter the MUI for the ebiz instance | `<EBIZ ID>` | Yes |
| ebiz_mui_selection | Enter the MUI for the ebiz instance | `<EBIZ ID>` | Yes |
| ebiz_apache_version | Choose the apache version | 2.2/2.4 | Yes |
| LOB | Enter the Line of Business | Community & State<br/>Employer & Individual and Clinical Services<br/>Medicare & Retirement<br/>Optum Call Center Services (CCS)<br/>Optum Corporate and Shared Services<br/>Optum ET<br/>OptumInsight and PEDS<br/>OptumRx<br/>Provider<br/>UHC Corporate and Shared Svcs<br/>UHC Shared Services<br/>UHG Corp | Yes |
| count | Choose the number of servers needed | 1-10 | Yes |

## How to set up RZ for Stage vRA

If you are to choose 'None' then you need to only set 'reservation_policy_name' and 'reservation_policy_id'
See which values you should be choosing using this table

| Datacenter | RZ | Policy Name | Policy ID |
|------------|----|-------------|-----------|
| CTC | None | UCI016SILO03 | 95c5f016-8c6d-4015-8390-4eef2da71b61 |
| ELR | None | UCI016SILO09 | c0b92a7c-5da6-4b45-83f3-4833a525245e |

Author: jordan.east@optum.com

## How to set up RZ for Production vRA


If you are to choose 'RZ3' or 'RZ5' then you need to set 'reservation_policy_name' and reservation_policy_id'
If you are to choose 'None' then you need to only set 'reservation_policy_id'
See which values you should be choosing using this table

| Datacenter | RZ | Policy Name | Policy ID |
|------------|----|-------------|-----------|
| CTC | RZ3 | rz003mn011v2gc4c02gn | 4000c223-3192-41a4-bb07-32818eee3258 |
| CTC | RZ5 | rz005mn011v2gc1c01gn | c0b92a7c-5da6-4b45-83f3-4833a525245e |
| ELR | RZ3 | rz003mn053v2gc4c02gn | 30c6c3a2-926b-4bbf-92b1-3be8400bcef0 |
| ELR | RZ5 | rz005mn053v2gc1c01gn | c0b92a7c-5da6-4b45-83f3-4833a525245e |

Author: jordan.east@optum.com