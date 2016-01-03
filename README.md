# Cider-CI Support for Ruby and Ruby on Rails projects

This gem provides convenience executables to work with Cider-CI.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cider_ci-support', '~> 3.0.0'
```

## Usage

### Static complexity code analysis with `cider-ci_flog`

`cider-ci_flog` uses [flog][] to perform a static code analysis. It exits with
0 if and only if there are no offenders. The original `flog` always exits with
0. Therefore `cider-ci_flog` lends itself to be used within a task of
a Cider-CI execution suite.


### Static similarity code analysis with `cider-ci_flay`

`cider-ci_flay` uses [flay][] to perform a static code analysis. It exits with
0 if and only if there are no offenders. The original `flay` always exits with
0. Therefore `cider-ci_flay` lends itself to be used within a task of
a Cider-CI execution suite.


## Notes

The Coverage analysis based on [SimpleCov]() has been removed with version 3.0.

We deemed the inflicted complexity to hight to maintain it. The problems are
not related to Cider-CI itself. If you want coverage support with Cider-CI we
recommend to extract the code from an older version to get started.


  [flay]: http://ruby.sadi.st/Flay.html
  [flog]: http://ruby.sadi.st/Flog.html

