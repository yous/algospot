RSpec.describe 'ENCRYPT', :mocked_stdout do
  subject { 'encrypt' }
  let(:input) { <<END }
2
A
HelloWorld
END
  let(:output) { <<END }
A
HloolelWrd
END

  it_behaves_like 'a problem'
end
