# frozen_string_literal: true

RSpec.describe Shinoda do
  describe '.check_digit' do
    subject { described_class.check_digit(basic_number) }

    context '12桁の基礎番号の場合' do
      describe '700110005901の時' do
        let(:basic_number) { '700110005901' }

        it { is_expected.to eq '8' }
      end

      describe '120300210231の時' do
        let(:basic_number) { '120300210231' }

        it { is_expected.to eq '6' }
      end
    end

    context '11桁の基礎番号の場合' do
      describe '01234567890' do
        let(:basic_number) { '01234567890' }

        it { expect { subject }.to raise_error(ArgumentError) }
      end
    end

    context '12桁の基礎番号に英文字が含まれている場合場合' do
      describe '70011000590A' do
        let(:basic_number) { '70011000590A' }

        it { expect { subject }.to raise_error(ArgumentError) }
      end
    end
  end
end
