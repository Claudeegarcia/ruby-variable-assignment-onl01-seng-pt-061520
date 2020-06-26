require_relative '../variable.rb'

RSpec.configure do |config|
  config.order = 'default'
end

def get_variable_from_file(file, variable)
  file_scope = binding
  filhttps://learn.co/tracks/online-software-engineering-pt-first-mile/first-mile/variables-and-methods/variable-assignment-lab#e_scope.eval(File.read(file))

  begin
    return file_scope.local_variable_get(variable)
  rescue NameError
    raise NameError, "local variable `#{variable}` not defined in #{file}."
  end
end
https://learn.co/tracks/online-software-engineering-pt-first-mile/first-mile/variables-and-methods/variable-assignment-lab#
