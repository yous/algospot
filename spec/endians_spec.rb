RSpec.describe 'ENDIANS', :mocked_stdout do
  subject { 'endians' }
  let(:input) { <<END }
4
2018915346
1
100000
4294967295
END
  let(:output) { <<END }
305419896
16777216
2693136640
4294967295
END

  it_behaves_like 'a problem'
end
