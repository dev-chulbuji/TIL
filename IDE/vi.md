# vi cheat sheet

ZZ : 저장하고 나가기

o - cursor 바로 밑 insert mode (open line after current line)
O - cursor 바로 위 insert mode (open line before current line)
A - curosr line end에 insert mode
R - 쓰기모드 (Replace many word)

### cursor move 
w - 다음 단어 시작으로 이동(move to next word)  
W - 다음 띄어쓰기로 이동 (move to next blank)
e - 해당 단어 끝으로 이동 (move to end of the word)
E - 띄어쓰기 기준으로 젤 끝으로 이동 (move to end of Blank delimited word)

b - 단어단위로 왼쪽으로 이동 (move to the beginning of the word)  
B - 띄어씌기 단위로 오른쪽으로 이동 

( - 문장 젤 앞으로 이동 
) - 문장 젤 앞으로 이동
{ - 문단 젤 앞으로 이동 
} - 문단 젤 끝으로 이동

0 - 그 줄 시작으로 이동
$ - 그 줄 끝으로 이동

1G - 파일의 시작으로 이동
G - 파일의 끝으로 이동

:n - n번째 줄로 이동

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
~ - 대문자 소문자 변