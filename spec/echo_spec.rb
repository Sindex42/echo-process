require 'echo'

describe '#echo' do
  it 'repeats what you say' do
    expect(echo('hello')).to include 'hello'
  end
end

describe '#exit?' do
  it 'checks if the input is "exit"' do
    expect(input_is_exit?('exit')).to eq true
  end

  it 'checks if the input is not "exit"' do
    expect(input_is_exit?('hi')).to eq false
  end
end

describe '#format_time_string' do
  let(:test_time) { Time.new(2018, 01, 9, 16, 26) }

  it 'creates a formatted time string' do
    expect(format_time_string(test_time)). to eq '2018-01-09 | 16:26'
  end
end
