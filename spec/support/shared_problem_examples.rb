RSpec.shared_examples 'a problem' do
  it 'runs' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return(*input.lines)
    require subject
    expect($stdout.string).to eq(output)
  end
end
