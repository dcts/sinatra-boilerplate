class User
  attr_reader :id, :first_name, :last_name

  def initialize(attr = {})
    @id = attr[:id]
    @first_name = attr[:first_name]
    @last_name = attr[:last_name]
    @email = attr[:email]
  end

  def to_s
    "#{@first_name} #{last_name} (#{@email})"
  end

  def self.find(id)
    user = User.all.find { |user| user.id == id }
  end

  def self.all
    users = []
    users << User.new(id: 0, first_name: 'Allan',  last_name: 'Müller', email: 'allan_müller@example.com')
    users << User.new(id: 1, first_name: 'David',  last_name: 'Müller', email: 'david_müller@example.com')
    users << User.new(id: 2, first_name: 'Leon',   last_name: 'Müller', email: 'leon_müller@example.com')
    users << User.new(id: 3, first_name: 'Thomas', last_name: 'Müller', email: 'thomas_müller@example.com')
  end
end


