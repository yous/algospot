# ALGOSPOT

[![Build Status](https://travis-ci.org/yous/algospot.svg?branch=master)](https://travis-ci.org/yous/algospot)

Solutions of <https://algospot.com>.

## Requirements

Ruby 1.9.3p484 (2013-11-22 revision 43786) [x86_64-linux]

## Solving problems

Use `rake new_problem[TITLE]` to create `spec/title_spec.rb`. It gets the example input and output like this:

``` sh
$ rake new_problem[mispell]
Enter the input: 4
4 MISSPELL
1 PROGRAMMING
7 CONTEST
3 BALLOON

Enter the output: 1 MISPELL
2 ROGRAMMING
3 CONTES
4 BALOON

Creating new spec file: spec/mispell_spec.rb
```

Then the content of `spec/mispell_spec.rb` will be:

``` ruby
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
```

## Testing

Test whether the every problems runs with the example, run `rake` or `rspec`. To test specific problem, specify the path like `rspec spec/mercy_spec.rb`.
