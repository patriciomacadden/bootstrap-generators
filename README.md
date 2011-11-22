# bootstrap-generators

Rails generators for [twitter/bootstrap](https://github.com/twitter/bootstrap) goodness.

## Installation

In your Gemfile:

```
gem 'bootstrap-generators', :git => 'https://github.com/patriciomacadden/bootstrap-generators'
```

And then run:

```
$ bundle
```

## Generators

### Install

```
$ rails generate bootstrap:install
```

This generator will copy all assets files. Then, follow the instructions on how to setup them.

### Layout

```
$ rails generate bootstrap:layout NAME [options]
```

This command will create the layout called NAME into your rails application. Use the ```type``` option to create a predefined layout.
Available layouts are:
* application (similar to the newly created rails layout, but with the flashes)
* [hero](http://twitter.github.com/bootstrap/examples/hero.html)
* [fluid](http://twitter.github.com/bootstrap/examples/fluid.html)
* [container-app](http://twitter.github.com/bootstrap/examples/container-app.html)

## Next steps

Let me finish this gem!

## Contributing

1. Fork it.
2. Create a branch (`git checkout -b my_bootstrap_generators`)
3. Commit your changes (`git commit -am "Added some magic"`)
4. Push to the branch (`git push origin my_bootstrap_generators`)
5. Create an ussue with a link to your branch
