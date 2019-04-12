# Minitest Autoskip

Treat tests without assertions as having been skipped for reporting purposes.

## Installation

Add to an application's Gemfile as a dependency:

```ruby
gem 'minitest_autoskip'
```

Install:

```
bundle install
```

## Usage

Require the library after Minitest is loaded:

```ruby
require 'minitest_autoskip'

test 'autoskip' do
  # this test will be treated as skipped
end
```

## Issues

This library overrides the internals of the Minitest library, and may stop working if Minitest is updated.  Please report issues on Github.

Tested against Minitest `5.11.3`.
