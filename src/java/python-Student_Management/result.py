from admission import *
fail={}
aligible={}
def add_marks(enroll,d):
   for key,value in d.items():
     
       if(students[enroll]["attendance"][key]<50):
            aligible.update({key:students[enroll]["attendance"][key]})
            students[enroll]["marks"][key]=0
            continue
       if(value<40):
          fail.update({key:value})
          students[enroll]["marks"][key]=value
          continue
       
       students[enroll]["marks"][key]=value

def calculate(enroll):
    total_marks=0
    for value in students[enroll]["marks"].values():
        total_marks+=value
    per = total_marks/4
    grade=""
    students[enroll]["result"]["percantage"]=per
 
    if(aligible !={}):
       print("\nYou are aligible(fail) in Following Subjects : ")
       for key,value in aligible.items():
        print("subject :",key," attendance : ",value)
        return
    if(fail!={}):
       print("You are Fail in Following Subjects : ")
       for key,value in fail.items():
        print("subject : ",key," marks : ",value)
        return  
    
    if(per>90):
       grade="A"
    elif(per>80):
        grade="B"
    elif(per>70):
        grade="C"
    elif(per>60):
        grade="D"
    elif(per>50):
        grade="E"
    elif(per>=40):
        grade="pass"
    else:
        grade="fail"
    
    students[enroll]["result"]["grade"]=grade