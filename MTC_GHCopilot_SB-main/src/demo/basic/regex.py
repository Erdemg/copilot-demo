import re

e_regex = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
p_regex = r'^\\+?[1-9][0-9]{7,14}$'
s_regex = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$'

def checkvalid(text,regex):
    if re.search(regex,text):
        return True
    else:
        return False
    
    if __name__ == '__main__':
        print(("valid", "invalid")[checkvalid('',e_regex)])
        print(("valid", "invalid")[checkvalid('',p_regex)])
        print(("valid", "invalid")[checkvalid('',s_regex)])      

