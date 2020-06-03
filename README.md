# MaintenanceJobs

Maintenance Jobs for Rails!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'maintenance_jobs'
```

And then execute:

```bash
$ bundle
```

Lastly:

```bash
$ rails maintenance_jobs:install
```

## Usage

You can run all pending maintenance jobs like so:

```bash
$ rails maintenance_jobs:run
```

You can create maintenance jobs using generators like this:

```bash
$ rails g maintenance_job MyCleaner
```

This will create a maintenance job in `app/jobs` and also a test file in `spec/jobs`.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
