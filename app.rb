class Logger

  def initialize
    @f = File.open 'log.txt', 'a'
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
#
# logger = Logger.new
# logger.say