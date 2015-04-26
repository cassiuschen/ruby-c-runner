# -*- encoding: utf-8 -*-
$LOAD_PATH << File.expand_path("../lib", __FILE__)
require 'c_runner/info'

Gem::Specification.new do |s|
  s.name          = CRunner::Info::NAME
  s.version       = CRunner::Info::VERSION
  s.summary       = CRunner::Info::SUMMARY
  s.description   = CRunner::Info::SUMMARY

  s.licenses      = %w(MIT)

  s.author        = CRunner::Info::AUTHOR
  s.email         = CRunner::Info::EMAIL
  s.homepage      = "http://github.com/cassiuschen/#{CRunner::Info::NAME}"

  s.require_paths = %w(lib)
  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
end

