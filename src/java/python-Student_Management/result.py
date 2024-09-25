#In This module add student marks and calculate grade and per
from admission import students
fail={}
aligible={}
def add_marks(enroll,d):
   ''' add subject marks into students inner dictionary marks'''
   fail.clear()
   aligible.clear()
   for key,value in d.items():
  
       if(students[enroll]["attendance"][key]<50):
         
            aligible.update({key:students[enroll]["attendance"][key]})
            students[enroll]["marks"][key]=0
            continue
       if(value<40):
          fail.update({key:value})
        #   students[enroll]["marks"][key]=value
        #   continue
       
       students[enroll]["marks"][key]=value

def calculate(enroll):
    ''' In this function to calculate percantage and grade'''
    total_marks=0
    for value in students[enroll]["marks"].values():
        total_marks+=value
    per = total_marks/4
    grade=""
    students[enroll]["result"]["percantage"]=per
 
    if(aligible !={}):
       return
    if(fail!={}):
       return  
    
    if(per>=90):
       grade="A"
    elif(per>=80):
        grade="B"
    elif(per>=70):
        grade="C"
    elif(per>=60):
        grade="D"
    elif(per>=50):
        grade="E"
    elif(per>=40):
        grade="pass"
    else:
        grade="fail"
    
    students[enroll]["result"]["grade"]=grade