RSpec.describe 'URI', :mocked_stdout do
  subject { 'uri' }
  let(:input) { <<END }
2
Happy%20Joy%20Joy%21
http://algospot.com/%2a
END
  let(:output) { <<END }
Happy Joy Joy!
http://algospot.com/*
END

  it_behaves_like 'a problem'
end
