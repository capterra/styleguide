# Capterra Styleguide

## Installation

Run `bundle` in the directory after pulling down the repository to your local machine.

From a command line/terminal, execute `bundle exec ruby app.rb`.
 
This will launch the application on your local machine and use the path `http://localhost:4567` by default.

## Style and HTML Modifications

Style updates should be made in `/assets/stylesheets/styleguide.scss` and html changes in `views/content.erb`.

## Intended Updates

We currently are using a dump of application.css off of the Capterra domain via the CDN for the bulk of our stylings, however we will be pulling the main scss code into this project in the future.

Additionally, we will be breaking up the content.erb file into separate files for each section, a la `forms.erb`, `navigation.erb`, etc.