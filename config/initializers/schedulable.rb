Schedulable.configure do |config|
  config.max_build_count = 0
  config.max_build_period = 1.year
  config.form_helper = {
    style: :default
  }
end