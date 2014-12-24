# Cider-CI Support for Ruby and Ruby on Rails projects 

This gem provides convenience executables to work with Cider-CI. 


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cider_ci-support', '~> 1.0.0'
```

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

  ~~~
  cider-ci_coverage 
  ~~~

  which will create the coverage output in `./coverage/`. Alternatively

  ~~~
  cider-ci_coverage --upload
  ~~~

  will additionally upload the files `./coverage/**/*`
  as tree-attachments. 

5.  Set the desired `limit` (optionally). `cider-ci_coverage` will exit
    with value 0 if and only if the ration `covered / uncovered lines`
    in per cent is above the *limit* (default 95%). This limit can be
    set by the `--limit LIMIT` option where `LIMIT` is a integer.

  ~~~
  cider-ci_coverage --upload --limit 99
  ~~~


### Static complexity code analysis with `cider-ci_code-complexity`

`cider-ci_flog` uses [flog][] to perform a static code analysis. It exits with
0 if and only if there are no offenders. The original `flog` always exits with
0. Therefore `cider-ci_flog` lends itself to be used within a task of
a Cider-CI execution suite. 


### Static similarity code analysis with `cider-ci_flay`

`cider-ci_flay` uses [flay][] to perform a static code
analysis. It exits with 0 if and only if there are no offenders. The
original `flay` always exits with 0. Therefore
`cider-ci_flay` lends itself to be used within a task of a
Cider-CI execution suite.

  [flay]: http://ruby.sadi.st/Flay.html
  [flog]: http://ruby.sadi.st/Flog.html

