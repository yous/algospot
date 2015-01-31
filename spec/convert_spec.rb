RSpec.describe 'CONVERT', :mocked_stdout do
  subject { 'convert' }
  let(:input) { <<END }
5
1 kg
2 l
7 lb
3.5 g
0 l
END
  let(:output) { <<END }
1 2.2046 lb
2 0.5284 g
3 3.1752 kg
4 13.2489 l
5 0.0000 g
END

  it_behaves_like 'a problem'
end
