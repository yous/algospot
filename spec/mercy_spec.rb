RSpec.describe 'MERCY' do
  before(:example) { $stdout = StringIO.new }
  after(:example) { $stdout = STDOUT }

  it 'runs with example' do
    allow($stdin).to receive(:gets).and_return("2\n")
    require 'mercy'
    expect($stdout.string).to eq("Hello Algospot!\n" \
                                 "Hello Algospot!\n")
  end
end
