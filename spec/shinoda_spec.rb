# frozen_string_literal: true

RSpec.describe Shinoda do
  describe '.check_digit' do
    subject { described_class.check_digit(basic_number) }

    context 'when basic number is a 12-digit' do
      describe 'and 700110005901' do
        let(:basic_number) { '700110005901' }

        it { is_expected.to eq '8' }
      end

      describe 'and 120300210231' do
        let(:basic_number) { '120300210231' }

        it { is_expected.to eq '6' }
      end
    end

    context 'when basic number is a 11-digit' do
      describe 'and 01234567890' do
        let(:basic_number) { '01234567890' }

        it { expect { subject }.to raise_error(ArgumentError) }
      end
    end

    context 'If English character are included' do
      describe '70011000590A' do
        let(:basic_number) { '70011000590A' }

        it { expect { subject }.to raise_error(ArgumentError) }
      end
    end
  end

  describe '.corporate_number' do
    subject { described_class.corporate_number(basic_number) }

    context 'when basic number is a 12-digit' do
      describe 'and 700110005901' do
        let(:basic_number) { '700110005901' }

        it { is_expected.to eq '8700110005901' }
      end

      describe 'and 120300210231' do
        let(:basic_number) { '120300210231' }

        it { is_expected.to eq '6120300210231' }
      end
    end
  end
end
