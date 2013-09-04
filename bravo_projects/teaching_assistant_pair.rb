require 'CSV'
require 'pry'
# GradeReader - an object that is responsible for reading in grade data from a CSV.
class GradeReader
  def read(file)
  student_file = []
    CSV.foreach(file) do |row|
      student_file << row
    end
    return student_file
  end
end



class AssignmentGrade
  def total(student_file)
    student_file.each do |row|
      total = row[1]+row[2]+row[3]+row[4]+row[5]
    end
  end
  def average(total,num_of_grades)
    average = total / num_of_grades
  end
end



class Student
  def name(student_file)
    student_file.each do |row|
      student_name = row[0]
    end
  end
end

reader = GradeReader.new
student = Student.new
assignmentgrade = AssignmentGrade.new


student_file = reader.read('student_grade_sample.csv')
puts student.name(student_file)
puts assignmentgrade.total(student_file)


