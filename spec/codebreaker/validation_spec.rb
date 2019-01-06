require 'spec_helper'

RSpec.describe Validation do
  subject(:console) { Codebreaker::Console.new }

  let(:valid_length) { 'a' * (Validation::FINISH_LENGTH - 1) }
  let(:invalid_length) { 'a' * (Validation::FINISH_LENGTH + 1) }
  let(:valid_klass) { String }
  let(:invalid_klass) { Integer }

  describe 'valid_check' do
    context 'when #check_for_length? true' do
      it { expect(console.check_for_length?(valid_length)).to eq(true) }
    end

    context 'when #check_for_class? true' do
      it { expect(console.check_for_class?(valid_length, valid_klass)).to eq(true) }
    end
  end

  describe 'invliad_check' do
    context 'when #check_for_length? false' do
      it { expect(console.check_for_length?(invalid_length)).to eq(false) }
    end

    context 'when #check_for_class? false' do
      it { expect(console.check_for_class?(valid_length, invalid_klass)).to eq(false) }
    end
  end
end
