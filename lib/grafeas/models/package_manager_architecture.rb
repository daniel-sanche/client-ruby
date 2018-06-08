=begin
#Grafeas API

#An API to insert and retrieve annotations on cloud artifacts.

OpenAPI spec version: v1alpha1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module Grafeas
  class PackageManagerArchitecture
    
    ARCHITECTURE_UNSPECIFIED = 'ARCHITECTURE_UNSPECIFIED'.freeze
    X86 = 'X86'.freeze
    X64 = 'X64'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PackageManagerArchitecture.constants.select { |c| PackageManagerArchitecture::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #PackageManagerArchitecture" if constantValues.empty?
      value
    end
  end
end