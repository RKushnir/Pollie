class PollsLoader
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def load_all_polls
    YAML::load_file(path)
  end
end
