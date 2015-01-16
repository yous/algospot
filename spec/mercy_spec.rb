RSpec.describe 'MERCY', :mocked_stdout do
  subject { 'mercy' }
  let(:input) { <<END }
2
END
  let(:output) { <<END }
Hello Algospot!
Hello Algospot!
END

  it_behaves_like 'a problem'
end
