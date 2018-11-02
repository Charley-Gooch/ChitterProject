require 'pg'

class Details
  attr_reader :id, :name, :password, :email

  def initialize(id:, name:, password:, email:)
    @id = id
    @name = name
    @password = password
    @email = email
  end

  def self.create(name:, password:, email:)
    connection = PG.connect(dbname: 'db_chitter')
    result = connection.exec("INSERT INTO users (name, password, email) VALUES('#{name}', '#{password}', '#{email}') RETURNING id, name, password, email")
    Details.new(id: result[0]['id'], name: result[0]['name'], password: result[0]['password'], email: result[0]['email'])
  end
end
