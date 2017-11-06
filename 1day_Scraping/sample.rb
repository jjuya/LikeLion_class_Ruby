# array 랜덤 추출
print ["쌀국수", "라멘", "샐러드", "빵"].sample

# 로또 번호 추천
(1..45).to_a.sample(6)
[*1..45].sample(6)
