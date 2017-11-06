# 1. 특정 폴더로 들어 간다.
# 2. 파일을 생성한다.
# 3. 파일을 작성한다.

puts Dir.pwd # 현재 디렉토리 확인

Dir.chdir("src") # how to ruby change directory

puts Dir.pwd

# 30개의 파일을 만든다. > 파일을 만든다 > 30번을 반복한다.
# 1.txt ~ 30.txt
# 1.txt => "1번째 내용", 2.txt => "2번째 내용" ...

# Creating 1 file
# cf) https://stackoverflow.com/questions/7911669/how-to-create-a-file-in-ruby
# cf) # https://www.joinc.co.kr/w/Site/Ruby/File
exfile = File.new("ex.txt", "w")
exfile.puts("ex file 입니다")
exfile.close

# 파일을 읽고 쓰고 지우고 등등 할때 .open을 사용한다
File.open("out.txt", "w") do |f|     
  # 파일 안에 .write를 통해서 내용을 적는다.
  f.write("잘 써지는 감?")   
end

# for i in (1 .. 30)
#     fileName = i.to_s + ".txt"
#     content = i.to_s + "번째 내용"
#     temp = File.new(fileName, "w")
#     temp.puts(content)
#     temp.close
# end

30.times do |i|
    i += 1
    
    File.open(i.to_s + ".txt", "w") do |f|     
        # 파일 안에 .write를 통해서 내용을 적는다.
        f.write(i.to_s + "번째 내용")   
    end
end


