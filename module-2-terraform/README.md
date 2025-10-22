# Module 2: Infrastructure as Code with Terraform

This module demonstrates how to use Cursor's AI capabilities to generate Terraform configurations for Azure cloud infrastructure.

## Learning Objectives
- Use Cursor to generate Terraform configurations for Azure resources
- Understand infrastructure planning with AI assistance
- Create modular Terraform code with best practices
- Implement security and cost optimization patterns

## Prerequisites
- Terraform installed (version 1.5+)
- Azure CLI installed and configured
- Azure subscription access
- Basic understanding of cloud infrastructure concepts

## Exercise 1: Using ASK Mode for Terraform Analysis

### Scenario
You need to understand and optimize existing Terraform configurations.

### Steps

1. **Open the sample Terraform files**:
   ```bash
   cd module-2-terraform/examples
   ```

2. **Activate ASK Mode**:
   - Press `Cmd+I` (Mac) or `Ctrl+I` (Linux/Windows)
   - Type: "Analyze this Terraform configuration. What are the security implications and potential improvements?"

3. **Follow-up prompts**:
   - "What Azure RBAC permissions are needed for this configuration?"
   - "How can we optimize costs in this infrastructure setup?"
   - "What monitoring and alerting should be added?"

Sample output (ASK analysis snippet):

```
Analysis: Ensure Contributor+ access for deployment user; recommend Log Analytics and Cost Management tags; add alerts for CPU and failed auth attempts.
```

## Exercise 2: Using Plan Mode for Infrastructure Planning

### Scenario
Plan a complete Azure infrastructure for a multi-tier web application.

### Steps

1. **Activate Plan Mode**:
   - Press `Cmd+K` (Mac) or `Ctrl+K` (Linux/Windows)
   - Type: "Plan a Terraform configuration for Azure infrastructure with:
     - Resource group in East US region
     - VNet with public and private subnets
     - Network security groups with proper rules
     - Application Gateway for load balancing
     - Key Vault for secrets management
     - Storage account for application data
     - Log Analytics workspace for monitoring"

2. **Refine the plan**:
   - "Add Terraform outputs for important resource values"
   - "Include tags for cost management and compliance"
   - "Plan for disaster recovery with backup configurations"

Sample output (Plan mode snippet):

```
Plan: resource group, vnet with two subnets, nsgs, key vault, outputs for RG and VNet IDs, validation rules for variables.
```

## Exercise 3: Using Agent Mode for Complete Infrastructure Generation

### Scenario
Generate a complete, production-ready Terraform configuration for Azure infrastructure.

### Steps

1. **Use this comprehensive prompt**:
Sample output (Agent mode snippet):

```
Generated files: main.tf, variables.tf, outputs.tf, versions.tf, modules/networking, modules/security
```
   ```
   Create a complete Terraform configuration for Azure cloud infrastructure with the following requirements:
   
   Infrastructure:
   - Resource group named "rg-devops-demo"
   - Virtual network with 10.0.0.0/16 CIDR
   - Two subnets: public (10.0.1.0/24) and private (10.0.2.0/24)
   - Network security groups with appropriate rules
   - Application Gateway in public subnet
   - App Service Plan and App Service in private subnet
   - Key Vault for secrets management
   - Storage account with private endpoint
   
   Best Practices:
   - Use variables for all configurable values
   - Include outputs for important resource IDs and endpoints
   - Add proper tagging strategy
   - Use data sources where appropriate
   - Include locals for computed values
   - Add validation rules for variables
   - Include security configurations and RBAC
   ```

2. **Create additional configurations**:
   ```
   Create a separate Terraform configuration for monitoring with:
   - Log Analytics workspace
   - Application Insights
   - Azure Monitor alerts
   - Diagnostic settings for all resources
   - Cost management alerts
   ```

## Directory Structure

```
module-2-terraform/
├── examples/
│   ├── basic-infrastructure/
│   ├── monitoring-setup/
│   └── security-configurations/
├── modules/
│   ├── networking/
│   ├── security/
│   └── monitoring/
└── terraform.tfvars.example
```

## Expected Generated Files

After completing the exercises, you should have:
- `main.tf` - Main infrastructure configuration
- `variables.tf` - Input variables
- `outputs.tf` - Output values
- `versions.tf` - Terraform and provider versions
- `terraform.tfvars` - Variable values
- Monitoring and security modules

## Validation Steps

1. **Initialize Terraform**:
   ```bash
   terraform init
   ```

2. **Validate configuration**:
   ```bash
   terraform validate
   ```

3. **Plan deployment**:
   ```bash
   terraform plan
   ```

Sample output (terraform init):

```
Initializing the backend...
Initializing provider plugins...
- Finding hashicorp/azurerm versions matching "~> 3.0"
- Installing hashicorp/azurerm v3.x.x...
...
Terraform has been successfully initialized!
```

Sample output (terraform validate):

```
Success! The configuration is valid.
```

Sample output (terraform plan --out=tfplan):

```
An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
   + create

Plan: 10 to add, 0 to change, 0 to destroy.
```

## Best Practices Demonstrated

- **Security**: Network security groups, private endpoints, RBAC
- **Cost Optimization**: Appropriate VM sizes, managed services
- **Scalability**: App Service scaling, load balancing
- **Monitoring**: Comprehensive logging and alerting
- **Code Organization**: Modules, variables, and outputs

## Next Steps

After completing Terraform configuration generation, proceed to [Module 3: CI/CD with GitHub Actions](../module-3-github-actions/README.md).

## Actions performed (updates and verification notes)

I inspected the example Terraform configuration files under `examples/` and attempted to initialize Terraform in this environment to validate syntax and providers.

- Files reviewed: `main.tf`, `variables.tf`, `outputs.tf`, `terraform.tfvars.example`.
- Attempted command:

```powershell
cd module-2-terraform/examples;
terraform init
terraform validate
```

- Result in this environment: `terraform` CLI is not installed (CommandNotFound). I could not run `terraform init` or `terraform validate` here.

How you can run these locally:

1. Install Terraform (1.5+): https://learn.hashicorp.com/tutorials/terraform/install-cli
2. Authenticate with Azure CLI (if planning to apply):

```powershell
az login
az account set --subscription "<your-subscription-id>"
```

3. Initialize and validate:

```powershell
cd module-2-terraform/examples;
terraform init
terraform validate
terraform plan -out=tfplan
```

Expected outputs:

- `terraform init` should download the `azurerm` provider and initialize the working directory.
- `terraform validate` should report `Success! The configuration is valid.` if no issues.
- `terraform plan` will produce an execution plan or indicate missing credentials if not authenticated with Azure.

Notes:
- The example config references `random_string` and `data.azurerm_client_config` which require provider initialization and appropriate permissions. When running `terraform plan`, ensure `az login` has been performed and the account has sufficient RBAC permissions.
- If you'd like, I can create a small script `verify.sh` or a PowerShell script to automate these checks on your machine.

