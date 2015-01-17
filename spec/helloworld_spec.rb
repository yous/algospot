RSpec.describe 'HELLOWORLD', :mocked_stdout do
  subject { 'helloworld' }
  let(:input) { <<END }
5
World
Algospot
Illu
Jullu
Kodori
END
  let(:output) { <<END }
Hello, World!
Hello, Algospot!
Hello, Illu!
Hello, Jullu!
Hello, Kodori!
END

  it_behaves_like 'a problem'
end
