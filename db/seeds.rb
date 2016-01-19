Teacher.create!(    name: 'Wy1Im', 
                   lastname: 'Wy1Naz', 
                   login: "wy", 
                   password_digest: BCrypt::Password.create("wy"), 
                   email: 'wy1@example.com')
Student.create!(login: "st", 
                password_digest: BCrypt::Password.create("st"), 
                email: "st@exam.com", 
                name: "St1Im", 
                lastname: "StNAz", 
                albumnumber: "111", 
                group_id: "1"
                )

6.times do |lvl=0|
    5.times do |nr=0|
Exercise.create!(level: lvl += 1,
                 number: nr+=1,
                 reward: 10,
                 content: "Treść Zajęcia #{lvl}, ćwiczenie nr: #{nr}.",
                 hint: "Hint Zajęcia #{lvl}, ćwiczenie nr: #{nr}."
                 )
end
end
5.times do |n| 
    Sidequest.create!(teacher_id: 1,
                      level: n,
                      content: "tresc zadania pobocznego #{n+=1}",
                      challenger_id: 1,
                      challenger_answer: "odpowiedz wyzywajacego",
                      recipient_id: 2,
                      recipient_answer: "odpowiedz wyzywanego"
                      )
end

Group.create!(teacher_id: 1,
            name: "grupa testowa"    
            )