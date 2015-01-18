RSpec.describe 'LECTURE', :mocked_stdout do
  subject { 'lecture' }
  let(:input) { <<END }
4
abbaaccb
dddcccbbbaaa
geegeegeegeebabybabybaby
oh
END
  let(:output) { <<END }
abacbacb
aababbccdcdd
babababybybyeeeeegeggege
oh
END

  it_behaves_like 'a problem'
end
