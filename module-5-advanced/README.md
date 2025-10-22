# Module 5: Advanced DevOps Topics

This module covers advanced DevOps scenarios where prompt engineering with Cursor can be particularly powerful, including Kubernetes, monitoring, security, and infrastructure automation.

## Learning Objectives
- Generate Kubernetes manifests and Helm charts using AI assistance
- Create comprehensive monitoring and observability configurations
- Implement infrastructure automation with Ansible
- Design security-focused DevOps workflows

## Prerequisites
- Understanding of container orchestration concepts
- Basic knowledge of Kubernetes and Helm
- Experience with monitoring and logging concepts
- Familiarity with infrastructure automation tools

## Advanced Topics Covered

### 5.1 Kubernetes Deployments with Cursor

#### Exercise: Generate Complete Kubernetes Application Stack

**Scenario**: Deploy a microservices application to Kubernetes with proper configuration management.

**ASK Mode Prompt**:
```
Analyze this Kubernetes deployment manifest. What improvements can be made for production readiness, security, and observability?
```

Sample output (ASK analysis snippet):

```
Analysis: Add resource limits, readiness/liveness probes, non-root user, RBAC rules, and Prometheus annotations for metrics scraping.
```

**Plan Mode Prompt**:
```
Plan a Kubernetes deployment for a Node.js microservices application with:
- Frontend service (React app)
- Backend API service (Node.js)
- Database service (PostgreSQL)
- Redis for caching
- Ingress controller with SSL termination
- Service mesh configuration
- Resource quotas and limits
- Health checks and probes
- Monitoring and logging integration
```

Sample output (Plan mode snippet):

```
Plan: frontend + backend + db + redis, ingress with TLS, resource quotas, HPA for backend, Prometheus & Grafana for monitoring.
```

**Agent Mode Prompt**:
```
Create a complete Kubernetes deployment configuration for a Node.js microservices application with the following requirements:

Namespace: devops-demo
Services:
- Frontend: React application served by nginx
- API: Node.js Express backend
- Database: PostgreSQL with persistent storage
- Cache: Redis cluster

Infrastructure:
- ConfigMaps for environment configuration
- Secrets for sensitive data
- PersistentVolumeClaims for data storage
- NetworkPolicies for security
- ResourceQuotas and LimitRanges
- HorizontalPodAutoscalers for scaling

Monitoring:
- ServiceMonitor for Prometheus
- Pod annotations for metrics scraping
- Health check endpoints

Security:
- Non-root containers
- Security contexts
- Network policies
- RBAC configuration

Include Helm chart structure with values.yaml for different environments.
```

Sample output (Agent mode snippet):

```
Generated artifacts: kubernetes manifests, helm chart skeleton, prometheus configs, ansible playbooks, and IaC scanning notes.
```

### 5.2 Infrastructure Monitoring and Observability

#### Exercise: Create Comprehensive Monitoring Stack

**Scenario**: Set up end-to-end monitoring for cloud infrastructure and applications.

**Use this comprehensive prompt**:
```
Create a complete monitoring and observability setup using Prometheus, Grafana, and ELK stack with:

Infrastructure Monitoring:
- Prometheus configuration for Azure metrics collection
- Node exporters and custom metrics
- Alert rules for critical infrastructure issues
- Grafana dashboards for infrastructure overview

Application Monitoring:
- Application Performance Monitoring (APM)
- Custom application metrics
- Distributed tracing setup
- Log aggregation and analysis

Alerting:
- AlertManager configuration
- Slack/PagerDuty integration
- Escalation policies
- Runbook automation

Logging:
- ELK stack deployment (Elasticsearch, Logstash, Kibana)
- Log pipeline configuration
- Log retention policies
- Security log analysis

Include Terraform for infrastructure and Kubernetes manifests for deployment.
```

### 5.3 Infrastructure Automation with Ansible

#### Exercise: Generate Ansible Playbooks for Multi-Environment Deployment

**Scenario**: Automate the deployment and configuration of applications across multiple environments.

**Use this comprehensive prompt**:
```
Create Ansible playbooks for infrastructure automation with the following requirements:

Inventory Management:
- Development, staging, and production environments
- Group variables for environment-specific configurations
- Dynamic inventory for cloud resources

Configuration Management:
- Node.js application deployment
- Nginx reverse proxy configuration
- SSL certificate management with Let's Encrypt
- System hardening and security updates

Database Management:
- PostgreSQL installation and configuration
- Database schema migrations
- Backup and restore procedures
- Performance tuning

Monitoring Setup:
- Prometheus and Grafana installation
- Application monitoring configuration
- Log management setup

Security:
- Firewall configuration
- SSH key management
- User management and access control
- Security scanning integration

Include:
- ansible.cfg configuration
- Requirements.yml for roles and collections
- Group and host variable files
- Vault files for sensitive data
- Documentation for running playbooks
```

### 5.4 Security-Focused DevOps Workflows

#### Exercise: Implement Security-First DevOps Pipeline

**Scenario**: Create a security-focused CI/CD pipeline with comprehensive security scanning and compliance checks.

**Use this comprehensive prompt**:
```
Create a security-focused DevOps pipeline with comprehensive security integration:

Static Security Analysis:
- SAST (Static Application Security Testing) integration
- Dependency vulnerability scanning
- Secret detection and prevention
- Infrastructure as Code security scanning

Dynamic Security Testing:
- DAST (Dynamic Application Security Testing)
- Container image vulnerability scanning
- Runtime security monitoring
- Network security testing

Compliance and Governance:
- GDPR compliance checks
- SOC 2 compliance automation
- Security policy enforcement
- Audit trail generation

Security Workflows:
- Security incident response automation
- Automated security patching
- Compliance reporting
- Security training integration

Infrastructure Security:
- Azure Security Center integration
- Network security group automation
- Identity and access management
- Encryption key management

Include GitHub Actions workflows, Terraform security modules, and documentation for security processes.
```

## Directory Structure

```
module-5-advanced/
├── kubernetes/
│   ├── manifests/
│   ├── helm-charts/
│   └── operators/
├── monitoring/
│   ├── prometheus/
│   ├── grafana/
│   └── elk/
├── automation/
│   ├── ansible/
│   └── terraform-modules/
├── security/
│   ├── policies/
│   ├── scanning/
│   └── compliance/
└── docs/
    ├── kubernetes-guide.md
    ├── monitoring-setup.md
    └── security-best-practices.md
```

## Advanced Prompting Techniques

### 1. Context-Rich Prompts
When working with complex infrastructure, provide detailed context:
- Current environment specifications
- Compliance requirements
- Performance requirements
- Security constraints

### 2. Iterative Refinement
Use follow-up prompts to build upon previous results:
- "Add monitoring to the previous Kubernetes deployment"
- "Enhance security in the generated Ansible playbooks"
- "Optimize the monitoring stack for cost efficiency"

### 3. Integration Prompts
Create prompts that integrate multiple technologies:
- "Integrate the Kubernetes deployment with the monitoring stack"
- "Add security scanning to the Ansible automation"
- "Create a complete CI/CD pipeline that includes all security checks"

## Best Practices for Advanced Scenarios

### Security Considerations
- Always include security best practices in prompts
- Specify compliance requirements upfront
- Include secret management in all configurations

### Performance and Scalability
- Define performance requirements in prompts
- Include auto-scaling configurations
- Specify resource limits and quotas

### Maintainability
- Request modular and reusable configurations
- Include comprehensive documentation
- Specify version compatibility and upgrade paths

### Cost Optimization
- Include cost optimization in infrastructure prompts
- Request monitoring for resource usage
- Specify cleanup and resource management

## Testing Advanced Configurations

1. **Validation**: Use Cursor to generate validation steps
2. **Testing**: Create test scenarios for different configurations
3. **Monitoring**: Set up monitoring to verify functionality
4. **Documentation**: Generate comprehensive documentation

## Conclusion

This module demonstrates the power of prompt engineering in complex DevOps scenarios. By providing detailed context and using the right prompting techniques, you can generate sophisticated, production-ready infrastructure configurations that would typically require extensive manual work.

The key to success with advanced DevOps prompting is:
- Providing comprehensive context
- Being specific about requirements
- Iterating and refining based on results
- Integrating security, monitoring, and best practices from the start

## Actions performed (files added)

I added example Kubernetes manifests, a Helm chart skeleton, Prometheus configuration, Ansible playbook scaffold, and an IaC scanning note to help you test the advanced scenarios.

Files added:

- `kubernetes/manifests/deployment-api.yaml` — example Deployment
- `kubernetes/manifests/service-api.yaml` — example Service
- `kubernetes/helm-charts/devops-demo/Chart.yaml` — Helm chart metadata
- `kubernetes/helm-charts/devops-demo/values.yaml` — Helm chart values
- `monitoring/prometheus/prometheus.yml` — simple Prometheus scrape config
- `automation/ansible/playbook.yml` — Ansible playbook scaffold
- `security/scanning/iac-scan.md` — instructions for scanning IaC

How to test locally:

Kubernetes manifests:

```powershell
kubectl apply -f module-5-advanced/kubernetes/manifests/deployment-api.yaml
kubectl apply -f module-5-advanced/kubernetes/manifests/service-api.yaml
kubectl get pods -n devops-demo
```

Sample output (kubectl apply):

```
deployment.apps/api-deployment created
service/api-service created
```

Sample output (kubectl get pods -n devops-demo):

```
NAME                                READY   STATUS    RESTARTS   AGE
api-deployment-5f7c9d8d6f-abc12     1/1     Running   0          30s
api-deployment-5f7c9d8d6f-def34     1/1     Running   0          30s
```

Helm chart:

```powershell
helm lint module-5-advanced/kubernetes/helm-charts/devops-demo
helm template my-release module-5-advanced/kubernetes/helm-charts/devops-demo
```

Sample output (helm template):

```
# Source: devops-demo/templates/deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
    name: my-release-devops-demo
...
```

Prometheus:

Place `prometheus.yml` into your Prometheus config and restart the server; confirm the `kubernetes-pods` job appears in the UI.

Ansible:

```powershell
ansible-playbook -i inventory.ini module-5-advanced/automation/ansible/playbook.yml --check
```

Sample output (ansible-playbook --check):

```
PLAY [all] *********************************************************************
TASK [Gathering Facts] *********************************************************
ok: [server1]
TASK [deploy app] *************************************************************
changed: [server1]

PLAY RECAP *********************************************************************
server1                   : ok=5    changed=2    unreachable=0    failed=0
```

IaC Scanning:

Run `tfsec .` or `checkov -d .` in your Terraform directories to scan for security issues.
