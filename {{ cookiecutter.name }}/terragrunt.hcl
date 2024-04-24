inputs = merge(
    fileexists("${get_terragrunt_dir()}/terraform.tfvars.yaml") ? yamldecode(file("${get_terragrunt_dir()}/terraform.tfvars.yaml")) : {},
    fileexists("${get_terragrunt_dir()}/terraform.tfvars.sops.yaml") ? yamldecode(sops_decrypt_file("${get_terragrunt_dir()}/terraform.tfvars.sops.yaml")) : {},
)
