MRuby::Build.new do |conf|
  # Gets set by the VS command prompts.
  toolchain :gcc

  enable_debug

  conf.gembox 'default'

  # be sure to include this gem
  conf.gem File.expand_path(File.dirname(__FILE__))
end