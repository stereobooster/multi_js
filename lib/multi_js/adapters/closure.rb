require 'closure-compiler' unless defined?(::Closure)

module MultiJs
  module Adapters
    class Closure
      ParseError = ::Closure::Error

      def self.compile(text, options={}) #:nodoc:
        compressor = ::Closure::Compiler.new options
        compressor.compile text
      end
    end
  end
end
