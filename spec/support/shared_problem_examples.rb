RSpec.shared_examples 'a problem' do
  it 'runs' do
    allow($stdin).to receive(:gets).and_return(*input.lines)
    require subject
    expect($stdout.string).to eq(output)
  end
end
