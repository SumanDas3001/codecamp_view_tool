lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "codecamp_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "codecamp_view_tool"
  spec.version       = CodecampViewTool::VERSION
  spec.authors       = ["SumanDas3001"]
  spec.email         = ["sumandas3001@gmail.com"]

  spec.summary       = %q{Various view specific method for application I use.}
  spec.description   = %q{Provides generated HTML data for rails application.}
  spec.homepage      = "http://codecamp.com"
  spec.license       = "MIT"

  
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
