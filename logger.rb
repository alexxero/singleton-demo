class Logger

  def initialize
    @f = File.open 'log.txt', 'a'
  end

  @@x = Logger.new

  def self.instance
    return @@x
  end

  def log data
    @f.puts data
  end

  private_class_method :new
end