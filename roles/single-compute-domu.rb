name "single-compute-domu"
description "Nova compute (with non-HA Controller)"
override_attributes(
  "nova" => {
    "compute" => {
      "connection_type" => "xenapi",
    }
  }
)
run_list(
  "role[single-compute]"
)

### default["nova"]["compute"]["xenapi"]["connection_url"] = "http://xenapi.example.com/PLEASE_CHANGE_ATTRIBUTE/nova.compute.xenapi.connection_url"
### default["nova"]["compute"]["xenapi"]["connection_username"] = "PLEASE_CHANGE_ATTRIBUTE:nova.compute.xenapi.connection_username"
### default["nova"]["compute"]["xenapi"]["connection_password"] = "PLEASE_CHANGE_ATTRIBUTE:nova.compute.xenapi.connection_password"
### default["nova"]["compute"]["xenapi"]["agent_path"] = "/usr/sbin/xe-update-networking"
### default["nova"]["compute"]["xenapi"]["connection_concurrent"] = 5
### default["nova"]["compute"]["xenapi"]["log_instance_actions"] = false
### default["nova"]["compute"]["xenapi"]["login_timeout"] = 10 # seconds
