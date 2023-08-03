user1 = User.where(email: 'test1@example.com').first_or_create(password: 'password', password_confirmation: 'password')

user2 = User.where(email: 'test2@example.com').first_or_create(password: 'password', password_confirmation: 'password')

event1 = [
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'SOMA',
    artist: 'The Interrupters',
    date: '13/09/2023',
    show_time: '7:30 PM',
    genre: 'SoCal Punk Rock',
    images: 'https://live.staticflickr.com/5751/22943235863_81d53126bf_c.jpg',
    spotify:"https://open.spotify.com/artist/25Maank76ry2Tmbi2Ql1SF",
    user_id: 1
  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'Nova SD',
    artist: 'Kai Wachi',
    date: '15/10/2023',
    show_time: '9:30 PM',
    genre: 'Bass Music',
    images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF9VEQeUuT4W4dskDgk8ETjA8_NyuhRmjF3g&usqp=CAU',
    spotify:"https://open.spotify.com/artist/2fNr4ldujwq97v1jWeqs8K",
    user_id: 1
  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'The Rady Shell',
    artist: 'Stick Figure',
    date: '10/06/2023',
    show_time: '6:00 PM',
    genre: 'Reggae',
    images: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Stick_Figure_-_Photo_by_Josu%C3%A9_Rivas.jpg/300px-Stick_Figure_-_Photo_by_Josu%C3%A9_Rivas.jpg',
    spotify:"https://open.spotify.com/artist/5SXEylV07TC57eanSxxg4R",
    user_id: 1
  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'North Island Cedit Union Amphitheater',
    artist: 'Janet Jackson',
    date: '20/08/2023',
    show_time: '7:45 PM',
    genre: 'pop',
    images: 'https://upload.wikimedia.org/wikipedia/en/thumb/d/d6/Janet_Jackson_-_It%27s_All_For_You.png/220px-Janet_Jackson_-_It%27s_All_For_You.png',
    spotify:"https://open.spotify.com/artist/4qwGe91Bz9K2T8jXTZ815W",
    user_id: 1
  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'Belly Up Tavern',
    artist: 'Pedro the Lion',
    date: '25/06/2023',
    show_time: '6:00 PM',
    genre: 'Indie Rock',
    images: 'https://www.seattleweekly.com/wp-content/uploads/2018/05/12000998_web1_copy_pedro-the-lion-sea-180523-P1.jpg',
    spotify:"https://open.spotify.com/artist/4ApdWjZjftqD77Vh6qDbCr",
    user_id: 1
  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'Petco Park',
    artist: 'Logic',
    date: '29/07/2023',
    show_time: '7:00 PM',
    genre: 'Rap/Hip Hop',
    images: 'https://i.scdn.co/image/ab6761610000e5eb6581cd61841a546e8ba1dc1f',
    spotify:"https://open.spotify.com/artist/4xRYI6VqpkE3UwrDrAZL8L",
    user_id: 1
  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'Music Box',
    artist: 'Julian Marley',
    date: '18/10/2023',
    show_time: '8:00 PM',
    genre: 'Reggae',
    images: 'https://data.logograph.com/resize/LyricTheatre/multimedia/Image/14172/web%20900%20x%20600%20Julian%20Marley%20showblock.jpg?width=1500',
    spotify:"https://open.spotify.com/artist/7a4td2FhkuH58dApiBvnrv",
    user_id: 1
  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'Pechanga Arena',
    artist: 'Erykah Badu',
    date: '27/08/2023',
    show_time: '7:30 PM',
    genre: 'Hip-Hop/RnB',
    images: 'https://media.newyorker.com/photos/590975ff1c7a8e33fb38f63a/master/w_2560%2Cc_limit/160425_r28041.jpg',
    spotify:"https://open.spotify.com/artist/7IfculRW2WXyzNQ8djX8WX",
    user_id: 1
  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'The Rady Shell',
    artist: 'John Legend',
    date: '16/06/2023',
    show_time: '8:00 PM',
    genre: 'R&B/Soul',
    images: 'https://pbs.twimg.com/media/Foda9aQagAAqHJ1.jpg',
    spotify:"https://open.spotify.com/artist/5y2Xq6xcjJb2jVM54GHK3t",
    user_id: 1
  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'Waterfront Park',
    artist: 'Tiesto',
    date: '25/07/2023',
    show_time: '2:00 PM',
    genre: 'Electronic',
    images: 'https://d3vhc53cl8e8km.cloudfront.net/hello-staging/wp-content/uploads/2018/02/21212619/soundevolution_tiesto_1200x630.jpg',
    spotify:"https://open.spotify.com/artist/2o5jDhtHVPhrJdv3cEQ99Z",
    user_id: 1
  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'Balboa Theatre',
    artist: 'Kamran & Hooman',
    date: '09/12/2023',
    show_time: '5:00 PM',
    genre: 'Pop/Folk',
    images: 'https://i.scdn.co/image/ab67616d0000b273a4c791c75de8597a55b6cf3a',
    spotify:"https://open.spotify.com/artist/6a3oGQA11oMCKPqYRcG7Nq",
    user_id: 1
  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'Del Mar Fairgrounds',
    artist: 'Lynyrd Skynyrd',
    date: '19/07/2023',
    show_time: '7:30 PM',
    genre: 'Rock n Roll',
    images: 'https://i.scdn.co/image/ab6761610000e5eb451eb07ddc6e68d3e474c2bf',
    spotify:"https://open.spotify.com/artist/4MVyzYMgTwdP7Z49wAZHx0",
    user_id: 1
  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'Nova SD',
    artist: 'Mau p',
    date: '19/08/2023',
    show_time: '9:30 PM',
    genre: 'Electronic',
    images: 'https://edmidentity.com/wp-content/uploads/2023/05/Mau-P-credits-Tommy-Reerink-2-scaled-e1684589938900.jpg',
    spotify:"https://open.spotify.com/artist/0w1sbtZVQoK6GzV4A4OkCv",
    user_id: 1
  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'The Rady Shell',
    artist: 'Earth Wind and Fire',
    date: '18/07/2023',
    show_time: '7:00 PM',
    genre: 'Funk/Soul',
    images: 'https://i.discogs.com/kw_ezYrr2psZX9nGbj_QJzFwQaRj6k1_TIDxnGl8H80/rs:fit/g:sm/q:90/h:822/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9BLTIyMTY0/LTE1ODk2NzU3NDkt/MzgwNS5wbmc.jpeg',
    spotify:"https://open.spotify.com/artist/4QQgXkCYTt3BlENzhyNETg",
    user_id: 1
  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'Belly Up Tavern',
    artist: 'Matisyahu',
    date: '12/09/2023',
    show_time: '8:00 PM',
    genre: 'Reggae/Hip Hop',
    images: 'https://www.reggaeville.com/fileadmin/user_upload/matisyahu.jpg',
    spotify:"https://open.spotify.com/artist/5eyMzR1hYiEZtN2c9ly2kw",
    user_id: 1
  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'Del Mar Fairgrounds',
    artist: 'Los Tigres del Norte',
    date: '23/10/2023',
    show_time: '5:00 PM',
    genre: 'Pacific Norteno',
    images: 'https://s1.ticketm.net/dam/a/bc8/d2f07a47-3a5a-4d7a-88a6-0c0c47da4bc8_SOURCE',
    spotify:"https://open.spotify.com/artist/3hYtANQYrE6pd2PbtEyTIy",
    user_id: 1
  }, 
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'Winstons OB',
    artist: 'Tame Impala',
    date: '13/6/2023',
    show_time: '7:30 PM',
    genre: 'Reggae',
    images: 'https://www.billboard.com/wp-content/uploads/media/slightly-stoopid-press-2015-billboard-650.jpg?w=650',
    spotify:"https://open.spotify.com/artist/5INjqkS1o8h1imAzPqGZBb",
    user_id: 1
  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'Petco Park',
    artist: 'Coldplay',
    date: '25/07/2023',
    show_time: '8:30 PM',
    genre: 'Alternative pop rock',
    images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqFpdKYpSJUxOkuwSovhIghmg-zEDb8pYPjQ&usqp=CAU',
    spotify:"https://open.spotify.com/artist/4gzpq5DPGxSnKTe4SA8HAU",
    user_id: 1
  },
  {
    city: 'San Diego',
    state: 'CA',
    venue: 'Pechanga Arena',
    artist: 'Tame Impala',
    date: '16/6/2023',
    show_time: '7:30 PM',
    genre: 'Alternative/Indie',
    images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCWCkQ4NpdlEkdy6E-6J9C_Dq6HgCZu2a2NA&usqp=CAU',
    spotify:"https://open.spotify.com/artist/5INjqkS1o8h1imAzPqGZBb",
    user_id: 1
  },
  {
    city: 'Dallas',
    state: 'TX',
    venue: 'Amplified Live',
    artist: 'ASAP Rocky',
    date: '22/8/2023',
    show_time: '9:30 PM',
    genre: 'Hip Hop/ Trap',
    images: 'https://hips.hearstapps.com/hmg-prod/images/aap-rocky-from-the-film-monster-poses-for-a-portrait-in-the-youtube-x-getty-images-portrait-studio-at-2018-sundance-film-festival-on-january-22-2018-in-park-city-utah-photo-by-robby-klein_getty-images.jpg?crop=1xw:0.75xh;center,top&resize=1200:*',
    spotify:"https://open.spotify.com/artist/13ubrt8QOOCPljQ2FL1Kca",
    user_id: 1
  },
  {
    city: 'Los Angeles',
    state: 'CA',
    venue: 'Crypto.com Arena',
    artist: 'The Weeknd',
    date: '4/9/2023',
    show_time: '8:30 PM',
    genre: 'RnB/ Pop',
    images: 'https://www.billboard.com/wp-content/uploads/2022/06/the-weeknd-press-credit-brian-ziff-2022-billboard-1-1548.jpg?w=942&h=623&crop=1',
    spotify:"https://open.spotify.com/artist/1Xyo4u8uXC1ZmMpatF05PJ",
    user_id: 1
  },
  {
    city: 'San Francisco',
    state: 'CA',
    venue: 'The Chapel',
    artist: 'ODESZA',
    date: '16/11/2023',
    show_time: '9:00 PM',
    genre: 'Electronic',
    images: 'https://images.seattletimes.com/wp-content/uploads/2022/07/07292022_odesza_231154.jpg?d=780x520',
    spotify:"https://open.spotify.com/artist/21mKp7DqtSNHhCAU2ugvUw",
    user_id: 1
  },
  {
    city: 'New York',
    state: 'NY',
    venue: 'Madison Garden',
    artist: 'Beyonce',
    date: '10/6/2023',
    show_time: '7:30 PM',
    genre: 'RnB/ Pop',
    images: 'https://img.buzzfeed.com/buzzfeed-static/static/2022-07/28/15/asset/7cb262059fb8/sub-buzz-6121-1659022200-7.jpg?downsize=700%3A%2A&output-quality=auto&output-format=auto',
    spotify:"https://open.spotify.com/artist/6vWDO969PvNqNYHIOW5v0m",
    user_id: 1
  },
  {
    city: 'Miami',
    state: 'FL',
    venue: 'Pechanga Arena',
    artist: 'Diplo',
    date: '16/07/2023',
    show_time: '3:00 PM',
    genre: 'Electronic',
    images: 'https://people.com/thmb/GRHLuo32r8zFSZ8RcTlNcz-WvH0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(999x0:1001x2)/gettyimages-1152939198-1-0848088188154de8b3e03b281e520158.jpg',
    spotify:"https://open.spotify.com/artist/5fMUXHkw8R8eOP2RNVYEZX",
    user_id: 1
  }
]

event2 = [
  {
    city: 'Morrison',
    state: 'CO',
    venue: 'Red Rocks Amphitheater',
    artist: 'Oliver Tree',
    date: '20/06/2023',
    show_time: '8:30 PM',
    genre: 'Alternative pop rock hip hop',
    images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuHb6SBtQh59pAUDA-kD05XN_1rk7xvJTSQg&usqp=CAU',
    spotify: 'https://open.spotify.com/artist/6TLwD7HPWuiOzvXEa3oCNe',
    user_id: 2
    
  },
  {
    city: 'Morrison',
    state: 'CO',
    venue: 'Red Rocks Amphitheater',
    artist: 'Zeds Dead',
    date: '20/07/2023',
    show_time: '8:30 PM',
    genre: 'Electronic',
    images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRNAoQWBujVZuntU54PgkKuI1iBrnQtHPiVg&usqp=CAU',
    spotify: 'https://open.spotify.com/artist/67qogtRNI0GjUr8PlaG6Zh',
    user_id: 2
  },
  {
    city: 'San Francisco',
    state: 'CA',
    venue: 'The Fillmore',
    artist: 'The Mavericks',
    date: '11/11/2023',
    show_time: '9:30 PM',
    genre: 'Country',
    images: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyxLR7aFAav8g11BXVMJn7mwEuf-wly3uWhQ&usqp=CAU',
    spotify: 'https://open.spotify.com/artist/4Ud7lY9V8pOyydumajSW3O',
    user_id: 2
  },
  {
    city: 'Boise',
    state: 'ID',
    venue: 'Knitting Factory',
    artist: 'Cam Cole',
    date: '6/11/2023',
    show_time: '7:00 PM',
    genre: 'Rock',
    images: 'https://i.ticketweb.com/i/00/10/95/33/49_Original.jpg?v=5',
    spotify: 'https://open.spotify.com/artist/0US6t3wOzabccOupxTHl2S',
    user_id: 2

  },
  {
    city: 'Phoenix',
    state: 'AZ',
    venue: 'The Van Buren',
    artist: 'Killer Mike',
    date: '1/8/2023',
    show_time: '9:00 PM',
    genre: 'Hip Hop',
    images: 'https://www.billboard.com/wp-content/uploads/2020/09/03-Run-The-Jewels-a-bb13-09-killer-mike-2020-billboard-1548-1600192435.jpg',
    spotify: 'https://open.spotify.com/artist/2N4EYkIlG1kv25g6Wv8LGI',
    user_id: 2

  },
  {
    city: 'Huston',
    state: 'TX',
    venue: 'Bayou Music Center',
    artist: 'Modest Mouse',
    date: '7/6/2023',
    show_time: '8:00 PM',
    genre: 'Alternative/Indie',
    images: 'https://townsquare.media/site/838/files/2022/03/attachment-modest-mouse-johnny-marr.jpeg?w=980&q=75',
    spotify: 'https://open.spotify.com/artist/1yAwtBaoHLEDWAnWR87hBT',
    user_id: 2

  },
  {
    city: 'Miami',
    state: 'FL',
    venue: 'Hard Rock Stadium',
    artist: 'Karol G',
    date: '26/8/2023',
    show_time: '7:00 PM',
    genre: 'Latin Urbano',
    images: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.billboard.com%2Fwp-content%2Fuploads%2F2022%2F05%2FKarol-G-cr-CarlosPassage-billboard-1548.jpg&tbnid=3XWe54fMbW2oMM&vet=12ahUKEwjr4srJ05P_AhUyBEQIHRRGCjgQMyg7egQIARB-..i&imgrefurl=https%3A%2F%2Fwww.billboard.com%2Fmusic%2Flatin%2Fkarol-g-anahi-salvame-mexico-concert-1235086191%2F&docid=Q8UPLhxThkTX_M&w=1548&h=1024&q=karol%20g&ved=2ahUKEwjr4srJ05P_AhUyBEQIHRRGCjgQMyg7egQIARB-',
    spotify: 'https://open.spotify.com/artist/790FomKkXshlbRYZFtlgla',
    user_id: 2

  }
]

event1.each do |event|
  user1.events.create(event)
  puts "creating: #{event}"
end

event2.each do |event|
  user2.events.create(event)
  puts "creating: #{event}"
end
