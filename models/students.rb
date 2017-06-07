require_relative '../db/SqlRunner'
require "pry-byebug"

class Student

  attr_accessor :first_name, :last_name, :house_id, :age

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house_id = options['house_id'].to_i
    @age = options['age'].to_i
  end

  def self.all()
    sql = "SELECT * FROM students;"
    students = SqlRunner.run(sql)
    return students.map { |options| Student.new(options)}
  end

  def save()
    sql = "INSERT INTO students (first_name, last_name, house_id, age) VALUES ('#{@first_name}', '#{@last_name}', #{@house_id}, #{@age}) returning *;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i()
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id=#{id};"
    student = SqlRunner.run(sql)
    result = Student.new(student.first)
    return result
  end

  def houses()
    sql = "SELECT * FROM houses WHERE id = #{@house_id};"
    houses = SqlRunner.run(sql)
    result = House.new(houses.first)
    return result
  end

def name
  return "#{@first_name} #{@last_name}"
end

end