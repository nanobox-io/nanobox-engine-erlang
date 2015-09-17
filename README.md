*This repo provides the basic structure for a [Nanobox engine](http://docs.nanobox.io/getting-started/engines/). Engines automate the building and configuration of application infrastructures. The Readme content below is sample content outlining what an engine Readme should contain.*

---

# Engine Name

*The opening paragraph of an engine's Readme file should explain what the engine is and what makes it unique. Keep in mind that your README.md content will be viewed on [engines.nanobox.io](http://engines.nanobox.io) when published as well as other repo hosting providers, so it's important to set the context of it being a nanobox engine. For Example:*

This is a nanobox engine that automates the deployment of Ruby on Rails web applications. It includes multiple options for ruby versions and web servers as well as flexible configuration options.

## App Detection

*Engines are have the ability to auto-detect the language/framework of an app through the [`sniff` script](http://docs.nanobox.io/engines/scripts/sniff/). Outline how the engine detects whether or not it shoulde be used for the application. For example:*

To detect a Ruby on Rails app, this engine checks for the presence of a Gemfile. If a Gemfile, the engine then checks for the presence of the `rails` gem.

## Build Process

*Engines define how an application is built. Outline what is done in the build process. For example:*

- `bundle install`
- `bundle clean`

## Important Things to Know

*In some cases, there may be important things for those using the engine to know. Those important notes should be listed here.*


## Configuration Options
*Each engine has the ability to expose Boxfile configuration options to users. The Readme file should document all of those options thoroughly. We suggest including an "Overview" code block that shows all of the options available as well as individual sections that address each option. For example:*

This engine exposes configuration option through the [Boxfile](http://docs.nanobox.io/boxfile/), a yaml config file used to provision and configure your app's infrastructure when using Nanobox. This engine makes the following options available.

#### Overview of Boxfile Configuration Options
```yaml
build:
  ruby_version: 2.2
  web_server: puma
  exec_path: "my/app/application.rb"
```
##### Quick Links
[Ruby Version](#ruby-version)  
[Web Server](#web-server)  
[Exec Path](#exec-path)  

---

### Ruby Version
You can specify which version of Ruby you would like to use using the `ruby_version` setting in your build. The following options are available:

- 1.9
- 2.0
- 2.1
- 2.2

If no `ruby_version` is specified, it will default to 2.2.

#### ruby_version
```yaml
build:
  ruby_version: 2.2
```

---

### Web Server
You can specify which web server you would like to use using the `web_server` setting in your build. The following options are available:

- puma
- thin
- unicorn

If no `web_server` is specified, it will default to puma.

#### web_server
```yaml
build:
  web_server: puma
```

---

### Exec Path
If the file used to start your application isn't at the default path, you can use the `exec_path` setting to specify the location.

#### exec_path
```yaml
build:
  exec_path: "my/app/application.rb"
```

---

## Help & Support
*Engine developers are responsible for supporting their published engines. Here you should provide information about how users can request help in case of issues. You could provide an email address or simply direct them to submit an issue to the project on Github.*