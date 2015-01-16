RSpec.shared_context 'mocked stdout', :mocked_stdout do
  around do |example|
    $stdout = StringIO.new
    example.run
    $stdout = STDOUT
  end
end
