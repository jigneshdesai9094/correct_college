from admission import *
from attendance import *
from result import *

enr = get_admission("jignesh","Deesa","30/03/2003","BCA","90","23534352","MCA")
student_info(enr)
print("\n-------------------\n")
add_attendance(enr,"1/1/2024","PYTHON")
add_attendance(enr,"1/1/2024","JAVA")
add_attendance(enr,"2/1/2024","JAVA")
add_attendance(enr,"2/1/2024","PYTHON")
add_attendance(enr,"3/1/2024","JAVA")
add_attendance(enr,"3/1/2024","PYTHON")
add_attendance(enr,"4/1/2024","JAVA")
add_attendance(enr,"5/1/2024","JAVA")
add_attendance(enr,"6/1/2024","PYTHON")
add_attendance(enr,"6/1/2024","JAVA")
add_attendance(enr,"6/1/2024","DATA STRUCTURE")
add_attendance(enr,"7/1/2024","JAVA")
add_attendance(enr,"7/1/2024","PYTHON")
add_attendance(enr,"7/1/2024","DATA STRUCTURE")
add_attendance(enr,"7/1/2024","DBMS")
add_attendance(enr,"8/1/2024","JAVA")
add_attendance(enr,"8/1/2024","PYTHON")
add_attendance(enr,"8/1/2024","DBMS")
add_attendance(enr,"8/1/2024","DATA STRUCTURE")
add_attendance(enr,"9/1/2024","JAVA")
add_attendance(enr,"9/1/2024","PYTHON")
add_attendance(enr,"9/1/2024","DATA STRUCTURE")
add_attendance(enr,"9/1/2024","DBMS")
add_attendance(enr,"10/1/2024","JAVA")
add_attendance(enr,"10/1/2024","PYTHON")
add_attendance(enr,"10/1/2024","DATA STRUCTURE")
add_attendance(enr,"10/1/2024","DBMS")

print(Attendance)
calculate_fully(enr,"10/1/2024")
student_info(enr)

print("\n\n")
dict={"PYTHON":80,"JAVA":100,"DBMS":90,"DATA STRUCTURE":90}
add_marks(enr,dict)
calculate(enr)
student_info(enr)


