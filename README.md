# Homelab IaC

Infrastructure as Code for building a reproducible Debian-based homelab server.

The goal is to configure a compatible laptop or small server from documented code, using Ansible for configuration management and Docker Compose for selected services.

## Goals

- Reproducible Debian server setup
- Secure remote administration over SSH
- Host firewall configuration
- Docker-based service deployment
- Self-hosted game servers, starting with Valheim
- Documented backup and recovery procedures
- Automated validation of infrastructure code

## Repository layout

```text
homelab-iac/
├── bootstrap/       # Minimal setup needed before Ansible can run
├── docs/            # Installation, security, and recovery documentation
├── inventory/       # Example inventory only; real hosts belong in private config
├── playbooks/       # Ansible entry points
├── roles/           # Reusable Ansible roles
├── services/        # Docker Compose definitions for applications
├── tests/           # Validation and testing helpers
└── README.md
```

## Design principles

1. **Reproducible:** rebuild the server from a clean, supported Debian installation.
2. **Idempotent:** running Ansible repeatedly should converge on the desired state.
3. **Secure by default:** use SSH keys, least privilege, and a restrictive firewall.
4. **Secrets stay private:** never commit private SSH keys, passwords, tokens, or real secret files.
5. **Documented:** record setup, operation, backup, and recovery steps.
6. **Incremental:** add services only when they have a clear purpose.

## Planned implementation

- [ ] Document the target Debian installation and prerequisites
- [ ] Add a minimal bootstrap script
- [ ] Configure base packages, users, and SSH with Ansible
- [ ] Configure and test the host firewall
- [ ] Install Docker Engine and Docker Compose
- [ ] Deploy Valheim with persistent world data
- [ ] Add backup and restore procedures
- [ ] Add CI validation and infrastructure tests

## Getting started

This repository is a starter structure; deployment automation is not complete yet.

1. Install Debian on the target machine.
2. Clone this repository.
3. Follow the installation guide in `docs/installation.md` once it has been implemented.
4. Keep real host-specific settings in the separate private `homelab-config` repository.

Do not run placeholder scripts or assume services are deployed until the relevant implementation and documentation are added.

## Public and private configuration

This public repository contains reusable code, examples, and documentation.

The private `homelab-config` repository is intended for environment-specific settings such as actual hostnames and internal addresses. Do not store unencrypted secrets in Git, even in a private repository. Prefer generating SSH keys on each machine and use a secrets-management approach such as Ansible Vault when a secret must be stored.

## Security notes

- Do not expose SSH directly to the public internet by default.
- Prefer a private overlay network such as Tailscale for remote administration.
- Expose only the game-server ports that are required.
- Validate firewall behavior after Docker is installed; container networking can affect packet filtering.
- Keep backups separate from the server where practical.

## Status

**Status:** Initial repository structure and documentation.

Features listed as planned are not implemented until their code, tests, and documentation are committed.
