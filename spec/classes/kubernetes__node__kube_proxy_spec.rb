require 'spec_helper'

describe 'kubernetes::node::kube_proxy' do

  context 'with defaults for all parameters' do
    it 'should contain udp timeout' do
       should contain_file('/etc/kubernetes/proxy').with_content(/--udp-timeout=/)
    end
  end

  context 'with non-default minimum_version' do
    let (:params) {{ minimum_version: '1.2' }}
    it 'should not contain udp timeout' do
       should contain_file('/etc/kubernetes/proxy').without_content(/--udp-timeout=/)
    end
  end

end
