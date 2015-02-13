RSpec.describe 'XHAENEUNG', :mocked_stdout do
  subject { 'xhaeneung' }
  let(:input) { <<END }
2
two + three = ivef
zero * zero = one
END
  let(:output) { <<END }
Yes
No
END

  it_behaves_like 'a problem'
end
