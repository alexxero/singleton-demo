class Logger

  def initialize
    @f = File.open 'log.txt', 'a'
  end

  @@x = nil

  def self.instance
    if @@x == nil
      @@x = Logger.new
    end

    return @@x
  end

  def self.say
    puts 'haha'
  end

  def log data
    @f.puts data
  end
end

logger = Logger.new
logger.log 'hey'
Logger.instance.log 'blablabla' *3
#
# logger = Logger.new
# logger.say