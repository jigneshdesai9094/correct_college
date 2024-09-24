from admission import *
start_date="1/1/2024"
Attendance=dict()
def add_attendance(enroll,date,sub):
   if(enroll in Attendance and sub in Attendance[enroll]):
         Attendance[enroll][sub].append(date)
   else:   
       if(enroll not in Attendance):
           Attendance[enroll]={sub:[date]}
       else:
           Attendance[enroll].update({sub:[date]})
  # print(Attendance)

def calculate_fully(enroll,date):
    day=0
    if(date.split("/")[1]==start_date.split("/")[1]):
        day=int(date.split("/")[0])
    else:
        m=1
        while(m<int(date.split("/")[1])):
            day+=30
            m+=1
        day+=int(date.split("/")[0])
    for sub in students[enroll]['attendance'].keys():
        if(sub in Attendance[enroll]):
            present_day = len(Attendance[enroll][sub])

            per=present_day*100/day
            #print("Total day : ",day," Attendace presnet :",present_day," per : ",per)
            students[enroll]["attendance"][sub]=per  




