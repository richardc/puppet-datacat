require 'spec_helper'

describe 'template_body' do
  describe "when called with a template that doesn't exist" do
    it "should raise an error" do
      should run.with_params('template_body/really_should_never_exist.erb').and_raise_error(Puppet::ParseError)
    end

    it "should say that the file is missing" do
      should run.with_params('template_body/really_should_never_exist.erb').and_raise_error(/Could not find template/)
    end
  end

  it "should return the body of a template that exists" do
    should run.with_params('template_body/test1.erb').and_return("Goodbye cruel world\n")
  end
end
