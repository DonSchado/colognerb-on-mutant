require 'spec_helper'

describe 'FancyAlgorithm' do

  let(:random_list) { %w[2 1 3 5 6 4 9 8 7] }
  let(:sorted_list) { %w[1 2 3 4 5 6 7 8 9] }

  context ':sort' do
    subject { FancyAlgorithm.new(:sort) }
    it { expect(subject.perform(random_list)).to eql(sorted_list) }
  end

  context ':unsort' do
    subject { FancyAlgorithm.new(:unsort) }
    it { expect(subject.perform(random_list)).to_not eql(sorted_list) }
  end

end
