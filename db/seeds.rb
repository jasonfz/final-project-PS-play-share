# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Comment.destroy_all
Topic.destroy_all
Rental.destroy_all
Game.destroy_all
User.destroy_all

PASSWORD = "123"

super_user = User.create(
    first_name: "Admin",
    last_name: "User",
    email: "admin@user.com",
    address: "628 6th Avenue, New Westminster, BC, Canada", 
    password: PASSWORD,
    admin?: true
)

10.times do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    User.create(
    first_name: first_name,
    last_name: last_name,
   
    email: "#{first_name}@#{last_name}.com",
    password: PASSWORD,
    admin?: false
    )
end

users = User.all
created_at = Faker::Date.backward(days: 365 * 10)
sample_games = [

{title: "FIFA 23 (PS5)",
    image_url: "https://multimedia.bbycastatic.ca/multimedia/products/500x500/163/16374/16374017.jpg",
    description: "Enjoy a more true-to-life football experience in FIFA 23 for PlayStation 5 with new gameplay features that create risk-versus-reward shooting, new free kick, penalty, and corner mechanics, and more football variety. Play the biggest tournaments in football with both the men’s and women’s FIFA World Cup tournaments coming to FIFA 23 during the season, play as women’s club teams for the first time ever, plus enjoy cross-play features that make it easier to play against friends.",
    suggested_rental_price: "5",
    created_at: created_at,
    updated_at: created_at,
    user: users.sample},

{title: "The Last of Us: Part I (PS5)",
    image_url: "https://multimedia.bbycastatic.ca/multimedia/products/500x500/162/16299/16299627.jpg",
    description: "Experience the emotional storytelling and unforgettable characters in The Last of Us: Part I for PlayStation 5. In a ravaged civilization, where infected and hardened survivors run rampant, Joel, a weary protagonist, is hired to smuggle 14-year-old Ellie out of a military quarantine zone. However, what starts as a small job soon transforms into a brutal cross-country journey.",
    suggested_rental_price: "15",
    created_at: created_at,
    updated_at: created_at,
    user: users.sample},

{title: "God of War Ragnarok Launch Edition (PS5)",
    image_url: "https://multimedia.bbycastatic.ca/multimedia/products/500x500/163/16369/16369003.jpg",
    description: "Embark on an epic and heartfelt journey in God of War Ragnarok for PlayStation 5. See for yourself how fate will force a choice upon Kratos and Atreus: between their own safety or the safety of the realms. All the while, hostile Asgardian forces assemble. Witness the changing dynamic of the father-son relationship as they fight for survival.",
    suggested_rental_price: "20",
    created_at: created_at,
    updated_at: created_at,
    user: users.sample},

{title: "Elden Ring (PS5)",
    image_url: "https://multimedia.bbycastatic.ca/multimedia/products/500x500/158/15865/15865286.jpg",
    description: "Venture into the Lands Between on an epic journey in Elden Ring for PlayStation 5. The Golden Order has been broken and it's up to you to navigate the fantastical world, using the power of the ring to restore order and become an Elden Lord. Along the way, you'll meet both friend and foe, along with fierce beasts that seek to destroy you.",
    suggested_rental_price: "10",
    created_at: created_at,
    updated_at: created_at,
    user: users.sample},

{title: "Uncharted: Legacy of Thieves Collection (PS5)",
    image_url: "https://multimedia.bbycastatic.ca/multimedia/products/500x500/158/15890/15890886.jpg",
    description: "Seek your legacy and leave your mark on the map in Uncharted: Legacy of Thieves Collection for PlayStation 5. Experience Naughty Dog’s cinematic storytelling and the iconic franchise’s blockbuster action set pieces. It includes the single-player stories from both Uncharted 4: A Thief’s End and Uncharted: The Lost Legacy, remastered for the PS5 console with improved visuals and framerate.",
    suggested_rental_price: "5",
    created_at: created_at,
    updated_at: created_at,
    user: users.sample},

{title: "Horizon Forbidden West Launch Edition (PS5)",
    image_url: "https://multimedia.bbycastatic.ca/multimedia/products/500x500/156/15694/15694502.jpg",
    description: "Delve into an epic action adventure with the Horizon Forbidden West Launch Edition for PlayStation 5. Join Aloy as she braves the Forbidden West - a majestic but dangerous frontier that conceals mysterious new threats. Explore distant lands, fight bigger and more awe-inspiring machines, and encounter astonishing new tribes as you return to the far-future, post-apocalyptic world of Horizon.",
    suggested_rental_price: "10",
    created_at: created_at,
    updated_at: created_at,
    user: users.sample},

{title: "God of War (PS4)",
    image_url: "https://multimedia.bbycastatic.ca/multimedia/products/500x500/140/14049/14049706.jpg",
    description: "Join the god-slaying Spartan once again on a quest of survival in the God of War video game for PlayStation 4. Kratos puts his past behind and starts a new life of mentoring his son Atreus to prevail in the dangerous Norse world. Explore the extensive lands, master new abilities, and battle strong opponents in an action-packed gameplay.",
    suggested_rental_price: "5",
    created_at: created_at,
    updated_at: created_at,
    user: users.sample},

{title: "Uncharted: The Nathan Drake Collection (PS4)",
    image_url: "https://multimedia.bbycastatic.ca/multimedia/products/500x500/136/13601/13601495.jpg",
    description: "Go for an adventurous treasure exploration with the Uncharted: The Nathan Drake Collection for PlayStation 4. This single player game features an incredible cast of characters and a highly action-packed gaming environment that will keep you engaged till the end. Travel with Nathan Drake and experience the thrill of uncovering treasures.",
    suggested_rental_price: "5",
    created_at: created_at,
    updated_at: created_at,
    user: users.sample},

{title: "Kena: Bridge of Spirits Deluxe Edition (PS4)",
    image_url: "https://multimedia.bbycastatic.ca/multimedia/products/500x500/157/15745/15745605.jpg",
    description: "Play as a young spirit guide Kena in the story-driven, action adventure - Kena: Bridge of Spirits Deluxe Edition for PlayStation 4. Combining exploration with fast-paced combat, you will find and grow a team of charming spirit companions called the Rot, enhancing their abilities and creating new ways to manipulate the environment.",
    suggested_rental_price: "5",
    created_at: created_at,
    updated_at: created_at,
    user: users.sample},

{title: "Sonic Frontiers (PS5)",
    image_url: "https://multimedia.bbycastatic.ca/multimedia/products/500x500/164/16471/16471109.jpg",
    description: "Head out on a brand-new adventure with Sonic in Sonic Frontiers for PlayStation 5. Travel across five enormous overworld islands, each with action-packed challenges to complete and secrets to discover. Utilize the all-new battle system and skill tree upgrades as you perfect your moves and take down mysterious enemies.",
    suggested_rental_price: "10",
    created_at: created_at,
    updated_at: created_at,
    user: users.sample},
    
{title: "Ghost of Tsushima Director's Cut (PS5)",
    image_url: "https://multimedia.bbycastatic.ca/multimedia/products/500x500/155/15596/15596034.jpg",
    description: "Embark on hours and hours of action-packed adventure with Ghost of Tsushima Director's Cut for PlayStation 5. Get into the character of samurai warrior Jin Sakai, the last surviving members of the Tsushima clan and fight for the freedom of your home, standing up against the heartless and powerful general Khotun Khan in this epic game.",
    suggested_rental_price: "10",
    created_at: created_at,
    updated_at: created_at,
    user: users.sample}
]

sample_games.map do |game|
    created_at = Faker::Date.backward(days: 365 * 10)
    g = Game.create(game)

    if g.persisted?
        rand(1..5).times do
            t = Topic.create(
                title: Faker::Hacker.say_something_smart,
                body: Faker::ChuckNorris.fact,
                view_count: rand(100_00),
                created_at: created_at,
                updated_at: created_at,
                user: users.sample,
                game: g
            )
            
            if t.persisted?
                rand(1..5).times do
                    Comment.create(body: Faker::ChuckNorris.fact,
                    topic: t,
                    game: g, 
                    user: users.sample
                )
                end
             
            end

        end
    
    end


end




# 10.times do
    created_at = Faker::Date.backward(days: 365 * 10)

#     g = Game.create(
#         title: "game title",
#         image_url: "https://multimedia.bbycastatic.ca/multimedia/products/500x500/163/16374/16374017.jpg",
#         description: "Enjoy more realistic soccer gameplay in FIFA 23 for PlayStation 5 with new gameplay features that create new shooting mechanics that value risk-taking, revamped free kicks, penalties and corners, and even more gameplay more varied. ",
#         suggested_rental_price: "5",
#         created_at: created_at,
#         updated_at: created_at,
#         user: users.sample
#     )

#     if g.valid?
#         rand(1..5).times do
#             t = Topic.create(
#                 title: Faker::Hacker.say_something_smart,
#                 body: Faker::ChuckNorris.fact,
#                 view_count: rand(100_00),
#                 created_at: created_at,
#                 updated_at: created_at,
#                 user: users.sample,
#                 game: g
#             )
    
            
#             if t.valid?
#                 rand(1..5).times do
#                     Comment.create(body: Faker::ChuckNorris.fact,
#                     topic: t,
#                     game: g, 
#                     user: users.sample
#                 )
#                 end
             
#             end

#         end
    
#     end
# end




games = Game.all

40.times do
    created_at = Faker::Date.backward(days: 365 * 10)
    randon_game = games.sample
        Rental.create(
        title: randon_game.title,
        image_url: randon_game.image_url,
        description: "Hi all, I have a game available for rent. I'm in the xxxx area.",
        rental_price: rand(5..25),
        rental_time: rand(1..3),
        created_at: created_at,
        updated_at: created_at,
        user: users.sample,
        game: randon_game,
    )
end



games = Game.all
topics = Topic.all
users = User.all
comments = Comment.all
rentals = Rental.all
# applications = Application.all

puts "Games: #{games.count}"
puts "Users: #{users.count}"
puts "Topics: #{topics.count}"
puts "Comments: #{comments.count}"
puts "Rentals: #{rentals.count}"
# puts "Applications: #{applications.count}"