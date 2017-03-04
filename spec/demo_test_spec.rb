describe 'Demo' do
  it 'should have version' do
    expect(`cat .ruby-version`.strip).to eq('2.3.3')
  end

  it 'should have gemset' do
    expect(`cat .ruby-gemset`.strip).to eq('test_app')
  end
end
