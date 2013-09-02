require 'CSV'

class GradeReader
  @@student_record = {}

  def read(file)
    CSV.foreach(file) do |row|
      student_name = row.shift
      grades = row
      @@student_record[student_name] += grades
    end
  end
end

record = GradeReader.new('student_grade_sample.csv')
puts @@student_record