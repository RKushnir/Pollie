class Poll
  attr_accessor :id, :question, :answers

  def initialize(attrs={})
    attrs.symbolize_keys!
    for attr_name in [:id, :question, :answers] do
      send :"#{attr_name}=", attrs[attr_name]
    end
  end

  def self.all
    @all ||= begin
      path = Rails.root.join('db', 'polls.yml')
      PollsLoader.new(path).load_all_polls
    end
  end

  def self.find(id)
    all.find {|p| p.id.to_s == id.to_s } or raise PollNotFoundError
  end

  def self.model_name
    ActiveModel::Name.new(self)
  end

  def to_param
    id
  end
end
