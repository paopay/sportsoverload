require 'spec_helper'

describe Vote do
  context "Associations" do
    it { should belong_to :voteable}
  end
end
