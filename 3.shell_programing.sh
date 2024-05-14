# script 파일 생성
touch myscript.sh
nano myscript.sh

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
if [ 1 -gt 2 ]; then
    echo "hello world1"
else 
    echo "hello 
    world2"
fi 

# if문과 변수활용, 파일(-f)/디랙토리(-d) 존재여부 확인
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
- echo로 start 출력
- 만약에 test_dir이 현재 폴더에 있으면 해당 폴더로 이동
- 없으면 해당 폴더 생성
- echo로 end 출력

echo "start"
if [ -d test_dir ]; then
    cd test_dir
else 
    mkdir test_dir
    cd test_dir
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
