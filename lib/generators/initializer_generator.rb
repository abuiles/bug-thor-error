class InitializerGenerator < Rails::Generators::Base
  class_option :thor,
    :type => :boolean,
    :required => false

  def create_initializer_file
    if options.thor?
      raise ::Thor::Error
    else
      raise RuntimeError
    end
  end
end
