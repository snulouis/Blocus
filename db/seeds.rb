# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create email: 'admin1@a', password: "123456"
User.create email: 'admin2@a', password: "123456"
User.create email: 'admin3@a', password: "123456"
User.create email: 'admin4@a', password: "123456"





Region.create name: '홍대', lat: 37.551700, lng: 126.919274
Region.create name: '강남', lat: 37.501313, lng: 127.025904
Region.create name: '관악'
Region.create name: '명동'
Region.create name: '인사동'
Region.create name: '관악'
Region.create name: '서초'
Region.create name: '가로수길'
Region.create name: '건대'





Blok.create lat: 37.551700, lng: 126.919274, user_id: 1
Blok.create lat: 37.552700, lng: 126.919274, user_id: 1
Blok.create lat: 37.553700, lng: 126.919274, user_id: 1
Blok.create lat: 37.554700, lng: 126.919274, user_id: 1
Blok.create lat: 37.555700, lng: 126.919274, user_id: 1
Blok.create lat: 37.556700, lng: 126.919274, user_id: 1
Blok.create lat: 37.557700, lng: 126.919274, user_id: 1
Blok.create lat: 37.558700, lng: 126.919274, user_id: 1


Blok.create lat: 37.551700, lng: 126.920274, user_id: 2
Blok.create lat: 37.552700, lng: 126.920274, user_id: 2
Blok.create lat: 37.553700, lng: 126.920274, user_id: 2
Blok.create lat: 37.554700, lng: 126.920274, user_id: 2
Blok.create lat: 37.555700, lng: 126.920274, user_id: 2
Blok.create lat: 37.556700, lng: 126.920274, user_id: 2
Blok.create lat: 37.557700, lng: 126.920274, user_id: 2
Blok.create lat: 37.558700, lng: 126.920274, user_id: 2


Blok.create lat: 37.551700, lng: 126.921274, user_id: 1
Blok.create lat: 37.552700, lng: 126.921274, user_id: 1
Blok.create lat: 37.553700, lng: 126.921274, user_id: 1
Blok.create lat: 37.554700, lng: 126.921274, user_id: 1
Blok.create lat: 37.555700, lng: 126.921274, user_id: 1
Blok.create lat: 37.556700, lng: 126.921274, user_id: 1
Blok.create lat: 37.557700, lng: 126.921274, user_id: 1
Blok.create lat: 37.558700, lng: 126.921274, user_id: 1


Blok.create lat: 37.551700, lng: 126.922274, user_id: 1
Blok.create lat: 37.552700, lng: 126.922274, user_id: 1
Blok.create lat: 37.553700, lng: 126.922274, user_id: 1
Blok.create lat: 37.554700, lng: 126.922274, user_id: 1
Blok.create lat: 37.555700, lng: 126.922274, user_id: 1
Blok.create lat: 37.556700, lng: 126.922274, user_id: 1
Blok.create lat: 37.557700, lng: 126.922274, user_id: 1
Blok.create lat: 37.558700, lng: 126.922274, user_id: 1








Info.create blok_id: 1, popularity: 40, content: "1번째 글입니다. "
Info.create blok_id: 2, popularity: 5,  content: "2번째 글입니다."
Info.create blok_id: 3, popularity: 10, content: "3번째 글입니다. "
Info.create blok_id: 4, popularity: 30, content: "4번째 글입니다. "
Info.create blok_id: 5, popularity: 20, content: "5번째 글입니다."
Info.create blok_id: 6, popularity: 10, content: "6번째 글입니다."
Info.create blok_id: 7, popularity: 10, content: "7번째 글입니다. asdklfjasdlkf"
Info.create blok_id: 8, popularity: 40, content: "8번째 글."



Info.create blok_id: 1, popularity: 40, content: "1번째 글입니다. "
Info.create blok_id: 2, popularity: 5,  content: "2번째 글입니다."
Info.create blok_id: 3, popularity: 10, content: "3번째 글입니다. "
Info.create blok_id: 4, popularity: 30, content: "4번째 글입니다. "
Info.create blok_id: 5, popularity: 20, content: "5번째 글입니다."
Info.create blok_id: 6, popularity: 10, content: "6번째 글입니다."
Info.create blok_id: 7, popularity: 10, content: "7번째 글입니다. asdklfjasdlkf"
Info.create blok_id: 8, popularity: 40, content: "8번째 글."

Info.create blok_id: 1, popularity: 40, content: "1번째 글입니다. "
Info.create blok_id: 2, popularity: 5,  content: "2번째 글입니다."
Info.create blok_id: 3, popularity: 10, content: "3번째 글입니다. "
Info.create blok_id: 4, popularity: 30, content: "4번째 글입니다. "
Info.create blok_id: 5, popularity: 20, content: "5번째 글입니다."
Info.create blok_id: 6, popularity: 10, content: "6번째 글입니다."
Info.create blok_id: 7, popularity: 10, content: "7번째 글입니다. asdklfjasdlkf"
Info.create blok_id: 8, popularity: 40, content: "8번째 글."

Info.create blok_id: 1, popularity: 40, content: "1번째 글입니다. "
Info.create blok_id: 2, popularity: 5,  content: "2번째 글입니다."
Info.create blok_id: 3, popularity: 10, content: "3번째 글입니다. "
Info.create blok_id: 4, popularity: 30, content: "4번째 글입니다. "
Info.create blok_id: 5, popularity: 20, content: "5번째 글입니다."
Info.create blok_id: 6, popularity: 10, content: "6번째 글입니다."
Info.create blok_id: 7, popularity: 10, content: "7번째 글입니다. asdklfjasdlkf"
Info.create blok_id: 8, popularity: 40, content: "8번째 글."














