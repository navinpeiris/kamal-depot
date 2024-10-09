# Kamal with support for depot.dev builders

This is an actively maintained fork of [basecamp/kamal](https://github.com/basecamp/kamal) that's kept in sync with support for [depot.dev](https://depot.dev) builders.

```
The main branch is currently in sync with version 2.10.1
```

## Installation with depot builder support

Run the following commands to use `kamal` from this repository:

```sh
gem install specific_install && gem specific_install https://github.com/navinpeiris/kamal-depot.git
```

## Building with depot builders

Set the `depot` option under `builder` to `true`, and optionally specify the platforms to build for under `arch`.

```yaml
builder:
  depot: true
  arch:
    - amd64
    - arm64
```

## Rebasing with basecamp/kamal

```sh
git fetch upstream
git rebase vX.X.X
```

## Kamal: Deploy web apps anywhere

From bare metal to cloud VMs, deploy web apps anywhere with zero downtime. Kamal uses [kamal-proxy](https://github.com/basecamp/kamal-proxy) to seamlessly switch requests between containers. Works seamlessly across multiple servers, using SSHKit to execute commands. Originally built for Rails apps, Kamal will work with any type of web app that can be containerized with Docker.

➡️ See [kamal-deploy.org](https://kamal-deploy.org) for documentation on [installation](https://kamal-deploy.org/docs/installation), [configuration](https://kamal-deploy.org/docs/configuration), and [commands](https://kamal-deploy.org/docs/commands).

## Contributing to the documentation

Please help us improve Kamal's documentation on the [the basecamp/kamal-site repository](https://github.com/basecamp/kamal-site).

## License

Kamal is released under the [MIT License](https://opensource.org/licenses/MIT).
