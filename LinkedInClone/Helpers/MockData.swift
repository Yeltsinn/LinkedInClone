//
//  Mock.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 03/05/25.
//

import Foundation

enum MockData {
    static let users: [User] = [
        User(
            name: "Michael Jordan",
            bio: "Professional Basketball Player | 6x NBA Champion | 5x NBA MVP",
            imageUrl: "michael_jordan_photo"
        ),
        User(
            name: "LeBron James",
            bio: "Professional Basketball Player | 4x NBA Champion | Philanthropist",
            imageUrl: "lebron_james_photo"
        ),
        User(
            name: "Marta Vieira",
            bio: "Professional Soccer Player | 6x FIFA World Player of the Year | Brazil Legend",
            imageUrl: "marta_vieira_photo"
        ),
        User(
            name: "Roger Federer",
            bio: "Tennis Legend | 20x Grand Slam Champion | Global Ambassador",
            imageUrl: "roger_federer_photo"
        ),
        User(
            name: "Ronaldo Nazário",
            bio: "Football Icon | 2x Ballon d'Or | World Cup Winner",
            imageUrl: "ronaldo_nazario_photo"
        ),
        User(
            name: "Serena Williams",
            bio: "Tennis Champion | 23x Grand Slam Titles | Entrepreneur",
            imageUrl: "serena_williams_photo"
        ),
        User(
            name: "Simone Biles",
            bio: "Gymnastics GOAT | 7x Olympic Medalist | Mental Health Advocate",
            imageUrl: "simone_biles_photo"
        ),
        User(
            name: "Usain Bolt",
            bio: "World's Fastest Man | 8x Olympic Gold Medalist | Sprinter & DJ",
            imageUrl: "usain_bolt_photo"
        )
    ]

    static let posts: [Post] = [
        Post(
            user: users[0],
            contentText: """
            🕺 Hee-hee! Big news — I’m stepping into the sneaker game.
            
            Introducing the Michael Jackson x Air Jordan "Moonwalk" Edition 👟🌙
            
            Designed with the amazing team at Jordan Brand, this isn’t just a shoe.
            It’s movement. It’s legacy.
            
            Don’t just walk. Moonwalk. 🎶
            
            #MJxAJ #AirJordan #MichaelJackson #MoonwalkEdition #LegacyInMotion
            """,
            publishedDate: Date(),
            commentsCount: 12,
            repostsCount: 8,
            reactionsCount: 546
        ),
        Post(
            user: users[1],
            contentText: """
            🔥 Greatness never settles.
            
            Proud to unveil the "Strive For Greatness" collection — built for those who grind.
            
            It’s more than fashion. It’s a mindset. 💪🏾👑
            
            #StriveForGreatness #KingJames #BasketballNeverStops
            """,
            publishedDate: Date(),
            commentsCount: 12,
            repostsCount: 8,
            reactionsCount: 546
        ),
        Post(
            user: users[2],
            contentText: """
            ⚽️ Representing my roots and the power of women in football.
            
            Grateful to launch my new mentorship initiative for young female athletes across Brazil.
            
            Let’s change the game — together. 🇧🇷✨
            
            #FutebolFeminino #Marta #InspireTheNext
            """,
            publishedDate: Date(),
            commentsCount: 12,
            repostsCount: 8,
            reactionsCount: 546
        ),
        Post(
            user: users[3],
            contentText: """
            🎾 Back on court — but this time, mentoring the next generation.
            
            Excited to announce the RF Junior Academy.
            
            Talent needs guidance. And love for the game.
            
            #RFlegacy #NextGenTennis #GameSetInspire
            """,
            publishedDate: Date(),
            commentsCount: 12,
            repostsCount: 8,
            reactionsCount: 546
        ),
        Post(
            user: users[4],
            contentText: """
            ⚽️ From the pitch to the boardroom — proud of our journey with Real Valladolid.
            
            Football gave me everything. Now I give back.
            
            O fenômeno nunca para.
            
            #R9 #FootballLife #Phenomeno
            """,
            publishedDate: Date(),
            commentsCount: 12,
            repostsCount: 8,
            reactionsCount: 546
        ),
        Post(
            user: users[5],
            contentText: """
            💥 Power, purpose, and persistence.
            
            Launching the Serena Collection — where sport meets style.
            
            For the woman who serves strength every day.
            
            #SerenaStyle #OwnYourPower #ChampionMindset
            """,
            publishedDate: Date(),
            commentsCount: 12,
            repostsCount: 8,
            reactionsCount: 546
        ),
        Post(
            user: users[6],
            contentText: """
            🌟 Strength is more than medals.
            
            Sharing my story, my struggles, and my triumphs in my new book *Unshakable*.
            
            To every young girl: you are more than enough.
            
            #Unshakable #SimoneBiles #MentalHealthMatters
            """,
            publishedDate: Date(),
            commentsCount: 12,
            repostsCount: 8,
            reactionsCount: 546
        ),
        Post(
            user: users[7],
            contentText: """
            ⚡️ Speed meets sound!
            
            Dropping my new track this Friday — it’s all about energy and rhythm.
            
            From track star to dancehall vibes — let’s go! 🇯🇲🎶
            
            #BoltRhythms #LightningBolt #FastLife
            """,
            publishedDate: Date(),
            commentsCount: 12,
            repostsCount: 8,
            reactionsCount: 546
        )
    ]
}
