def calculate_gpa(period1, period2, period3,period4, period5, period6, period7,period8, p1type, p2type, p3type, p4type, p5type, p6type, p7type, p8type)
  
  period1 = letter_grade_to_point_value(period1)
  period2 = letter_grade_to_point_value(period2)
  period3 = letter_grade_to_point_value(period3)
  period4 = letter_grade_to_point_value(period4)
  period5 = letter_grade_to_point_value(period5)
  period6 = letter_grade_to_point_value(period6)
  period7 = letter_grade_to_point_value(period7)
  period8 = letter_grade_to_point_value(period8)
  
  gpa= ((period1.to_f+p1type.to_f)+(period2.to_f+p2type.to_f)+(period3.to_f+p3type.to_f)+(period4.to_f+p4type.to_f)+(period5.to_f+p5type.to_f)+(period6.to_f+p6type.to_f)+(period7.to_f+p7type.to_f)+(period8.to_f+p8type.to_f))/8.0
  
  return gpa
end

def letter_grade_to_point_value(grade)
  if (grade.upcase == "A")
    grade = 4
    elsif grade.upcase =="B"
    grade = 3
    elsif grade.upcase =="C"
    grade = 2
    elsif grade.upcase == "D"
    grade = 1
    elsif grade.upcase == "F"
    grade = 0
    else
    grade = grade.to_f
  end
  return grade
end
