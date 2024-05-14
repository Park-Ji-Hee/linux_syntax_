# 사용자 추가
useradd 사용자명

# 패스워드 지정
sudo passwd 사용자명

# 사용자목록 조회
cat /etx/passwd

# 사용자전환 : 비밀번호는 전환하고자 하는 사용자 비밀번호
sudo su - 사용자명

# 파일 권한 관리
# 권한은 3파트(user:grou:others)로 구성 돼 있고, 각 권한은 r(4)w(2)x(1)이루어져 있음
chmod 777 test.sh 
chmode u+x test.sh  #(user한테 실행권한을 추가하겠다.)
chmode g-w test.sh  #(group한테 쓰기 권한을 빼겠다.)

# 파일 소유자/그룹 관리
# 소유자와 그룹 변경 
chown 소유자:그룹 파일명










