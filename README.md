# Erlang

This is an Erlang engine used to launch Erlang apps on [Nanobox](http://nanobox.io).

## Usage
To use the Erlang engine, specify `erlang` as your `engine` in your boxfile.yml.

```yaml
run.config:
  engine: erlang
```

## Build Process
When [running a build](https://docs.nanboox.io/cli/build/), this engine compiles code by doing the following:

- `make`

## Configuration Options
This engine exposes configuration options through the [boxfile.yml](http://docs.nanobox.io/app-config/boxfile/), a yaml config file used to provision and configure your app's infrastructure when using Nanobox. This engine makes the following options available.

#### Overview of Boxfile Configuration Options
```yaml
run.config:
  engine.config:
    # Erlang Settings
    runtime: erlang-18.1
    make_target: 'my_project'
    project_dir: dir_name

    # Node.js Settings
    nodejs_runtime: nodejs-4.4
```
##### Quick Links
[Erlang Settings](#erlang-settings)  
[Node.js Settings](#nodejs-settings)

---

### Erlang Settings
The following setting allows you to define your Erlang runtime environment.

---

#### runtime
Specifies which Erlang runtime to use. The following runtimes are available:

- erlang-18.0
- erlang-18.1

```yaml
run.config:
  engine.config:
    runtime: erlang-18.1
```

---

#### make_target
Defines which make task(s) should run when compiling the code.

```yaml
run.config:
  engine.config:
    make_target: 'my_project'
```

---

#### project_dir
Defines the directory from which the final, compiled code should be run.

```yaml
run.config:
  engine.config:
    project_dir: dir_name
```

---

### Node.js Settings
Many applications utilize Javascript tools in some way. This engine allows you to specify which Node.js runtime you'd like to use.

---

#### nodejs_runtime
Specifies which Node.js runtime and version to use. You can view the available Node.js runtimes in the [Node.js engine documentation](https://github.com/nanobox-io/nanobox-engine-nodejs#runtime).

```yaml
run.config:
  engine.config:
    nodejs_runtime: nodejs-4.4
```

---

## Help & Support
This is an Erlang engine provided by [Nanobox](http://nanobox.io). If you need help with this engine, you can reach out to us in the [#nanobox IRC channel](http://webchat.freenode.net/?channels=nanobox). If you are running into an issue with the engine, feel free to [create a new issue on this project](https://github.com/nanobox-io/nanobox-engine-java/issues/new).
