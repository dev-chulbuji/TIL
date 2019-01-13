# vi cheat sheet

## reference
- [http://blog.weirdx.io/post/55992](http://blog.weirdx.io/post/55992)

:x - 저장하고 vim 나가기
ZZ - 저장하나 vim 나가기

o - cursor 바로 밑 insert mode (open line after current line)  
O - cursor 바로 위 insert mode (open line before current line)  
A - curosr line end에 insert mode  
R - 쓰기모드 (Replace many word)  

### 시나리오
- visual mode로 변경 후 (v) 커서를 움직여 블럭 지정을 하고 복사(y) 붙혀넣기(p)
- visual mode로 변경 후 (v) 커서를 움직여 블럭 지정을 하고 tab이동(>)

---

### insert
i - 해당 커서 앞쪽에서 입력
a - 해당 커서 뒷쪽에서 입력

--- 

### cursor move 
w - 다음 단어 시작으로 이동(move to next word)    
W - 다음 띄어쓰기로 이동 (move to next blank)  
e - 해당 단어 끝으로 이동 (move to end of the word)  
E - 띄어쓰기 기준으로 젤 끝으로 이동 (move to end of Blank delimited word)  

b - 단어단위로 왼쪽으로 이동 (move to the beginning of the word)    
B - 띄어씌기 단위로 오른쪽으로 이동   

( - 문장 젤 앞으로 이동   
) - 문장 젤 끝으로 이동  
{ - 문단 젤 앞으로 이동   
} - 문단 젤 끝으로 이동  

0 - 그 줄 시작으로 이동  
$ - 그 줄 끝으로 이동  

1G - 파일의 시작으로 이동  
G - 파일의 끝으로 이동  

:n - n번째 줄로 이동  

; - 다음 검색 결과로 이동
, - 이전 검색 결과로 이동

m + a,b,c,.. - a,b,c,.. bookmark 달기
'a,b,c,.. : bookmark로 이동 


---

### delete txt
x - 오른쪽 글자 삭제  
X - 왼쪽 글자 삭제  
D - cursor부터 라인 끝까지 삭제  
dd - 라인 삭제  
  
C - cusor부터 라인 끝까지 지우고 insert mode    
cc - 한줄 지우고 insert mode  

---

### search
/string - search forward for string   
?string - search back for string  
n - search for next instance of string  
N - search for previous instance of string  

---

### replace
:s/pattern/string/flags - 해당 줄에 pattern에 맞는 단어를 string으로 변경  
:%s/pattern/string/flags - 전체 줄에 pattern에 맞는 단어를 string으로 변경   
* flags :: /g , /c - c는 confirm

---

### regular expressions
. - any single char except newline  
^ - beginning of the line  
$ - end of the line  
\< - beginning of the word  
\> - end of the word  

--- 

u - 전에 명령 취소  
~ - 대문자 소문자 변경