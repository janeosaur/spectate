# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.delete_all
EventTeam.delete_all
Team.delete_all
Event.delete_all
Favorite.delete_all
User.delete_all

jane = User.create({email: "j@w.com", password: "123456", first_name: "jane", last_name: "w", username: "jane", country: "USA", twitter: "janeosaur", instagram: "janeosaur", photo: "https://pbs.twimg.com/profile_images/749082986184749056/gtNktD3a_400x400.jpg",
    cover_photo: "https://spark.adobe.com/images/landing/preview-wattpad-cover-maker-thumbnail.jpg", admin: true})

esl = Event.create({name: "ESL One Cologne", organizer: "ESL", organizer_twitter: "ESLCS", venue: "Lanxess Arena", city: "Cologne, Germany", country: "Germany", min_age: 16, stream: "https://www.twitch.tv/esl_csgo",
    image: "https://www.esl-one.com/uploads/pics/20160708_Patrick-Strack_ESLOneCologne16_070A2991gfdgfdgfdgfd.jpg", date: "2017-07-07", date_end: "2017-07-09",
    tickets: "http://en.esl-one.com/csgo/cologne-2017/", size: "1001-3000", event_type: "large", prize: "$250,000", ticket_price: "€19", alcohol: true, stadium: true, vip_tickets: true,
    food_drinks: true, merch_sold: true})
pgl = Event.create({name: "PGL Major Krakow", organizer: "PGL", organizer_twitter: "pglesports", venue: "Lanxess Arena", city: "Krakow, Poland", country: "Poland", min_age: 16, stream: "https://www.twitch.tv/pgl",
    image: "http://www.es.me/news/wp-content/uploads/2017/05/pgl_major_krakow.jpg", date: "2017-07-16", date_end: "2017-07-23", tickets: "http://major.pglesports.com/",
    size: "1-1000", event_type: "Major", prize: "$1,000,000", ticket_price: "€19", alcohol: true, stadium: true, vip_tickets: false, food_drinks: true, merch_sold: false})

eleague = Event.create({name: "ELEAGUE Clash for Cash", organizer: "ELEAGUE", organizer_twitter: "el", venue: "ELEAGUE Studio", city: "Atlanta, Georgia", country: "USA", min_age: 16, stream: "https://www.twitch.tv/eleague",
    image: "https://static1.squarespace.com/static/5637eaeee4b0a1466d853f01/565df7bce4b0020c45680a1e/5911c526893fc011d4ee675b/1494343206929/CSGO_CLASH_FOR_CASH_1500x600_PR_release1.jpg?format=2500w",
    date: "2017-06-16", date_end: "2017-06-16", tickets: "http://www.eleague.com/tickets#2iR3pQuOh8qq", size: "1-1000", event_type: "Major", prize: "$250,000", ticket_price: "free",
    alcohol: true, stadium: true, vip_tickets: false, food_drinks: true, merch_sold: false})

dreamhack = Event.create({name: "DreamHack Open Summer", organizer: "DreamHack", organizer_twitter: "dreamhackCSGO", venue: "", city: "Jönköping, Sweden", country: "Sweden", min_age: 16, stream: "https://www.twitch.tv/dreamhackcs",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRElaoo6wVsksVEHgKDaEVBrf7NWoUzqliCDlhG2UFGsbK--GMNA",
    date: "2017-06-17", date_end: "2017-06-19", tickets: "https://bokning.dreamhack.se/?utm_source=dhs17&utm_campaign=dhs17bannerTickets&utm_medium=banner", size: "1-1000", event_type: "large", prize: "$100,000", ticket_price: "free",
    alcohol: true, stadium: false, vip_tickets: false, food_drinks: true, merch_sold: false})

ecs = Event.create({name: "ECS Season 3 Finals", organizer: "ECS", organizer_twitter: "ecsleague", venue: "Wembley", city: "London, United Kingdom", country: "United Kingdom", min_age: 16, stream: "https://www.youtube.com/ecs",
    image: "http://www.esports-pro.com/images/uploads/articles/ECS_CS_GO_Wembley_840.jpg", date: "2017-06-23", date_end: "2017-06-25", tickets: "https://wembley.csgoleague.com/",
    size: "1-1000", event_type: "large", prize: "$660,000", ticket_price: "€12.99", alcohol: true, stadium: false, vip_tickets: false, food_drinks: true, merch_sold: false})

optic = Team.create({name: "OpTic Gaming", country: "US", founded_in: "2005", twitter: "opticgaming", logo: "http://www.esportscod.com/wp-content/uploads/2015/05/optic-logo-128x128.png"})
clg = Team.create({name: "Counter Logic Gaming", country: "US", founded_in: "2010", twitter: "clgaming", logo: "http://i1.wp.com/splitpush.net/wp-content/uploads/2016/02/CLG.png?fit=128%2C128"})
vp = Team.create({name: "Virtus Pro", country: "Poland", founded_in: "2005", twitter: "teamvirtuspro", logo: "https://hydra-media.cursecdn.com/dota2.gamepedia.com/thumb/8/86/Team_icon_Virtus.pro.png/256px-Team_icon_Virtus.pro.png?version=fc33bdafde2222cbbd2a436af0b3f972"})
astralis = Team.create({name: "Astralis", country: "Denmark", founded_in: "2015", twitter: "astralisgg", logo: "https://www.toornament.com/media/file/433367103107598939/logo_medium?v=1468984226"})
sk = Team.create({name: "SK Gaming", country: "Brazil", founded_in: "1998", twitter: "skgaming", logo: "https://gambit.gg/public/images/general/2016/04/07/thumbnail-20160407150839-6901.png"})
fnatic = Team.create({name: "fnatic", country: "Sweden", founded_in: "1999", twitter: "fnatic", logo: "https://hydra-media.cursecdn.com/dota2.gamepedia.com/thumb/2/22/Team_logo_Fnatic.png/256px-Team_logo_Fnatic.png?version=ca5a59e66bf6440497b43a3b045cda77"})

esl.teams << [optic, vp, sk, fnatic]
eleague.teams << [vp, astralis]
dreamhack.teams << clg

cutler = Player.create({name: "Stephen Cutler", gamer_tag: "reltuC", country: "US", twitter: "reltuc", instagram: "clutchler", photo: "https://pbs.twimg.com/profile_images/820485283418284032/t9rUlRTJ_400x400.jpg", role: "support"})
koosta = Player.create({name: "Kenneth Suen", gamer_tag: "koosta", country: "US", twitter: "koosta", instagram: "clgkoosta", photo: "https://pbs.twimg.com/profile_images/873458575137308672/E0AAUpvV_400x400.jpg", role: "awper"})
nahte = Player.create({name: "Ethan Arnold", gamer_tag: "nahtE", country: "US", twitter: "CLG_Nahte", instagram: "clgnahte", photo: "https://pbs.twimg.com/profile_images/845485089765056512/1NxRl7_p_400x400.jpg", role: "entry"})
rickeh = Player.create({name: "Rick Mulholland", gamer_tag: "Rickeh", country: "Australia", twitter: "Rickehcsgo", instagram: "", photo: "https://pbs.twimg.com/profile_images/839970983574360064/ha_fQbzO_400x400.jpg", role: "support"})
tarik = Player.create({name: "Tarik Celik", gamer_tag: "tarik", country: "US", twitter: "noshirt_tv", instagram: "officialtarik", photo: "https://pbs.twimg.com/profile_images/856561269163180036/ZfH4D57Y_400x400.jpg", role: "entry"})
mixwell = Player.create({name: "Oscar Canella", gamer_tag: "Mixwell", country: "Spain", twitter: "Mixwell", instagram: "m1xwell", photo: "https://pbs.twimg.com/profile_images/861173235517227008/dixioA0R_400x400.jpg", role: "awper"})
jdm = Player.create({name: "Joshua Marzano", gamer_tag: "jdm^v^", country: "US", twitter: "liquid_jdm", instagram: "jdmarzano", photo: "https://pbs.twimg.com/profile_images/868215893431537665/wydxaMNM_400x400.jpg", role: "awper"})
fallen = Player.create({name: "Gabriel Toledo", gamer_tag: "FalleN", country: "Brazil", twitter: "fallencs", instagram: "fallen", photo: "https://pbs.twimg.com/profile_images/865602765703303168/odufTF0F_400x400.jpg", role: "awper"})
taco = Player.create({name: "Epitacio", gamer_tag: "TACO", country: "Brazil", twitter: "tacocs", instagram: "taco", photo: "https://pbs.twimg.com/profile_images/867410817796501504/WC1cXmCh_400x400.jpg", role: "entry"})
stewie = Player.create({name: "Jake Yip", gamer_tag: "Stewie", country: "US", twitter: "Stewie", instagram: "stew2k", photo: "https://pbs.twimg.com/profile_images/873716175821094912/RUpGn1LC_400x400.jpg", role: "entry"})
glaive = Player.create({name: "Lukas Rossander", gamer_tag: "gla1ve", country: "Denmark", twitter: "gla1ve_csgo", instagram: "gla1ve_csgo", photo: "https://pbs.twimg.com/profile_images/790564286137569280/wo8t8yrQ_400x400.jpg", role: "IGL"})

optic.players << [tarik, mixwell]
clg.players << [koosta, cutler, nahte, rickeh]
astralis.players << glaive
sk.players << [fallen, taco]

p "seed data created"
