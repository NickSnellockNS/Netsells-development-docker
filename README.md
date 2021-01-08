# Netsells Docker environment for development

This depends on the environment variables for UID and GID being set to the values for the current user on the host. This may or may not be required for Mac use, it is required when using Linux as a host. Just add the following to your .bashrc

```
export UID=$(id -u)

export GID=$(id -g)
```