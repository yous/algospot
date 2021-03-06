RSpec.shared_examples 'a problem' do
  it 'runs' do
    mocked_input = StringIO.new(input)
    allow_any_instance_of(Kernel).to receive(:gets) { mocked_input.gets }
    allow(ARGF).to receive(:map) do |*args, &block|
      mocked_input.map(*args, &block)
    end
    allow(ARGF).to receive(:each_slice) do |*args, &block|
      mocked_input.each_slice(*args, &block)
    end
    require_relative "../../problems/#{subject}"
    expect($stdout.string).to eq(output)
  end
end
