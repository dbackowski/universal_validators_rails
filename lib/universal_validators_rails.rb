require 'universal_validators_rails/version'
require 'universal_validators'
require 'active_record'

class DateValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    validator = ::UniversalValidators::DateValidator.new(value)
    record.errors.add(attribute, @options[:message] || 'Invalid date format') unless validator.valid?
  end
end

class DateTimeValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    validator = ::UniversalValidators::DateTimeValidator.new(value)
    record.errors.add(attribute, @options[:message] || 'Invalid date time format') unless validator.valid?
  end
end

class IpAddressValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    validator = ::UniversalValidators::IpValidator.new(value, @options[:with_mask] || false)
    record.errors.add(attribute, @options[:message] || 'Invalid ip address format') unless validator.valid?
  end
end

class MacAddressValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    validator = ::UniversalValidators::MacAddressValidator.new(value)
    record.errors.add(attribute, @options[:message] || 'Invalid mac address format') unless validator.valid?
  end
end
