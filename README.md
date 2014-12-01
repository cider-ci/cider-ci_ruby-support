# Cider-CI Support for Ruby and Ruby on Rails projects 

This gem provides convenience executables to work with Cider-CI. 


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cider_ci-support'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cider_ci-rails


## Usage

### Aggregate Coverage with `cider-ci_coverage` 

1. Add [Simplecov]() to your project and configure it.

2. Have the coverage output attached to the trials, e.g. 

    ```yaml
    task_defaults:
      trial_attachments:
        coverage_resultset:
          glob: 'coverage/.resultset.json'
          content-type: application/json
    ```

3. Run the tests on Cider-CI. 

4. Within the top level directory of you project, e.g. 

    cider-ci_coverage -e EXECUTION_ID



