require_relative '../db/SqlRunner'
require "pry-byebug"

class House

  attr_accessor :id, :name, :logo

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @logo = options['logo']
  end

  def self.all()
    sql = "SELECT * from houses;"
    SqlRunner.run(sql).map {|options| House.new(options)}
  end


  def save()
    sql = "INSERT INTO houses (name, logo) VALUES ('#{@name}', '#{@logo}') RETURNING *;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i()
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id=#{id};"
    house = SqlRunner.run(sql)
    result = House.new(house.first)
    return result
  end



end