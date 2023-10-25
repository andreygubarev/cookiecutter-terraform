# Cookiecutter Template for Terragrunt

Template supports the following features:
- `tfenv` for Terraform version management
- `tgenv` for Terragrunt version management
- `sops` for secrets management
- `yaml` based configuration (for better multi-line values support)

## Usage

1. Generate your project from the project template using latest version:
```bash
cookiecutter https://github.com/andreygubarev/cookiecutter-terragrunt.git
```

2. Put your SOPS configuration into `.sops.yaml` file.

3. Encode your secrets using `sops`:
```bash
find . -name "*.tfvars.sops.yaml" | xargs sops -e -i
```

4. Put your Terraform backend configuration into `workspaces/<workspace>/terraform.tf` file.

5. Put your Terraform providers into `modules/<module>/providers.tf` file.

6. Initialize your project:
```bash
cd workspaces/<workspace>
# tfenv install
terragrunt init
terragrunt apply
```

## Reference

- Terraform: https://www.terraform.io/
- Terragrunt: https://terragrunt.gruntwork.io/
- tfenv: https://github.com/tfutils/tfenv
- tgenv: https://github.com/cunymatthieu/tgenv
- SOPS: https://github.com/getsops/sops
