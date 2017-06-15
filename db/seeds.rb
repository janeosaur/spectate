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

sejin = User.create({email: "sejin@ga.com", password: "123456", first_name: "Sejin", last_name: "Park", username: "SejinLovesBibimbap", country: "Korea", twitter: "sejin", photo: "https://asset-pipeline-passenger-test.herokuapp.com/assets/sejin-ebe0025ae539037112993dc5068c4ac1c1e053eadd3a0760ea0c4cd5697b5f94.jpg", cover_photo: "http://i.imgur.com/OQN0fsA.jpg"})

esl = Event.create({name: "ESL One Cologne", organizer: "ESL", organizer_twitter: "ESLCS", venue: "Lanxess Arena", city: "Cologne, Germany", country: "Germany", min_age: 18, stream: "https://www.twitch.tv/esl_csgo",
    image: "https://www.esl-one.com/uploads/pics/20160708_Patrick-Strack_ESLOneCologne16_070A2991gfdgfdgfdgfd.jpg", date: "2017-07-07", date_end: "2017-07-09",
    tickets: "http://en.esl-one.com/csgo/cologne-2017/", size: "1001-3000", event_type: "large", prize: "250,000", ticket_price: "19", alcohol: true, stadium: true, vip_tickets: true,
    food_drinks: true, merch_sold: true})
pgl = Event.create({name: "PGL Major Krakow", organizer: "PGL", organizer_twitter: "pglesports", venue: "Tauron Arena Kraow", city: "Krakow, Poland", country: "Poland", min_age: 16, stream: "https://www.twitch.tv/pgl",
    image: "http://www.es.me/news/wp-content/uploads/2017/05/pgl_major_krakow.jpg", date: "2017-07-16", date_end: "2017-07-23", tickets: "http://major.pglesports.com/",
    size: "1-1000", event_type: "major", prize: "990,000", ticket_price: "19", alcohol: true, stadium: true, vip_tickets: false, food_drinks: true, merch_sold: false})

eleague = Event.create({name: "ELEAGUE Clash for Cash", organizer: "ELEAGUE", organizer_twitter: "el", venue: "Turner Studios", city: "Atlanta, Georgia", country: "USA", min_age: 16, stream: "https://www.twitch.tv/eleague",
    image: "https://static1.squarespace.com/static/5637eaeee4b0a1466d853f01/565df7bce4b0020c45680a1e/5911c526893fc011d4ee675b/1494343206929/CSGO_CLASH_FOR_CASH_1500x600_PR_release1.jpg?format=2500w",
    date: "2017-06-16", date_end: "2017-06-16", tickets: "http://www.eleague.com/tickets#2iR3pQuOh8qq", size: "1-1000", event_type: "Major", prize: "250,000", ticket_price: "0",
    alcohol: true, stadium: true, vip_tickets: false, food_drinks: true, merch_sold: false})

dreamhack = Event.create({name: "DreamHack Open Summer", organizer: "DreamHack", organizer_twitter: "dreamhackCSGO", venue: "Jonkoping, Sweden", city: "Jönköping, Sweden", country: "Sweden", min_age: 16, stream: "https://www.twitch.tv/dreamhackcs",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRElaoo6wVsksVEHgKDaEVBrf7NWoUzqliCDlhG2UFGsbK--GMNA",
    date: "2017-06-17", date_end: "2017-06-19", tickets: "https://bokning.dreamhack.se/?utm_source=dhs17&utm_campaign=dhs17bannerTickets&utm_medium=banner", size: "1-1000", event_type: "minor", prize: "$100,000", ticket_price: "free",
    alcohol: true, stadium: false, vip_tickets: false, food_drinks: true, merch_sold: false})

ecs = Event.create({name: "ECS Season 3 Finals", organizer: "ECS", organizer_twitter: "ecsleague", venue: "Wembley", city: "London, United Kingdom", country: "United Kingdom", min_age: 16, stream: "https://www.youtube.com/ecs",
    image: "http://www.esports-pro.com/images/uploads/articles/ECS_CS_GO_Wembley_840.jpg", date: "2017-06-23", date_end: "2017-06-25", tickets: "https://wembley.csgoleague.com/",
    size: "1-1000", event_type: "large", prize: "660,000", ticket_price: "13", alcohol: true, stadium: false, vip_tickets: false, food_drinks: true, merch_sold: false})

malmo = Event.create({name: "DreamHack Masters Malmo", organizer: "Dreamhack", organizer_twitter: "dreamhackCSGO", venue: "Malmo Arena", city: "Malmo, Sweden", country: "Sweden", min_age: 16, stream: "https://www.twitch.tv/dreamhackcs",
    image: "https://masters.dreamhack.com/malmo/wp-content/uploads/sites/3/2017/02/MastersNewsItem.png", date: "2017-08-30", date_end: "2017-09-03", tickets: "https://www.google.com/search?q=dreamhack+malmo+tickets&oq=dreamhack+malmo&aqs=chrome.2.69i57j0l5.2960j0j7&sourceid=chrome&ie=UTF-8",
    size: "1-1000", event_type: "large", prize: "250,000", ticket_price: "13", alcohol: true, stadium: true, vip_tickets: false, food_drinks: true, merch_sold: false})

ny = Event.create({name: "ESL One New York", organizer: "ESL", organizer_twitter: "eslcsgo", venue: "Madison Square Garden", city: "New York, NY", country: "USA", min_age: 16, stream: "https://www.twitch.tv/esl_csgo",
    image: "https://egamersworld.com/uploads//news/1496868932163.jpeg", date: "2017-09-16", date_end: "2017-09-17", tickets: "http://en.esl-one.com/csgo/newyork-2017/faq/",
    size: "1-1000", event_type: "large", prize: "220,000", ticket_price: "25", alcohol: true, stadium: true, vip_tickets: true, food_drinks: true, merch_sold: true})

nordic = Event.create({name: "Nordic Championship S2 Finals", organizer: "Nordic", organizer_twitter: "eslcsgo", venue: "Helsinki, Finland", city: "Helsinki, Finland", country: "Finland", min_age: 12, stream: "https://www.twitch.tv/esl_csgo",
    image: "https://egamersworld.com/uploads//news/1496868932163.jpeg", date: "2017-08-05", date_end: "2017-08-05", tickets: "http://google.com",
    size: "1-1000", event_type: "minor", prize: "23,000", ticket_price: "5", alcohol: false, stadium: false, vip_tickets: false, food_drinks: false, merch_sold: false})


optic = Team.create({name: "OpTic Gaming", country: "US", founded_in: "2005", twitter: "opticgaming", logo: "http://www.esportscod.com/wp-content/uploads/2015/05/optic-logo-128x128.png"})
clg = Team.create({name: "Counter Logic Gaming", country: "US", founded_in: "2010", twitter: "clgaming", logo: "http://i1.wp.com/splitpush.net/wp-content/uploads/2016/02/CLG.png?fit=128%2C128"})
vp = Team.create({name: "Virtus Pro", country: "Poland", founded_in: "2005", twitter: "teamvirtuspro", logo: "https://hydra-media.cursecdn.com/dota2.gamepedia.com/thumb/8/86/Team_icon_Virtus.pro.png/256px-Team_icon_Virtus.pro.png?version=fc33bdafde2222cbbd2a436af0b3f972"})
astralis = Team.create({name: "Astralis", country: "Denmark", founded_in: "2015", twitter: "astralisgg", logo: "https://www.toornament.com/media/file/433367103107598939/logo_medium?v=1468984226"})
sk = Team.create({name: "SK Gaming", country: "Brazil", founded_in: "1998", twitter: "skgaming", logo: "https://gambit.gg/public/images/general/2016/04/07/thumbnail-20160407150839-6901.png"})
fnatic = Team.create({name: "fnatic", country: "Sweden", founded_in: "1999", twitter: "fnatic", logo: "https://hydra-media.cursecdn.com/dota2.gamepedia.com/thumb/2/22/Team_logo_Fnatic.png/256px-Team_logo_Fnatic.png?version=ca5a59e66bf6440497b43a3b045cda77"})
c9 = Team.create({name: "Cloud 9", country: "US", founded_in: "2013", twitter: "cloud9", logo: "https://pbs.twimg.com/profile_images/672150770578362368/_xpMfEap_400x400.jpg"})
liquid = Team.create({name: "Team Liquid", country: "US", founded_in: "2011", twitter: "teamliquid", logo: "https://pbs.twimg.com/profile_images/870673842280087556/lxtvd63A_400x400.jpg"})

esl.teams << [optic, vp, sk, fnatic]
eleague.teams << [vp, astralis]
dreamhack.teams << clg
pgl.teams << [optic, vp, astralis, sk, fnatic, c9, liquid]
ecs.teams << [optic, astralis, sk, fnatic, c9]
malmo.teams << [vp, astralis, c9]
ny.teams << [optic, clg, c9, liquid]
nordic.teams << astralis

cutler = Player.create({name: "Stephen Cutler", gamer_tag: "reltuC", country: "US", twitter: "reltuc", instagram: "clutchler", photo: "https://pbs.twimg.com/profile_images/820485283418284032/t9rUlRTJ_400x400.jpg", role: "Support Player"})
koosta = Player.create({name: "Kenneth Suen", gamer_tag: "koosta", country: "US", twitter: "koosta", instagram: "clgkoosta", photo: "https://pbs.twimg.com/profile_images/873458575137308672/E0AAUpvV_400x400.jpg", role: "Awper"})
nahte = Player.create({name: "Ethan Arnold", gamer_tag: "nahtE", country: "US", twitter: "CLG_Nahte", instagram: "clgnahte", photo: "https://pbs.twimg.com/profile_images/845485089765056512/1NxRl7_p_400x400.jpg", role: "Entry Fragger"})
rickeh = Player.create({name: "Rick Mulholland", gamer_tag: "Rickeh", country: "Australia", twitter: "Rickehcsgo", instagram: "", photo: "https://pbs.twimg.com/profile_images/839970983574360064/ha_fQbzO_400x400.jpg", role: "Supper Player"})
fns = Player.create({name: "Pujan Mehta", gamer_tag: "FNS", country: "Canada", twitter: "fnscsgo", instagram: "pujmehta", photo: "https://pbs.twimg.com/profile_images/858815714534105088/_AfxQFVE_400x400.jpg", role: "In Game Leader"})
clg.players << [koosta, cutler, nahte, rickeh, fns]

tarik = Player.create({name: "Tarik Celik", gamer_tag: "tarik", country: "US", twitter: "noshirt_tv", instagram: "officialtarik", photo: "https://pbs.twimg.com/profile_images/856561269163180036/ZfH4D57Y_400x400.jpg", role: "Entry Fragger"})
mixwell = Player.create({name: "Oscar Canella", gamer_tag: "Mixwell", country: "Spain", twitter: "Mixwell", instagram: "m1xwell", photo: "https://pbs.twimg.com/profile_images/861173235517227008/dixioA0R_400x400.jpg", role: "Awper"})
naf = Player.create({name: "Keith Markovic", gamer_tag: "NAFFLY", country: "Canada", twitter: "NAFFLY", instagram: "naffly", photo: "https://pbs.twimg.com/profile_images/858980132169564160/TfKURD5f_400x400.jpg", role: "Supper Player"})
hazed = Player.create({name: "James Cobb", gamer_tag: "hazed", country: "US", twitter: "hazedcs", instagram: "hazedcs", photo: "https://pbs.twimg.com/profile_images/862840658368659456/vfmRr6og_400x400.jpg", role: "In Game Leader"})
rush = Player.create({name: "Will Wierzba", gamer_tag: "RUSH", country: "US", twitter: "RUSH", instagram: "rush", photo: "https://pbs.twimg.com/profile_images/812096738848808961/BT9S4I1j_400x400.jpg", role: "Entry Fragger"})
optic.players << [tarik, mixwell, naf, hazed, rush]

jdm = Player.create({name: "Joshua Marzano", gamer_tag: "jdm^v^", country: "US", twitter: "liquid_jdm", instagram: "jdmarzano", photo: "https://pbs.twimg.com/profile_images/868215893431537665/wydxaMNM_400x400.jpg", role: "Awper"})
stan = Player.create({name: "Peter Jarguz", gamer_tag: "stanislaw", country: "Canada", twitter: "peterjarguz", photo: "https://pbs.twimg.com/profile_images/867198830969843712/IlkCjByW_400x400.jpg", role: "In Game Leader"})
nitro = Player.create({name: "Nick Cannella", gamer_tag: "nitr0", country: "US", twitter: "liquitnitr0",  photo: "https://pbs.twimg.com/profile_images/835000196815691776/tjPR1RJf_400x400.jpg", role: "Entry Fragger"})
elige = Player.create({name: "Jonathan Jablonowski", gamer_tag: "EliGE", country: "US", twitter: "liquidelige", photo: "https://pbs.twimg.com/profile_images/834514848037826560/CA5NvN4q_400x400.jpg", role: "Rifler"})
twist = Player.create({name: "Russel Van Dulken", gamer_tag: "Twistzz", country: "Canada", twitter: "twistzzvd", photo: "https://pbs.twimg.com/profile_images/870294380363624452/vLtdj2sA_400x400.jpg", role: "Support Player"})
liquid.players << [jdm, stan, nitro, elige, twist]

fallen = Player.create({name: "Gabriel Toledo", gamer_tag: "FalleN", country: "Brazil", twitter: "fallencs", instagram: "fallen", photo: "https://pbs.twimg.com/profile_images/865602765703303168/odufTF0F_400x400.jpg", role: "Awper"})
taco = Player.create({name: "Epitacio", gamer_tag: "TACO", country: "Brazil", twitter: "tacocs", instagram: "taco", photo: "https://pbs.twimg.com/profile_images/867410817796501504/WC1cXmCh_400x400.jpg", role: "Entry Fragger"})
fer = Player.create({name: "Fernando Alvarenga", gamer_tag: "fer", country: "Brazil", twitter: "sk_fer", instagram: "fergod", photo: "https://pbs.twimg.com/profile_images/821417857644982273/uPXHB0_s_400x400.jpg", role: "Rifler"})
cold = Player.create({name: "Marcelo David", gamer_tag: "coldzera", country: "Brazil", twitter: "coldzera", instagram: "coldzera", photo: "https://pbs.twimg.com/profile_images/750401786905763840/ORf4R1zP_400x400.jpg", role: "Support Player"})
felps = Player.create({name: "Joao Vasconcellos", gamer_tag: "felps", country: "Brazil", twitter: "tempofelps", photo: "https://pbs.twimg.com/profile_images/850615073060073472/ZilaSSRn_400x400.jpg", role: "Entry Fragger"})
sk.players << [fallen, taco, fer, cold, felps]

stewie = Player.create({name: "Jake Yip", gamer_tag: "Stewie", country: "US", twitter: "Stewie", instagram: "stew2k", photo: "https://pbs.twimg.com/profile_images/873716175821094912/RUpGn1LC_400x400.jpg", role: "Entry Fragger"})
nothing = Player.create({name: "Jordan Gilbert", gamer_tag: "n0thing", country: "US", twitter: "n0thing", instagram: "n0thing", photo: "https://pbs.twimg.com/profile_images/535076908606971904/TwfFqFPv_400x400.jpeg", role: "Rifler"})
ska = Player.create({name: "Tyler Latham", gamer_tag: "Skadoodle", country: "US", twitter: "c9skadoodle", photo: "https://pbs.twimg.com/profile_images/790655867695706112/M96EtOk6_400x400.jpg", role: "Awper"})
shroud = Player.create({name: "Michael Grzesiek", gamer_tag: "shroud", country: "Canada", twitter: "c9shroud", photo: "https://pbs.twimg.com/profile_images/710296781431504896/xyQvjaX1_400x400.jpg", role: "Entry Fragger"})
tim = Player.create({name: "Timothy Ta", gamer_tag: "autimatic", country: "US", twitter: "autimatictv", photo: "https://pbs.twimg.com/profile_images/805642288084959232/9B2RFAvo_400x400.jpg", role: "Support Player"})
c9.players << [stewie, nothing, ska, shroud, tim]

glaive = Player.create({name: "Lukas Rossander", gamer_tag: "gla1ve", country: "Denmark", twitter: "gla1ve_csgo", photo: "https://pbs.twimg.com/profile_images/790564286137569280/wo8t8yrQ_400x400.jpg", role: "In Game Leader"})
xyp = Player.create({name: "Andreas Hojsleth", gamer_tag: "Xyp9x", country: "Denmark", twitter: "xyp9x", instagram: "xyp9xcs", photo: "https://pbs.twimg.com/profile_images/771311044471861249/MUqYwfc8_400x400.jpg", role: "Support Player"})
dup = Player.create({name: "Peter Rasmussen", gamer_tag: "dupreeh", country: "Denmark", twitter: "dupreehcsgo", photo: "https://pbs.twimg.com/profile_images/844902874207391744/t4O4DR-S_400x400.jpg", role: "Entry Fragger"})
device = Player.create({name: "Nicolai Reedtz", gamer_tag: "devise", country: "Denmark", twitter: "dev1ce", instagram: "devveking", photo: "https://pbs.twimg.com/profile_images/806213696003284993/3VuOgIM1_400x400.jpg", role: "Awper"})
kj = Player.create({name: "Markus Kjaerbye", gamer_tag: "kjaerbye", country: "Denmark", twitter: "kjaerbyecs", photo: "https://pbs.twimg.com/profile_images/799769081272483841/JWw1jadh_400x400.jpg", role: "Rifler"})
astralis.players << [glaive, xyp, dup, device, kj]


p "seed data created"
