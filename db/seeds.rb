# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.delete_all
User.delete_all
Team.delete_all

jane = User.create({email: "j@w.com", password: "123456", first_name: "jane", last_name: "w", username: "jane", country: "USA", twitter: "janeosaur", instagram: "janeosaur", photo: "https://pbs.twimg.com/profile_images/749082986184749056/gtNktD3a_400x400.jpg",
    cover_photo: "https://spark.adobe.com/images/landing/preview-wattpad-cover-maker-thumbnail.jpg", admin: true})

esl = Event.create({name: "ESL One Cologne", organizer: "ESL", venue: "Lanxess Arena", city: "Cologne, Germany", country: "Germany", min_age: 16, stream: "https://www.twitch.tv/esl_csgo",
    image: "https://www.esl-one.com/uploads/pics/20160708_Patrick-Strack_ESLOneCologne16_070A2991gfdgfdgfdgfd.jpg", date: "2017-07-07", date_end: "2017-07-09",
    tickets: "http://en.esl-one.com/csgo/cologne-2017/", size: "1001-3000", event_type: "large", prize: "$250,000", ticket_price: "€19", alcohol: true, stadium: true, vip_tickets: true,
    food_drinks: true, merch_sold: true})
pgl = Event.create({name: "PGL Major Krakow", organizer: "PGL", venue: "Lanxess Arena", city: "Krakow, Poland", country: "Poland", min_age: 16, stream: "https://www.twitch.tv/pgl",
    image: "http://www.es.me/news/wp-content/uploads/2017/05/pgl_major_krakow.jpg", date: "2017-07-16", date_end: "2017-07-23", tickets: "http://major.pglesports.com/",
    size: "1-1000", event_type: "Major", prize: "$1,000,000", ticket_price: "€19", alcohol: true, stadium: true, vip_tickets: false, food_drinks: true, merch_sold: false})

eleague = Event.create({name: "ELEAGUE Clash for Cash", organizer: "ELEAGUE", venue: "ELEAGUE Studio", city: "Atlanta, Georgia", country: "USA", min_age: 16, stream: "https://www.twitch.tv/eleague",
    image: "https://static1.squarespace.com/static/5637eaeee4b0a1466d853f01/565df7bce4b0020c45680a1e/5911c526893fc011d4ee675b/1494343206929/CSGO_CLASH_FOR_CASH_1500x600_PR_release1.jpg?format=2500w",
    date: "2017-06-16", date_end: "2017-06-16", tickets: "http://www.eleague.com/tickets#2iR3pQuOh8qq", size: "1-1000", event_type: "Major", prize: "$250,000", ticket_price: "free",
    alcohol: true, stadium: true, vip_tickets: false, food_drinks: true, merch_sold: false})

dreamhack = Event.create({name: "DreamHack Open Summer", organizer: "DreamHack", venue: "", city: "Jönköping, Sweden", country: "Sweden", min_age: 16, stream: "https://www.twitch.tv/dreamhackcs",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRElaoo6wVsksVEHgKDaEVBrf7NWoUzqliCDlhG2UFGsbK--GMNA",
    date: "2017-06-17", date_end: "2017-06-19", tickets: "https://bokning.dreamhack.se/?utm_source=dhs17&utm_campaign=dhs17bannerTickets&utm_medium=banner", size: "1-1000", event_type: "large", prize: "$100,000", ticket_price: "free",
    alcohol: true, stadium: false, vip_tickets: false, food_drinks: true, merch_sold: false})

ecs = Event.create({name: "ECS Season 3 Finals", organizer: "ECS", venue: "Wembley", city: "London, United Kingdom", country: "United Kingdom", min_age: 16, stream: "https://www.youtube.com/ecs",
    image: "http://www.esports-pro.com/images/uploads/articles/ECS_CS_GO_Wembley_840.jpg", date: "2017-06-23", date_end: "2017-06-25", tickets: "https://wembley.csgoleague.com/",
    size: "1-1000", event_type: "large", prize: "$660,000", ticket_price: "€12.99", alcohol: true, stadium: false, vip_tickets: false, food_drinks: true, merch_sold: false})

team1 = Team.create({name: "OpTic", country: "US", founded_in: "2005", logo: "https://www.toornament.com/media/file/433383026564632135/logo_medium?v=1472039303"})
team2 = Team.create({name: "CLG", country: "US", founded_in: "2010", logo: "http://i1.wp.com/splitpush.net/wp-content/uploads/2016/02/CLG.png?fit=128%2C128"})

eleague.teams << team1
eleague.teams << team2
esl.teams << team2


p "seed data created"
