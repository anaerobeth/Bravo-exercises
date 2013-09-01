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
  def get_name(item)
    name = item[0]
  end
end


# AssignmentGrade - an object that encapsulates the concept of a given assignment grade
class AssignmentGrade
  def get_grades(item)
    grades = [item[1], item[2], item[3], item[4], item[5]]
  end

 # calculate the average
  def average(grades)
    average_grade = ''
    total = grades.inject(:+)
    average_grade = total.to_f / grades.length
    return average_grade
  end
end


# FinalGrade - an object that encapsulates the concept of a student's final grade
class FinalGrade
  def get_letter_grade(average)
    case
      when average >= 90
        return 'A'
      when average >= 80
        return 'B'
      when average >= 70
        return 'C'
      when average >= 60
        return 'D'
      else
        return 'F'
    end
  end
end

reader = GradeReader.new()
student = Student.new()
grade = AssignmentGrade.new()
final_grade = FinalGrade.new()


student_records = {}
student_file = reader.read('student_grade_sample.csv')
#puts student_file

# build the student records array
student_file.each do |record|
  name = student.get_name(record)
  grades = grade.get_grades(record)
  student_records[name] =  grades
end

#puts student_records
a = [10, 20, 30]
ave = grade.average(a)
puts ave
puts final_grade.get_letter_grade(ave)




