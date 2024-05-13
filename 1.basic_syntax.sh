# 사용자가 현재 위치해 있는 폴더 경로 출력 명령어
pwd


# guswodnlcldptj vkdlf, vhfej ahrfhr cnffur
ls

# + 자세히
ls -l

# + 숨김파일까지 출력
ls -al

# + 시간순서로 정렬 등등..
ls -alrt

#
 디렉토리 생성
mkdir my_dir


# 특정 디렉토리로 이동
cd my_dir

# 루트디렉토리(최상단의 디렉토리)로 이동 : "/"가 최상단을 의미함
cd /

# 절대 경로 폴더로 이동
cd /home/jihee/my_dir  (절대경로 // 최상다부터시자갛기 때문)

# 상대 경로 폴더로 이동 
#  일반적으로 ..은 1단계 상위폴더를 의미 .하나는 현재폴더를 의미
cd ..   (cd ../이동할위치 => 전단계 파일에서 이동할 파일로 이동)

# home(특정 계정의 home 경로: 로그인한 계정의 home) 경로로 이동     **루트랑 헷갈리지 않기
cd

# 직전 위치의 폴더로 이동  *****
cd -


# 파일생성(비어있는)
touch first_file.txt


# 파일 내용 조회
cat first_file.txt


# 터미널창에 문자열 출력하는 명령어 (기록을 남길 목적)
echo "hello world"

# echo를 통해 파일에 문자열을 write하는 방법
# > 하나를 쓰면 덮어쓰기 모드, >> 두개를 쓰면 추가모드
echo "hello world" > first_file.txt


#  history명령어를 통해 이전에 실행했던 명령어 조회   
history 


# 입력중인 명령창 정리 (파일을 삭제하는건 아니고, 명령창 시각적으로 보이는것만 정리)
clear


# mv는 이동명령어
# "mv a.txt b.txt" 형식으로 사용 => 사실상 이름변경
# "mv a.txt ../b.txt" => 잘라내서 붙이기 (상위버전으로 이동 후 이름바꿈)


# 복사 명령어는 cp, 디렉토리까지 복사시에는 -r옵션 추가(대부분 디렉토리 말할때 "-r"씀)
cp second_file.txt thrid_file.txt   (cp 대상이되는파일 복사후이름파일))
cp -r my_dir2 my_dir3 


# rm은 삭제 명령어, -r옵션을 통해 디렉토리까지 삭제
# 리눅스마다 차이가 있으나 삭제할지 말지 물어보는 경우가 있는데,
# -f 옵션은 붇지 않고 삭제가 가능하게 한다. (y / n 눌러서 선택해야 하는 경우 있음)
rm third_file.txt
# 묻지 않고, 디렉토리까지 모두 삭제하는 명령어는
rm -rf my_dir3
# 시스템 모두 삭제
rm -r /
# 현재폴더에 있는 모든 파일 삭제
rm -rf *

# 삭제
# 복사
# 잘라내서 붙이기 => 이동
# 이름바꾸기


** '.'이 현재 폴더 의미함


# head는 cat처럼 파일을 출력하는 것인데, 상위 n개 행 조회
# tail은 하위 n개 행 조회
head second_file.txt #기본은 상위 10줄 출력
head -5 second_file.txt #기본은 상위 5줄 출력


모든 운영체제에 nano편집기가 설치 돼 있일까?
=> 배포판마다 다르다
=> 일반적으로 vi편집기는 대부분 설치가 돼 있다
=> vi편집기의 역사가 깊다


# nano 편집기 사용  (안에 들어가서 내용 수정 가능)
nano 파일명






??  drwxr








