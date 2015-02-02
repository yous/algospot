RSpec.describe 'HOTSUMMER', :mocked_stdout do
  subject { 'hotsummer' }
  let(:input) { <<END }
3
90
10 10 10 10 10 10 10 10 10
1000
77 77 70 11 34 35 41 83 54
50
10 20 30 40 50 60 50 40 30
END
  let(:output) { <<END }
YES
YES
NO
END

  it_behaves_like 'a problem'
end
