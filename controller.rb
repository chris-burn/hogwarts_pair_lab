require ('sinatra')
require ('sinatra/contrib/all')
require ('pry-byebug')

require_relative ('models/students')
require_relative ('models/houses')

get '/home' do
  erb(:splash)
end

get '/students' do
  @students = Student.all
  erb(:student_index)
end

get '/student/new' do
  @houses = House.all
  erb(:student_new)
end

get '/student/:id' do
  @students = Student.find(params[:id])
  erb(:student_show)
end

post '/students' do
  @student = Student.new(params)
  @student.save()
  erb(:student_create)
end

get '/houses' do
  @houses = House.all
  erb(:house_index)
end

get '/house/:id' do
  @houses = House.find(params[:id])
  erb(:house_show)
end




