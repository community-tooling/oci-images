# postfix-sendonly

This is a send only relay postfix server. It will need credentials for another SMTP server to work.

It currently is only compatible with mailservers that use port 465 (submission) and can't connect on port 587 via STARTTLS. Contributions to fix this are welcome!

## Setup

:warning: postfix is configured to accept mail from all addresses. It is your responsibility to not become an open relay by firewalling or otherwise making the server unreachable from the internet!

You need to set the following environment variables:

- `RELAY_HOST`: the host name of the target mail server
- `RELAY_PORT`: the port of the target mail server
- `USER`: the username to authenticate against the target mail server
- `PASSWORD`: the password for the `USER`.
