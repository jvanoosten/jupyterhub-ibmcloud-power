################################################################
# Module to deploy a VM with specified applications installed
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Licensed Materials - Property of IBM
#
# ©Copyright IBM Corp. 2020
#
################################################################
#output "Access Jupyter Lab Web Server" {
#  value = "http://${module.simple_instance.ip_address}/"
#}

output "Instance_SSH_Private_Key" {
#  value = "\n${module.simple_instance.instance_ssh_private}"
  value = "\n${var.basename}-public-key"
}

