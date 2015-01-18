RSpec.describe 'DRAWRECT', :mocked_stdout do
  subject { 'drawrect' }
  let(:input) { <<END }
2
5 5
5 7
7 5
30 20
10 10
10 20
END
  let(:output) { <<END }
7 7
30 10
END

  it_behaves_like 'a problem'
end
