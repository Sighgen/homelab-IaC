## Homelab Ideas
## A collection of applications, services and infrastructure components
## that could be explored or deployed as part of the homelab.
## The goal is not to run everything.
## Each component should have a practical or educational purpose.


### INFRASTRUCTURE

- Debian Trixie
  - Base operating system for the homelab.
  - Provides a stable Linux environment.
  - Good for learning system administration, networking and services.

- Ansible
  - Configuration management and Infrastructure as Code.
  - Automates users, packages, SSH, firewall, services and applications.
  - Makes the server reproducible.

- Docker / Podman
  - Runs applications in containers.
  - Useful for isolation, deployment and reproducibility.

- Caddy
  - Reverse proxy and web server.
  - Handles HTTPS/TLS and routes traffic to internal services.
  - Good for learning HTTP, TLS, DNS and reverse proxies.

- Tailscale
  - Private VPN and network connectivity.
  - Provides secure remote access to the homelab.
  - Useful for learning private networking and access control.

- nftables
  - Linux firewall.
  - Controls which network traffic is allowed.
  - Useful for understanding network security.


---
### NETWORKING

- Pi-hole
  - Network-wide DNS filtering.
  - Can block advertising and tracking domains.
  - Useful for learning DNS and local networking.

- AdGuard Home
  - Alternative DNS filtering platform.
  - Provides a web interface for DNS management and filtering.

- CoreDNS
  - DNS server.
  - Useful for learning DNS zones, records, forwarding and service discovery.

- Mosquitto
  - MQTT broker.
  - Useful for IoT and event-driven applications.
  - Can connect sensors and applications.


---
### SECURITY & IDENTITY

- Authentik
  - Identity Provider and Single Sign-On platform.
  - Can provide central authentication for homelab services.
  - Useful for learning OAuth2, OpenID Connect, MFA, users and groups.

- Keycloak
  - Enterprise-oriented Identity and Access Management platform.
  - Useful for learning OAuth2, OpenID Connect, SAML and identity management.

- Fail2ban
  - Detects suspicious login attempts.
  - Can automatically block abusive IP addresses.
  - Useful for learning Linux logs and automated security responses.

- CrowdSec
  - Collaborative intrusion prevention system.
  - Analyses logs and can react to malicious behaviour.
  - More advanced alternative to Fail2ban.

- Vault
  - Centralised secrets management.
  - Can store passwords, API keys and other sensitive information.
  - Useful for learning secrets management and secure application design.


---
### MONITORING & OBSERVABILITY

- Prometheus
  - Collects and stores metrics.
  - Can monitor CPU, RAM, disks, containers and applications.
  - Useful for learning observability and time-series data.

- Grafana
  - Visualises metrics and other data.
  - Can provide dashboards for the entire homelab.
  - Useful for learning monitoring and data visualisation.

- Loki
  - Centralised log aggregation.
  - Collects logs from servers and containers.
  - Useful for learning log management and troubleshooting.

- Uptime Kuma
  - Monitors whether services are available.
  - Can check HTTP, TCP, ping and other endpoints.
  - Simple but very useful.

- Netdata
  - Real-time system monitoring.
  - Provides detailed information about CPU, RAM, disk, network and processes.

- Glances
  - Terminal-based system monitoring.
  - Similar to an advanced version of top.
  - Useful for quick debugging directly on the server.

- ntfy
  - Notification service.
  - Can send alerts to phones or other clients.
  - Useful for backup, monitoring and automation notifications.

- Gotify
  - Alternative self-hosted notification system.
  - Can be used for server and application notifications.


---
### DEVELOPMENT

- Forgejo
  - Self-hosted Git platform.
  - Provides repositories, issues, pull requests and webhooks.
  - Useful for hosting personal projects and learning Git infrastructure.

- Gitea
  - Lightweight self-hosted Git platform.
  - Similar use case to Forgejo.

- GitLab
  - Full DevOps platform.
  - Includes Git, CI/CD, container registry, issues and security tooling.
  - More resource-intensive than Forgejo/Gitea.

- Harbor
  - Container image registry.
  - Stores Docker/OCI images.
  - Useful for learning container supply chains.

- PostgreSQL
  - Relational database.
  - Useful for web applications and many other services.
  - Important technology for backend development.

- MariaDB
  - Relational database.
  - Alternative database platform for experimentation.

- Redis
  - In-memory data store.
  - Useful for caching, sessions, queues and temporary state.

- MongoDB
  - Document-oriented database.
  - Useful for learning NoSQL architectures.

- Adminer
  - Lightweight web interface for databases.
  - Useful for development and database administration.


---
### CI/CD

- GitHub Actions
  - Cloud-based CI/CD.
  - Can lint, test, build and deploy projects.
  - Good for connecting the public Git repository to the homelab.

- Woodpecker CI
  - Lightweight self-hosted CI/CD system.
  - Useful if CI should run inside the homelab.

- Jenkins
  - Established CI/CD platform.
  - Useful for learning pipelines, agents, builds and automation.

- Renovate
  - Automated dependency update tool.
  - Can create pull requests for outdated packages, containers and GitHub Actions.


---
### STORAGE & FILES

- Nextcloud
  - Private cloud platform.
  - Provides file storage, sharing, calendars, contacts and other applications.
  - Useful for learning storage, databases, authentication and web applications.

- MinIO
  - S3-compatible object storage.
  - Useful for learning object storage and cloud-style architectures.

- Samba
  - Network file sharing.
  - Allows Windows/Linux clients to access files on the server.
  - Useful for learning SMB and permissions.

- Syncthing
  - Peer-to-peer file synchronization.
  - Useful for synchronising files between computers.


---
### BACKUP

- Restic
  - Encrypted backup tool.
  - Can back up application data and important files.
  - Useful for learning backup strategies and disaster recovery.

- BorgBackup
  - Deduplicating backup solution.
  - Alternative to Restic.

- Kopia
  - Backup system with a modern interface.
  - Supports encrypted and deduplicated backups.


---
### MEDIA

- Jellyfin
  - Self-hosted media server.
  - Can stream movies, TV shows and music.
  - Useful for learning storage, networking, permissions and transcoding.

- Navidrome
  - Self-hosted music server.
  - Lightweight alternative for music libraries.

- Audiobookshelf
  - Server for audiobooks and podcasts.
  - Useful for managing and streaming personal audio libraries.


---
### PHOTOS & DOCUMENTS

- Immich
  - Self-hosted photo and video management.
  - Includes search, organisation and machine-learning features.
  - Technically interesting because it combines databases, storage,
    background jobs, APIs and machine learning.

- Paperless-ngx
  - Document management system.
  - Can OCR and organise documents.
  - Useful for learning document processing and search.


---
### HOME AUTOMATION

- Home Assistant
  - Home automation platform.
  - Can integrate sensors, lights, devices and automations.
  - Useful for event-driven programming and IoT.

- Mosquitto
  - MQTT broker.
  - Provides communication between IoT devices and applications.

- Node-RED
  - Visual workflow automation platform.
  - Useful for experimenting with event-driven systems and IoT.


---
### PRODUCTIVITY

- Vikunja
  - Self-hosted task and project management.
  - Useful for managing personal projects and tasks.

- BookStack
  - Documentation and wiki platform.
  - Useful for documenting the homelab itself.

- Outline
  - Modern knowledge base platform.
  - Useful for documentation and internal knowledge management.


---
### COMMUNICATION

- Matrix / Synapse
  - Decentralised messaging platform.
  - Useful for learning federation, APIs and distributed communication.

- Element
  - Client for Matrix.
  - Can be used together with a self-hosted Matrix server.

- Mumble
  - Lightweight voice communication server.
  - Useful for gaming or private communication.


---
### DASHBOARDS

- Homepage
  - Homelab dashboard.
  - Provides a central place for links to services.

- Homarr
  - Alternative homelab dashboard.
  - More visual and customisable.

- homelab-dashboard
  - Custom application developed specifically for the homelab.
  - Could display:
    - Server status
    - CPU usage
    - RAM usage
    - Disk usage
    - Network usage
    - Container status
    - Service health
    - Backup status
    - Active alerts
    - Deployment information
  - Useful as a portfolio project because it combines software development
    with infrastructure and observability.


---
### AUTOMATION / IaC

- Ansible
  - Configuration management.
  - Manages existing machines and their configuration.

- Terraform
  - Infrastructure as Code.
  - Useful for provisioning infrastructure.

- OpenTofu
  - Open-source Infrastructure as Code tool.
  - Alternative to Terraform.

- Semaphore UI
  - Web interface for Ansible.
  - Can provide a graphical way to execute and monitor Ansible jobs.


---
### AI / MACHINE LEARNING

- Ollama
  - Local LLM runtime.
  - Allows language models to run locally.
  - Useful for learning local AI inference and model serving.

- Open WebUI
  - Web interface for local AI models.
  - Can be combined with Ollama.

- Qdrant
  - Vector database.
  - Useful for semantic search, embeddings and RAG applications.

- Custom AI application
  - Build an application using Ollama or another local model.
  - Could expose an API and integrate with the homelab dashboard.


---
### GAME SERVERS

- Minecraft
  - Self-hosted Minecraft server.
  - Useful for learning resource management, networking and backups.

- Valheim
  - Self-hosted Valheim server.
  - Another practical container/server management project.

- Factorio
  - Self-hosted Factorio server.
  - Useful for learning game server deployment and persistence.


---
### UTILITIES

- Stirling PDF
  - Self-hosted PDF toolkit.
  - Can merge, split, convert and process PDF files.

- IT-Tools
  - Collection of developer utilities.
  - Includes tools for JSON, JWT, Base64, hashing, timestamps and more.

- Excalidraw
  - Collaborative diagramming tool.
  - Useful for architecture diagrams and documentation.


---
### POTENTIAL LEARNING PROJECTS

- Reproducible Debian installation
  - Rebuild a server from a clean Debian installation.

- Ansible configuration management
  - Automate the complete server configuration.

- Container platform
  - Build a standardised way of deploying applications.

- Reverse proxy
  - Learn HTTP, HTTPS, TLS and routing.

- Private networking
  - Build secure remote access using Tailscale.

- Central authentication
  - Use Authentik or Keycloak for SSO.

- Monitoring
  - Collect and visualise server metrics.

- Centralised logging
  - Collect logs using Loki.

- Automated backups
  - Back up application data automatically.

- Disaster recovery
  - Rebuild a server and restore its data.

- Self-hosted Git
  - Host repositories using Forgejo or Gitea.

- Container registry
  - Build and store private container images.

- CI/CD
  - Automatically test, build and deploy applications.

- Database platform
  - Host PostgreSQL and Redis for applications.

- Secrets management
  - Implement secure handling of credentials.

- Custom homelab dashboard
  - Build a custom application that interacts with the infrastructure.

- Infrastructure testing
  - Test Ansible roles and deployment logic automatically.

- Security scanning
  - Scan containers and dependencies for vulnerabilities.

- Automated dependency updates
  - Use Renovate to keep software up to date.

- Local AI platform
  - Run LLMs locally using Ollama.

- Event-driven architecture
  - Build systems using MQTT, RabbitMQ or NATS.

- IoT platform
  - Combine Home Assistant, MQTT and custom applications.


---
### SUGGESTED CORE PLATFORM

CORE=(
    "Debian Trixie"
    "OpenSSH"
    "Git"
    "Ansible"
    "nftables"
    "Tailscale"
    "Docker or Podman"
    "Caddy"
    "Restic"
    "smartmontools"
)

MONITORING=(
    "Prometheus"
    "Grafana"
    "Loki"
    "Uptime Kuma"
    "ntfy"
)

DEVELOPMENT=(
    "Forgejo or Gitea"
    "Container Registry"
    "PostgreSQL"
    "Redis"
)

SECURITY=(
    "Authentik"
    "Fail2ban or CrowdSec"
)

APPLICATIONS=(
    "Jellyfin"
    "Immich"
    "Paperless-ngx"
    "Home Assistant"
)

CUSTOM=(
    "homelab-dashboard"
)


---
### SUGGESTED ARCHITECTURE

SOURCE_CODE
    |
    v
GIT
    |
    v
CI / VALIDATION
    |
    +---- Lint
    +---- Tests
    +---- Security Scan
    |
    v
BUILD
    |
    v
CONTAINER REGISTRY
    |
    v
DEPLOYMENT
    |
    v
HOMELAB SERVER
    |
    +---- Caddy
    |
    +---- Authentik
    |
    +---- Applications
    |
    +---- Databases
    |
    +---- Monitoring
    |
    +---- Logging
    |
    +---- Backup
    |
    v
OBSERVABILITY
    |
    +---- Prometheus
    +---- Grafana
    +---- Loki
    +---- Uptime Kuma
    |
    v
ALERTING
    |
    v
BACKUP
    |
    v
RECOVERY


---
### DESIGN PRINCIPLE

The homelab should not become a collection of random services.

Each service should answer at least one of the following questions:

    "Does this solve a real problem?"

    "Does this teach me something useful?"

    "Does this improve the platform?"

    "Does this demonstrate a professional engineering practice?"

    "Can I explain why I chose this technology?"

If the answer is no, the service probably does not need to be deployed.


---
### OVERALL GOAL

The goal is to build a small platform where:

    CODE
      |
      v
    GIT
      |
      v
    CI
      |
      v
    TEST
      |
      v
    BUILD
      |
      v
  CONTAINER
      |
      v
  DEPLOY
      |
      v
INFRASTRUCTURE
      |
      v
OBSERVABILITY
      |
      v
  ALERTING
      |
      v
   BACKUP
      |
      v
  RECOVERY


---
### REPOSITORIES

PUBLIC:

    homelab-iac

    Contains:
      - Ansible roles
      - Playbooks
      - Container definitions
      - CI/CD
      - Tests
      - Documentation
      - Examples
      - Architecture decisions


PRIVATE:

    homelab-config

    Contains:
      - Real hosts
      - Environment configuration
      - Private IP addresses
      - Domains
      - Service configuration
      - Secrets
      - Hardware-specific configuration


---
### LONG TERM VISION

A clean Debian installation should eventually be able to become
a fully operational homelab server through automation.

Target workflow:

    Fresh Debian
        |
        v
    Bootstrap
        |
        v
    Ansible
        |
        v
    Security
        |
        v
    Networking
        |
        v
    Container Runtime
        |
        v
    Platform Services
        |
        v
    Applications
        |
        v
    Monitoring
        |
        v
    Backup
        |
        v
    Operational Homelab

---
### GENERATED WITH ASSISTANCE

This document and the ideas contained within it were generated
with assistance from ChatGPT (GPT-5.6 Luna).
