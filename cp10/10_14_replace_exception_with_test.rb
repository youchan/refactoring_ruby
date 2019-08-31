def execute(command)
  command.prepare if command.respond_to? :prepare
  command.execute
end
