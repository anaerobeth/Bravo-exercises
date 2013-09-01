require 'CSV'

# GradeReader - an object that is responsible for reading in grade data from a CSV.
class GradeReader
  def read(file)
  student_file = []
  grades = []
    CSV.foreach(file) do |row|
    student_file << row
    end
    return student_file
  end
end


# Student - an object that represents a participant in a class
class Student
  attr_accessor :student_names

  def get_name(item)
    name = item[0]
    #return name
  end

end


# AssignmentGrade - an object that encapsulates the concept of a given assignment grade
class AssignmentGrade
  attr_accessor :grade

  def get_grades(item)
    grades = [item[1], item[2], item[3], item[4], item[5]]
    #return grades
  end

  def average(grades)
    average_grade = ''
    total = grades.inject(:+)
    average_grade = total.to_f / grades.length
    return average_grade
  end

end

reader = GradeReader.new()
student = Student.new()
grade = AssignmentGrade.new()


student_records = {}
student_file = reader.read('student_grade_sample.csv')
puts student_file
student_file.each do |record|
  name = student.get_name(record)
  grades = grade.get_grades(record)
  student_records[name] =  grades
end

#puts student_records
#a = [10, 20, 30]
#puts grade.average(a)



