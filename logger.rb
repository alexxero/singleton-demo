require 'singleton'

class Logger
  include Singleton

  def initialize
    @f = File.open 'log.txt', 'a'
  end

  def log data
    @f.puts data
  end

end