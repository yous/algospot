RSpec.describe 'MISPELL', :mocked_stdout do
  subject { 'mispell' }
  let(:input) { <<END }
4
4 MISSPELL
1 PROGRAMMING
7 CONTEST
3 BALLOON
END
  let(:output) { <<END }
1 MISPELL
2 ROGRAMMING
3 CONTES
4 BALOON
END

  it_behaves_like 'a problem'
end
