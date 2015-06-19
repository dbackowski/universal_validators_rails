require 'spec_helper'

describe UniversalValidatorsRails do
  before(:all) do
    class Dummy
      include ActiveModel::Validations

      attr_accessor :date, :date_time, :ip_address, :mac_address

      validates :date, date: true
      validates :date_time, date_time: true
      validates :ip_address, ip_address: { with_mask: true }
      validates :mac_address, mac_address: true
    end
  end

  describe 'any class that include ActiveModel::Validations' do
    it 'has :date validator' do
      expect(Dummy.validators.map(&:class).include?(DateValidator)).to be_truthy
    end

    it 'has :date_time validator' do
      expect(Dummy.validators.map(&:class).include?(DateTimeValidator)).to be_truthy
    end

    it 'has :ip_address validator' do
      expect(Dummy.validators.map(&:class).include?(IpAddressValidator)).to be_truthy
    end

    it 'has :mac_address validator' do
      expect(Dummy.validators.map(&:class).include?(MacAddressValidator)).to be_truthy
    end
  end
end
