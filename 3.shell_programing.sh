# 복사 붙여넣기
ctrl shift c
ctrl shift v

# script 파일 생성
    (디렉토리 생성 => mkdir // file, script 생성 => touch 
    // script, file 안의 내용 추가 및 변경 => nano
    // file == 텍스트, 이미지, 음악 등등
    // script == 명령어, 특정작업 등등)
touch myscript.sh
nano myscript.sh

# cat 명령어 : nano안들어가고 파일내용 보기
cat 파일명

# echo 명령어 : nano안들어가고 파일내용 덮어쓰기/이어쓰기
echo "내용" #('내용'이 실행될 떄 터미널 창에 출력됨)
echo "내용" > 파일명    #('내용'을 '파일명'에다가 덮어쓰기)
echo "내용" >> 파일명   #('내용'을 '파일명'에다가 이어쓰기)

# 명령어 : cp / mv
cp 파일1 파일2 #(파일1을 파일2라는 이름으로 복사)
mv 파일1 파일2 #(파일1을 파일2로 이동 == 파일명을 파일1에서 파일2로 바꾼다)

####
    1. 
    2. 
    3. 
    4.
    5.
    6. 
    7. script

    echo "script start"
    cd
    mkdir my_dir4
    cd my_dir4
    touch file1.text
    touch file2.text
    echo "hello file1" > file1.txt
    echo "hello file2" > file2.txt
    cp file1.txt file1_backup.txt
    mv file2.txt file2_rename.txt
    ls -al
    echo "sciprt end"


# if문
    -gt (; great then / => a -gt b ==> a는 b보다 크다)
if [ 1 -gt 2 ]; then
    echo "hello world1"
else 
    echo "hello 
    world2"
fi 

# if문과 변수활용, 파일(-f)/디랙토리(-d) 존재여부 확인
    $ (== bash스크립트에서 변수값 참조시 사용)
file_name="second_file.txt"
if [ -f "$file_name" ]; then  #변수값을 불러올때 $를 앞에 써야됨
    echo "$file_name exists"
else
    echo "$file_name does not exist"
fi

# for문 기본
for a in {1..100} # 1~100까지 반복, 반복될때마다 a에 담음
do
    echo "hello world$a"
done

#### if문 실습
***** 대괄호와 안에 값 1칸 띄어쓰기 해야함 *****
    - echo로 start 출력
    - 만약에 test_dir이 현재 폴더에 있으면 해당 폴더로 이동
    - 없으면 해당 폴더 생성
    - echo로 end 출력

echo "start"
if [ -d "test_dir" ]; then
    cd test2_dir || exit
else 
    mkdir test2_dir
    cd test2_dir
fi
echo "end"

# for문 활용한 count세기
count=0
for a in {1..100}
do
    ((count++))
done
echo "count is $count"  

# for문 활용한 모든 파일, directory 목록 출력하기
for a in *  #in의 역할이 하나씩 꺼내는거
do
    echo "a is $a"
done
 
 
*********
# for문 활용한 file의 개수와 directory 파일 그외의 개수 세기
dir_count=0
others=0
for a in * 
do
    if [ -d "$a" ];then
        ((dir_count++))
    else
        ((others))
    fi
done
echo "dir_count is $dir_count"
echo "others is $others"

=> file 지칭 / directory 이외 지칭
=> for 해당 지칭 변수 대입
=> "*" 의미
