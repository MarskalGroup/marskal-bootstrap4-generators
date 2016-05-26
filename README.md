# Marskal Bootstrap4 Generators

marskal-bootstrap4-generators provides [Twitter Bootstrap](http://getbootstrap.com/) generators for Rails 4. Bootstrap 4 is a toolkit from Twitter designed to kickstart development of web apps and sites.

## Current Twitter Bootstrap version

The current supported version of Twitter Bootstrap is 4.0+

## Installing Gem

In your Gemfile, add this line:

    gem 'marskal-bootstrap4-generators', '~> 4.0.3'

Or you can install from latest build:

    gem 'marskal-bootstrap4-generators', git: 'git://github.com/MarskalGroup/marskal-bootstrap4-generators.git'

Run bundle install:

    bundle install

## Generators

Get started:

    rails generate marskal:bootstrap4:install

To overwrite files that already exist, pass the `--force` (`-f`) option.

Once you've done that, any time you generate a controller or scaffold, you'll get [Bootstrap](http://twitter.github.com/bootstrap/) templates.

## Usage

To print the options and usage run the command `rails generate marskal:bootstrap4:install --help`

    Usage:
      rails generate marskal:bootstrap4:install [options]

    Options:
        N/A
  
    Runtime options:
      -f, [--force]                    # Overwrite files that already exist
      -p, [--pretend], [--no-pretend]  # Run but do not make any changes
      -q, [--quiet], [--no-quiet]      # Suppress status output
      -s, [--skip], [--no-skip]        # Skip files that already exist

    Copy MarskalBootstrap4Generators default files

## Gemfile

Make sure you have these gems placed in your GemFile:

    gem 'sass-rails', '~> 5.0', '>= 5.0.4'
    gem 'bootstrap', '~> 4.0.0.alpha3'

And then run:

    rails generate marskal:bootstrap4:install 

Now you can customize the look and feel of Bootstrap.

## Assets

    custom tweaks to the styles will be place in:
       apps/assets/stylesheets/marskal-bootstrap4-generators
    
    Be sure to include this file in your application.scss files along with bootstrap .scss files
    
### Sample application.scss

    @import 'marskal_template/marskal-template-variables';
    
    @import "bootstrap";
    @import "font-awesome";  //recommended for icons with bootstrap 4
    
    //import marskal-template stylesheet
    @import 'marskal_template/marskal_template';

### Javascript

Select all jQuery plugins (`app/assets/javascripts/bootstrap.js`)

Require Bootstrap Javascripts in app/assets/javascripts/application.js:

    //= require jquery
    //= require bootstrap-sprockets

Or quickly add only the necessary javascript (Transitions: required for any animation; Popovers: requires Tooltips)

    //Check for latest names of these files
    //= require bootstrap/util
    //= require bootstrap/alert
    //= require bootstrap/button
    //= require bootstrap/carousel
    //= require bootstrap/collapse
    //= require bootstrap/dropdown
    //= require bootstrap/modal
    //= require bootstrap/scrollspy
    //= require bootstrap/tab
    //= require bootstrap/tooltip
    //= require bootstrap/popover

## Give it a try

    rails generate scaffold post title body:text published:boolean


## Customizing Templates

Since Marskal Bootstrap Generators installs its templates under lib/templates, you can go and customize them.

## Credits

* [Twitter Bootstrap](http://getbootstrap.com)
