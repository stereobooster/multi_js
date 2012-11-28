require 'yui/compressor' unless defined?(::YUI::JavaScriptCompressor)

module MultiJs
  module Adapters
    class YuiCompressor
      ParseError = ::YUI::Compressor::RuntimeError

      def self.compile(text, options={}) #:nodoc:
        compressor = ::YUI::JavaScriptCompressor.new options
        compressor.compress text
      end
    end
  end
end