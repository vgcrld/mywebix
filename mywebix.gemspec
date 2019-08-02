
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|

  require "mywebix/version"

  spec.name          = "mywebix"
  spec.version       = MyWebix::VERSION
  spec.authors       = ["Rich Davis"]
  spec.email         = ["vgcrld@gmail.com"]

  spec.summary       = %q{My Webix Test Gem}
  spec.description   = %q{Create a small web server for test Webix}
  spec.homepage      = "http://galileosuite.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # puts "Executables: #{spec.executables}"

  spec.add_dependency "haml"
  spec.add_dependency "sinatra"
  spec.add_dependency "optimist"
  spec.add_dependency "awesome_print"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
