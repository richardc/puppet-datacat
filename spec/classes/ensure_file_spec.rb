require 'spec_helper'

describe 'ensure_file' do
  it { should contain_file('/tmp/ensure_file').with_ensure('file') }
end
