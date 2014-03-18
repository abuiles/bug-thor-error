require 'test_helper'
require 'generators/initializer_generator'

class InitializerGeneratorTest < Rails::Generators::TestCase
  tests ::InitializerGenerator
  destination File.expand_path("../tmp", File.dirname(__FILE__))

  test "raises an exception" do
    assert_raise ::Thor::Error do
      run_generator ["--thor"]
    end
  end

  test "raises other exception" do
    assert_raise RuntimeError do
      run_generator
    end
  end
end
