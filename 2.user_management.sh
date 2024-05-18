#****** 콘솔창 잘 못눌러서 나가는 법
ctrl c

# 사용자 추가
useradd 사용자명
# 사용자 삭제
userdel 사용자명
# 사용자목록 조회
cat /etc/passwd

# 패스워드 지정/변경 (=> sudo 넣어야 함)
sudo passwd 사용자명

# 사용자전환 : 비밀번호는 전환하고자 하는 사용자 비밀번호
sudo su - 사용자명
# 바뀐권한자에서 기본 권한자(root)로 변경
exit

# 파일 권한 관리
# 권한은 3파트(user:grou:others)로 구성 돼 있고, 각 권한은 r(4)w(2)x(1)이루어져 있음
chmod 777 test.sh 
chmod u+x test.sh  #(user한테 실행권한을 추가하겠다. // u ==  user // + == 해당 기능 권한을 주겠다.)
chmod g-w test.sh  #(group한테 쓰기 권한을 빼겠다. // g ==  group // - == 해당 기능 권한을 빼앗겠다.)

# 파일 소유자/그룹 관리
# 소유자와 그룹 변경 
chown 소유자:그룹 파일명 #('파일명'을 '소유자'와 '그룹'으로 변경시킨다)
(chown alice:developers directory_name
 => 'directory_name'을 소유자를 'alice'로 그룹을 'developers'로 변경시킨다)










