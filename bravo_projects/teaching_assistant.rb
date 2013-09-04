require 'CSV'
require 'pry'
# GradeReader - an object that is responsible for reading in grade data from a CSV.
class GradeReader
  def read(file)
  student_file = []
    CSV.foreach(file) do |row|
      student_file << row
    end
    puts student_file
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
  grades = []
  def get_grades(item)
    grades = [item[1].to_f, item[2].to_f, item[3].to_f, item[4].to_f, item[5].to_f]
  end

 # calculate the average
  def average(grades)
    average_grade = 0
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

  def write_grade(summary)
    File.open('class_record.csv', 'a') do |f|
      f.puts summary
    end
  end
end

# GradeSummary - an object that encapsulates the concept of the class' aggregate performance
class GradeSummary

end


reader = GradeReader.new()

binding.pry
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

class_averages = {}
average_summary = []

student_records.each do |name, grades|
  average = grade.average(grades)
  class_averages[name] = average
  letter_grade = final_grade.get_letter_grade(average)
  summary = "#{name}: #{grades}: #{average}: #{letter_grade}"
  puts summary
  final_grade.write_grade(summary)
  average_summary << average
end

puts average_summary.inspect
class_statistics = {}
class_statistics['average'] = grade.average(average_summary)
class_statistics['minimum'] = average_summary.min
class_statistics['maximum'] = average_summary.max
  #:standard_deviation =


puts class_statistics

