require_relative "../config/environment.rb"

class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  attr_accessor :id, :name, :grade

  def initialize(id=nil, name, grade)
    # self.drop_table
    # if self.id
    #   students = self
    #   DB[:conn].execute("DROP TABLE students")
    # end

    @id= id
    @name = name
    @grade = grade
  end

  def self.drop_table 
    sql = <<-SQL 
          DROP TABLE 
          IF EXISTS students
          SQL
    DB[:conn].execute(sql)
  end
end
