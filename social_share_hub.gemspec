# -*- encoding: utf-8 -*-
require File.expand_path('../lib/social_share_hub/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jerry Shen"]
  gem.email         = ["jerry@ekohe.com"]
  gem.description   = %q{Social Share Hub}
  gem.summary       = %q{Social Share Hub, quick share buttons for social websites}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "social_share_hub"
  gem.require_paths = ["lib"]
  gem.version       = SocialShareHub::VERSION
end
