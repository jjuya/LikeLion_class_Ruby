# 1. 해당 폴더로 들어간다.
# 2. 폴더 안을 돌면서 파일들의 이름을 가져온다
# 3. 각각의 이름을 변경한다. ex) 1.txt => jju1.txt

# cf) https://stackoverflow.com/questions/5530479/how-to-rename-a-file-in-ruby
# File.rename("test.txt", "hope.txt")

# cf) https://stackoverflow.com/questions/2512254/iterate-through-every-file-in-one-directory
# cf) https://stackoverflow.com/questions/10758694/how-to-mass-rename-files-in-ruby

puts Dir.pwd

Dir.chdir("src")

# Dir.foreach("폴더 경로") > 폴더 안의 모든 파일
# Dir.foreach(Dir.pwd) do |name|
#     puts name
# end

# Dir.entries(폴더 경로) = Dir.foreach("폴더 경로")
#puts Dir.entries(Dir.pwd)

# 원하는 파일을 선택
# cf) http://ruby-doc.org/core-2.4.2/Enumerable.html#method-i-select
Dir.entries(Dir.pwd).select{}

# 원하는 파일을 제외
# cf) http://ruby-doc.org/core-2.4.2/Enumerable.html#method-i-reject
Dir.entries(Dir.pwd).reject{}


# 파일 이름을 가져와 files에 모든 파일이름을 넣는다.
files = Dir.entries(Dir.pwd).reject{|name| name[0] == '.'}

puts files

files.each do |f|
    File.rename(f, "jju" + f)
end