
#!/usr/bin/env bash

# Stop the script if a command fails, an undefined variable is used,
# or a command inside a pipeline fails.
# This helps prevent a partially completed bootstrap from going unnoticed.
set -Eeuo pipefail

# Store the script's filename so log messages consistently identify
# which script is running.
readonly SCRIPT_NAME="${0##*/}"

# Print an informational message with the script name as a prefix.
# This makes terminal output easier to understand when troubleshooting.
log() {
    printf '[%s] %s\n' "$SCRIPT_NAME" "$*"
}

# Print an error message to stderr and terminate the script.
# A non-zero exit code tells the shell or automation that execution failed.
die() {
    printf '[%s] ERROR: %s\n' "$SCRIPT_NAME" "$*" >&2
    exit 1
}

# Require a regular user account rather than running the entire script
# as root. Individual administrative commands will use sudo instead.
# This follows the principle of least privilege.
if [[ "${EUID}" -eq 0 ]]; then
    die "Run this script as a normal user with sudo privileges, not as root."
fi

# Check that sudo is installed before attempting privileged operations.
# A fresh Debian installation may not have sudo configured for the user.
if ! command -v sudo >/dev/null 2>&1; then
    die "sudo is required. Install it and grant your user sudo privileges first."
fi

# Ask for sudo authentication now rather than halfway through the script.
# sudo may cache authentication for a short period, avoiding repeated prompts.
if ! sudo -v; then
    die "Could not authenticate with sudo."
fi

# Debian provides operating-system information in /etc/os-release.
# We use it to avoid accidentally running Debian-specific package commands
# on an unsupported Linux distribution.
if [[ ! -r /etc/os-release ]]; then
    die "Cannot identify operating system: /etc/os-release is missing."
fi

# Load operating-system variables such as ID and VERSION_ID.
# shellcheck source=/dev/null
source /etc/os-release

# This initial version deliberately supports Debian only.
# We can add explicit support for other distributions later if needed.
if [[ "${ID:-}" != "debian" ]]; then
    die "This script supports Debian only. Detected: ${ID:-unknown}"
fi

log "Detected Debian ${VERSION_ID:-unknown}."

# Refresh APT's package index so Debian knows which package versions
# are currently available from the configured repositories.
log "Updating package lists..."
sudo apt-get update

# Install the tools needed to manage the server with Ansible.
#
# ansible-core: runs Ansible playbooks to configure the server.
# ca-certificates: provides trusted certificate authorities for TLS.
# git: downloads and manages our infrastructure code repository.
# openssh-client: provides SSH client tools for connecting to other hosts.
# python3: required by many Ansible modules on managed Linux hosts.
# sudo: allows the regular user to perform approved administrative tasks.
#
# We use Debian's package manager to keep installation simple and reproducible.
log "Installing Ansible and required administration tools..."
sudo apt-get install -y \
    ansible-core \
    ca-certificates \
    git \
    openssh-client \
    python3 \
    sudo

# Verify that the most important commands are available after installation.
# Fail immediately if the package installation did not provide them.
command -v ansible-playbook >/dev/null 2>&1 \
    || die "ansible-playbook was not found after installation."

command -v git >/dev/null 2>&1 \
    || die "git was not found after installation."

# Display the installed Ansible version. This is useful when troubleshooting
# differences between hosts or documenting the environment.
ansible-playbook --version

# Confirm completion and explain what comes next.
# This script intentionally does not change SSH settings, firewall rules,
# Docker configuration, or public network access.
log "Bootstrap completed successfully."
log "Next step: configure and test the Ansible inventory."
