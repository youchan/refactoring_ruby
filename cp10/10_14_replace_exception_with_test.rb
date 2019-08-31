def execute(command)
  command.prepare rescue nil
  command.execute
end
