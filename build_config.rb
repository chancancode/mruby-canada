MRuby::Build.new do |conf|
  # Gets set by the VS command prompts.
  toolchain :gcc

  enable_debug

  conf.gembox 'default'

  # need this for IO#puts
  conf.gem github: "iij/mruby-io"

  # be sure to include this gem
  conf.gem File.expand_path(File.dirname(__FILE__))
end