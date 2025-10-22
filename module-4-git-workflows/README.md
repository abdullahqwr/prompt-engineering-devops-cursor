# Module 4: Git and GitHub Workflows

This module demonstrates how to use Cursor's AI capabilities to create and optimize Git workflows, including branch strategies, automated processes, and collaboration patterns.

## Learning Objectives
- Design effective Git branching strategies using AI assistance
- Create automated Git workflows for code quality and collaboration
- Implement GitHub-specific features and integrations
- Optimize team collaboration and code review processes

## Prerequisites
- Git installed and configured
- GitHub account with repository access
- Basic understanding of Git concepts and workflows
- Understanding of team collaboration patterns

## Exercise 1: Using ASK Mode for Workflow Analysis

### Scenario
You need to understand and improve existing Git workflows and team collaboration patterns.

### Steps

1. **Analyze current workflow**:
   ```bash
   cd module-4-git-workflows/examples
   ```

2. **Activate ASK Mode**:
   - Press `Cmd+I` (Mac) or `Ctrl+I` (Linux/Windows)
   - Type: "Analyze this Git workflow configuration. What are the potential improvements for team collaboration and code quality?"

3. **Follow-up prompts**:
   - "What branching strategy would work best for a team of 10 developers?"
   - "How can we improve the pull request review process?"
   - "What automation can be added to reduce manual work?"

Sample output (ASK analysis snippet):

```
Analysis: Use GitFlow with protected main and develop; require 2 reviewers; enable auto-labeling and dependabot.
```

## Exercise 2: Using Plan Mode for Workflow Design

### Scenario
Plan a comprehensive Git and GitHub workflow for a DevOps team.

### Steps

1. **Activate Plan Mode**:
   - Press `Cmd+K` (Mac) or `Ctrl+K` (Linux/Windows)
   - Type: "Plan a Git and GitHub workflow for a DevOps team with:
     - GitFlow branching strategy adapted for infrastructure
     - Automated PR templates and checks
     - Code review requirements and automation
     - Integration with CI/CD pipelines
     - Issue and project management integration
     - Release management and changelog automation"

2. **Refine the plan**:
   - "Add semantic versioning for infrastructure releases"
   - "Include automated dependency updates"
   - "Plan for hotfix and emergency deployment workflows"

Sample output (Plan mode snippet):

```
Plan: Branch rules, PR templates, semantic-release pipeline, Dependabot with auto PRs and required CI checks.
```

## Exercise 3: Using Agent Mode for Complete Workflow Implementation

### Scenario
Generate a complete Git workflow setup with all necessary configurations and automation.

### Steps

1. **Use this comprehensive prompt**:
   ```
   Create a complete Git and GitHub workflow setup for a DevOps team with the following components:
   
   Branching Strategy:
   - main/master branch for production-ready code
   - develop branch for integration testing
   - feature/* branches for new features
   - hotfix/* branches for critical fixes
   - release/* branches for preparing releases
   
   Pull Request Workflow:
   - Automated PR templates with checklists
   - Required status checks (CI/CD, security, tests)
   - Code review requirements (minimum 2 approvers)
   - Automated labeling based on changed files
   - Branch protection rules
   
   Automation:
   - Dependabot for dependency updates
   - Automated changelog generation
   - Semantic versioning with conventional commits
   - Auto-assignment of reviewers
   - Issue and PR linking
   
   Integration:
   - GitHub Projects for project management
   - GitHub Issues for bug tracking
   - Slack integration for notifications
   - Release automation
   ```

2. **Create additional configurations**:
Sample output (Agent mode snippet):

```
Generated files: .github/PULL_REQUEST_TEMPLATE, .github/ISSUE_TEMPLATE, .github/CODEOWNERS, dependabot.yml
```
   ```
   Create GitHub-specific configurations for:
   - Issue templates for bugs, features, and infrastructure changes
   - PR templates for different types of changes
   - GitHub Actions for workflow automation
   - Branch protection rules configuration
   - Team permissions and access control
   ```

## Directory Structure

```
module-4-git-workflows/
├── .github/
│   ├── PULL_REQUEST_TEMPLATE/
│   ├── ISSUE_TEMPLATE/
│   ├── workflows/
│   ├── dependabot.yml
│   └── CODEOWNERS
├── scripts/
│   ├── git-setup.sh
│   ├── branch-cleanup.sh
│   └── release-helper.sh
└── docs/
    ├── branching-strategy.md
    └── workflow-guidelines.md
```

## Expected Generated Files

After completing the exercises, you should have:
- Complete `.github` configuration directory
- Pull request and issue templates
- Branch protection and review requirements
- Automated workflows for various Git operations
- Documentation for team onboarding

## Workflow Features to Include

### Branching Strategy
- **GitFlow Adaptation**: Modified for infrastructure and DevOps workflows
- **Branch Naming**: Consistent naming conventions for all branch types
- **Protection Rules**: Appropriate protection for main and develop branches
- **Cleanup**: Automated branch cleanup after merges

### Pull Request Process
- **Templates**: Different templates for features, fixes, and infrastructure changes
- **Automation**: Auto-labeling, assignees, and reviewers
- **Requirements**: Status checks, review requirements, and conflict resolution
- **Integration**: Seamless integration with CI/CD pipelines

### Automation Features
- **Dependabot**: Automated dependency updates with proper review process
- **Changelog**: Automated changelog generation from conventional commits
- **Versioning**: Semantic versioning with GitHub releases
- **Notifications**: Team notifications for important events

## Best Practices Demonstrated

- **Team Collaboration**: Clear processes for different types of changes
- **Code Quality**: Automated checks and review requirements
- **Release Management**: Structured approach to releases and hotfixes
- **Documentation**: Comprehensive documentation and templates
- **Scalability**: Workflows that scale with team size and complexity

## Testing Your Workflow

1. **Create a test repository** on GitHub
2. **Copy the generated configurations** to your repository
3. **Set up branch protection rules** in repository settings
4. **Test the PR process** with sample pull requests
5. **Verify automation** is working correctly

## Advanced Features

### Conventional Commits
- Standardized commit message format
- Automated changelog generation
- Semantic versioning integration

### GitHub Apps and Integrations
- Slack notifications for PR and issue updates
- Project board automation
- Custom status checks and validations

### Security and Compliance
- Required status checks for security scans
- Code owner requirements for sensitive areas
- Audit trail for all changes

## Next Steps

After completing Git workflow configuration, proceed to [Module 5: Advanced DevOps Topics](../module-5-advanced/README.md).

## Actions performed (files added)

I added GitHub configuration templates, dependabot configuration, CODEOWNERS, and helper scripts to implement the workflows described in this module.

Files added:

- `.github/PULL_REQUEST_TEMPLATE/feature.md` — PR template for feature changes
- `.github/ISSUE_TEMPLATE/bug.md` — Issue template for bugs
- `.github/ISSUE_TEMPLATE/feature_request.md` — Issue template for feature requests
- `.github/CODEOWNERS` — code ownership configuration
- `dependabot.yml` — Dependabot configuration
- `scripts/git-setup.sh` — helper to initialize repo (placeholder)
- `scripts/branch-cleanup.sh` — local branch cleanup script
- `scripts/release-helper.sh` — release scaffolding helper (placeholder)

How to test / use:

1. Copy `.github/` to the repository root in a test repo to enable templates and CODEOWNERS.
2. Enable Dependabot in repository settings (it may be enabled by default).
3. Run `scripts/branch-cleanup.sh` in a local clone to remove merged branches.

Expected outcomes:

- New issues and PRs will use the provided templates.
- Dependabot will open weekly pull requests for npm dependency updates.
- CODEOWNERS will auto-assign reviewers based on touched paths.

Sample output (scripts/branch-cleanup.sh):

```
Fetching origin...
Deleted branch feature/old-work
Deleted branch bugfix/fix-typo
Cleanup complete
```

Sample output (Dependabot PR created):

```
Dependabot found 3 dependencies to update
Created PR #42: chore(deps): update dependencies
```

