require 'bundler/setup'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

desc 'Initialize a new problem'
task :new_problem, :title do |t, args|
  fail 'Specify the title of the problem' unless args.title
  title = args.title.downcase
  spec_filename = "spec/#{title}_spec.rb"

  print 'Enter the input: '
  input = $stdin.read.chomp
  puts
  print 'Enter the output: '
  output = $stdin.read.chomp
  puts

  puts "Creating new spec file: #{spec_filename}"
  open(spec_filename, 'w') do |file|
    file.write(<<EOF)
RSpec.describe '#{title.upcase}', :mocked_stdout do
  subject { '#{title}' }
  let(:input) { <<END }
#{input}
END
  let(:output) { <<END }
#{output}
END

  it_behaves_like 'a problem'
end
EOF
  end
end

task default: :spec
