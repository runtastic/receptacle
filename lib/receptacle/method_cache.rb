# frozen_string_literal: true
module Receptacle
  # Cache describing which strategy and wrappers need to be applied for this method
  # @api private
  class MethodCache
    # @return [Symbol] name of the method this cache belongs to
    attr_reader :method_name
    # @return [Class] strategy class currently setup
    attr_reader :strategy
    # @return [Array(Class)] Array of wrapper classes which implement a wrapper for this method
    attr_reader :wrappers
    # @return [Symbol] name of the before action method
    attr_reader :before_method_name
    # @return [Symbol] name of the after action method
    attr_reader :after_method_name

    def initialize(method_name:, strategy:, before_wrappers:, after_wrappers:)
      @strategy = strategy
      @before_method_name = :"before_#{method_name}"
      @after_method_name = :"after_#{method_name}"
      @method_name = method_name.to_sym
      before_wrappers ||= []
      after_wrappers ||= []
      @wrappers = before_wrappers | after_wrappers
      @skip_before_wrappers = before_wrappers.empty?
      @skip_after_wrappers = after_wrappers.empty?
    end

    # @return [Boolean] true if no before wrappers need to be applied for this method
    def skip_before_wrappers?
      @skip_before_wrappers
    end

    # @return [Boolean] true if no after wrappers need to be applied for this method
    def skip_after_wrappers?
      @skip_after_wrappers
    end
  end
end
