#This module is perform student admission operation like get student detail,do payment and show student information

students=dict()
enroll = 240160510000

def get_admission(name,city,date,pcours,pc_per,debitno,course):
    '''Get student details and store in dictionary'''
    global enroll
    enroll += 1
    students[enroll]={"name":name,"city":city,"date":date,"pcours":pcours,"pc_per":pc_per,
                      "course":course,
                      "attendance":{"PYTHON":0,"JAVA":0,"DBMS":0,"DATA STRUCTURE":0},
                      "marks":{"PYTHON":None,"JAVA":None,"DBMS":None,"DATA STRUCTURE":None}
                      ,"result":{"percantage":None,"grade":None},"debit_no":""}
    do_payment(enroll,debitno)
    return enroll


def do_payment(enroll,debit_card_no):
    '''Get debit card no to do payment'''
    students[enroll]["debit_no"]=debit_card_no
    print("Payment do Successfully")


def student_info(enroll):
    ''' Display Student Information'''
    print("----- Student Info ------------")
    print("Enrollment_NO :{}\nCourse : {}\nName:{}\nCity:{}\ndate:{}\nPrevious_course:{}\nPc_percantage:{}".
          format(enroll,students[enroll]["course"],students[enroll]["name"],students[enroll]["city"],students[enroll]["date"],
                 students[enroll]["pcours"],students[enroll]["pc_per"]))
    print("Attendance : ")
    for key,value in students[enroll]["attendance"].items():
         print(key," : ",value,"%")
    l=0
    for key,value in students[enroll]["marks"].items():
        if value != None:
           if(l==0):
               print("Marks : ")
               l=1
           print(key," : ",value)
    for key,value in students[enroll]["result"].items():
         if value != None:
          print(key," : ",value)

      
    
    


