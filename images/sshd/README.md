# sshd

**Important: The ciphers in this image are not up to date as they need to be compatible with a Brother ADS-1700W scanner!** If you want to make them configurable, we welcome PRs for this.

This image sets up an SSHD server with STFTP enabled and a user `upload` with the UID 1000 who is chrooted to `/data`.

- Public keys for the user have specified in the environment variable `SSHD_UPLOAD_PUBKEYS`
- SSH host keys have to be mounted at `/etc/ssh/keys`. The directory needs to contain:
  - ssh_host_ed25519_key (`ssh-keygen -t ed25519`)
  - ssh_host_rsa_key (`ssh-keygen -t rsa`)
  - ssh_host_ecdsa_key (`ssh-keygen -t ecdsa`)
