output "ibm_cloud_private_boot_ip" {
  value = "${element(ibm_compute_vm_instance.icp-master.*.ipv4_address, 0)}"
}

output "ibm_cloud_private_master_ip" {
  value = "${element(ibm_compute_vm_instance.icp-master.*.ipv4_address, 0)}"
}

output "ICP Console load balancer DNS (external)" {
  value = "${ibm_lbaas.master-lbaas.vip}"
}

output "ICP Proxy load balancer DNS (external)" {
  value = "${ibm_lbaas.proxy-lbaas.vip}"
}

output "ICP Console URL" {
  value = "https://${ibm_lbaas.master-lbaas.vip}:8443"
}

output "ICP Registry URL" {
  value = "${ibm_lbaas.master-lbaas.vip}:8500"
}

output "ICP Kubernetes API URL" {
  value = "https://${ibm_lbaas.master-lbaas.vip}:8001"
}

output "ICP Admin Username" {
  value = "admin"
}

output "ICP Admin Password" {
  value = "${local.icppassword}"
}