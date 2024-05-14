# 파일 또는 디렉토리 검색 : find
find . -name "*.sh" #sh로 끝나는 파일 찾기

# 문자열 검색
grep -rni "hello"
ps -ef | grep "nginx"

# 파일 또는 디렉토리 검색 : find
find . -name "*.sh"
// find . -name "*.sh" | grep "hello" => 작동X(쉘의 내용 전체가 아닌 결과물만 넘기기 때문)

# 파일 검색 후 해당 내용에서 원하느 문자열 찾을때
# xargs : 넘겨온 파일목록을 한줄한줄 읽겠다라는 의미
find . -name "*.sh" | xargs grep -n "hello"

# exec 옵션을 통한 find와 grep
find . -name "*.sh" -exec grep -n "hello" {} \;
# (grep 자리에 다른 옵션이 올 수 있음) // -exec ~ {} \;  -> 한 세트임




