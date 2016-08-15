require_relative '../lib/encryptor'

describe 'Partial passwords' do
  let(:password) { '0987654321' }
  let(:encryptor) { Encryptor.new password }

  it 'valid' do
    expect(
      encryptor.valid?(positions: [1, 2, 3], values: [0, 9, 8])
    ).to eq true
  end

  it 'fails' do
    expect(
      encryptor.valid?(positions: [1, 2, 3], values: [0, 9, 7])
    ).to eq false
  end
end
