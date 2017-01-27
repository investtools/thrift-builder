$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
$:.unshift File.expand_path('../../spec/gen-rb', __FILE__)

require "thrift/builder"
require 'example_types'
