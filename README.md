# Kamal with support for depot.dev builders

This is an actively maintained fork of [basecamp/kamal](https://github.com/basecamp/kamal) that's kept in sync with support for [depot.dev](https://depot.dev) builders.

```
The main branch is currently in sync with version 1.8.1
```

## Installation with depot builder support

Run the following commands to use `kamal` from this repository:

```sh
gem install specific_install
gem specific_install https://github.com/navinpeiris/kamal-depot.git
```

## Building with depot builders

1. Basic configuration. Builds for the same architecture as the local machine:

   ```yaml
   builder:
     depot: true
   ```

2. Specifying one or more platforms to build for:

   ```yaml
   builder:
     depot:
       platforms:
         - linux/amd64
         - linux/arm64
   ```

# Kamal: Deploy web apps anywhere

From bare metal to cloud VMs, deploy web apps anywhere with zero downtime. Kamal has the dynamic reverse-proxy Traefik hold requests while a new app container is started and the old one is stopped. Works seamlessly across multiple hosts, using SSHKit to execute commands. Originally built for Rails apps, Kamal will work with any type of web app that can be containerized with Docker.

➡️ See [kamal-deploy.org](https://kamal-deploy.org) for documentation on [installation](https://kamal-deploy.org/docs/installation), [configuration](https://kamal-deploy.org/docs/configuration), and [commands](https://kamal-deploy.org/docs/commands).

## Contributing to the documentation

Please help us improve Kamal's documentation on the [the basecamp/kamal-site repository](https://github.com/basecamp/kamal-site).

## License

Kamal is released under the [MIT License](https://opensource.org/licenses/MIT).
