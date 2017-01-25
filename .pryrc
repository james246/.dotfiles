# require 'irb/ext/save-history'
# IRB.conf[:SAVE_HISTORY] = 200
# IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"

# some commonly used dependencies
require 'net/http'
require 'json'

require 'awesome_print'
AwesomePrint.irb! if defined? AwesomePrint

if defined? ActiveRecord
  ActiveRecord::Base.logger = Logger.new STDOUT
end

if defined? PryByebug
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

def cls
  system 'clear'
end
