require 'CSV'

class GradeReader

  def read(file)
  student_record = {}
  grades = []
  puts student_record
  puts grades
    CSV.foreach(file) do |row|
      student_name = row.shift
      grades = row
      student_record[student_name] =  grades
    end
    puts student_record
  end
end

record = GradeReader.new()
record.read('student_grade_sample.csv')
