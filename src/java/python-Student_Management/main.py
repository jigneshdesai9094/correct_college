
from admission import *
from attendance import *
from result import *
from attendance import calculate as cal
enr = get_admission("jignesh","Deesa","30/03/2003","BCA","90","23534352","MCA")

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

cal(enr,"10/1/2024")

dict={"PYTHON":80,"JAVA":100,"DBMS":90,"DATA STRUCTURE":90}

add_marks(enr,dict)
calculate(enr)
student_info(enr)
if(aligible !={}):
       print("\nYou are not aligible(fail) in Following Subjects : ")
       for key,value in aligible.items():
        print("subject :",key," attendance : ",value)
       
if(fail!={}):
       print("You are Fail in Following Subjects : ")
       for key,value in fail.items():
        print("subject : ",key," marks : ",value)



print("\n\n\n\n")
enr = get_admission("Rahul","Palanpur","30/03/2002","BCA","70","23534352","MCA")

add_attendance(enr,"1/1/2024","JAVA")
add_attendance(enr,"1/1/2024","PYTHON")
add_attendance(enr,"1/1/2024","DATA STRUCTURE")
add_attendance(enr,"1/1/2024","DBMS") 
add_attendance(enr,"2/1/2024","JAVA")
add_attendance(enr,"2/1/2024","PYTHON")
add_attendance(enr,"2/1/2024","DBMS")

cal(enr,"2/1/2024")
dict={"PYTHON":60,"JAVA":70,"DBMS":67,"DATA STRUCTURE":77}
add_marks(enr,dict)
calculate(enr)
student_info(enr)
if(aligible !={}):
       print("\nYou are aligible(fail) in Following Subjects : ")
       for key,value in aligible.items():
        print("subject :",key," attendance : ",value)
       
if(fail!={}):
       print("You are Fail in Following Subjects : ")
       for key,value in fail.items():
        print("subject : ",key," marks : ",value)
