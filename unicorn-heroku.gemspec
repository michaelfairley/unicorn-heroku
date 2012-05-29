require File.expand_path('../lib/unicorn/const', __FILE__)

Gem::Specification.new do |s|
  s.name = %q{unicorn-heroku}
  s.version = Unicorn::Const::UNICORN_VERSION
  s.authors = ["Michael Fairley", "Unicorn Hackers"]
  s.summary = "Unicorn, but compatible with heroku's signal handling"
  s.date = Time.now.utc.strftime('%Y-%m-%d')
  s.description = "Unicorn, but compatible with heroku's signal handling."
  s.email = %q{michaelfairley@gmail.com}
  s.executables = %w(unicorn unicorn_rails)
  s.extensions = %w(ext/unicorn_http/extconf.rb)
  s.files = `git ls-files`.split($\)
  s.homepage = "https://github.com/michaelfairley/unicorn-heroku"
  s.test_files = Dir.glob('{test,t}/**/*')

  # for people that are absolutely stuck on Rails 2.3.2 and can't
  # up/downgrade to any other version, the Rack dependency may be
  # commented out.  Nevertheless, upgrading to Rails 2.3.4 or later is
  # *strongly* recommended for security reasons.
  s.add_dependency(%q<rack>)
  s.add_dependency(%q<kgio>, '~> 2.6')
  s.add_dependency(%q<raindrops>, '~> 0.7')

  s.add_development_dependency('isolate', '~> 3.2')
  s.add_development_dependency('wrongdoc', '~> 1.6.1')

  # s.licenses = %w(GPLv2 Ruby) # licenses= method is not in older RubyGems
end
