//
//  Question.swift
//  QuizEmoji
//
//  Created by Роман Захаров on 13.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

struct Question {
    let level: Level
    let category: Category
    let emoji: String
    let text: String
    let answers: [Answer]
}

extension Question {
    
    static func getQuestions() -> [Question] {
        
        return [
            Question(
                level: .one,
                category: .auto,
                emoji: "🌍🚗🔋🔇",
                text: "Говорят именно они иземнили мир авто",
                answers: [
                    Answer(text: "Tesla",
                           correct: true,
                           answerText: "Этот вопрос был полной халявой!",
                           points: 1),
                    Answer(text: "Geo",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Honda",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Lancia",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            Question(
                level: .one,
                category: .auto,
                emoji: "🚜🍕🐂",
                text: "Ты не устоишь что бы обернуться!)",
                answers: [
                    Answer(text: "Lamborghini",
                           correct: true,
                           answerText: "Итальянский предприниматель Ферручио Ламборгини сколотил свое первое состояние, занимаясь разработкой и постройкой тракторов. А еще он был нешуточным фанатом крупной рогатой скотины.",
                           points: 1),
                    Answer(text: "Porsche",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Alfa Romeo",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Nikola",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            Question(
                level: .one,
                category: .auto,
                emoji: "🥐⚙️🗼🇫🇷",
                text: "Devinez quelle voiture? (en Français)",
                answers: [
                    Answer(text: "Citroen",
                           correct: true,
                           answerText: "Круассан – абстрактная отсылка к Франции. А вот шестерня и Эйфелева башня – прямые подсказки. На заре карьеры Андре Ситроен производил шевронные зубчатые колеса (отсюда и эмблема), а символ Парижа использовал в качестве рекламной площадки.",
                           points: 1),
                    Answer(text: "Peugeot",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Renault",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Simca",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            Question(
                level: .one,
                category: .auto,
                emoji: "🥨🧵🚲➡️🥐",
                text: "Маленька подсказка - 'Мы живем автомобилями'",
                answers: [
                    Answer(text: "Opel",
                           correct: true,
                           answerText: "Бретцель – визитная карточка южной Германии. Катушка ниток и велосипед отсылают к ранним промыслам Адама Опеля. Два заключительных символа – к недавней продаже марки французскому концерну PSA! Подсказка является слоганом компании.",
                           points: 1),
                    Answer(text: "Skoda",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Peugeot",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Volkswagen",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            Question(
                level: .one,
                category: .auto,
                emoji: "🐴🙅🏼‍♂️🕵️‍♂️🏭🚙🚙",
                text: "Одна из моделей этой марки была любомой машиной грабителей банков",
                answers: [
                    Answer(text: "Ford",
                           correct: true,
                           answerText: "Созданный стариной Генри Ford Model T заменил человечеству лошадь, став первым в истории по-настоящему массовым автомобилем. И да – Форда принято считать отцом конвейера и амбассадором шляпы (он снимал ее только при виде Alfa Romeo).",
                           points: 1),
                    Answer(text: "Jeep",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Buick",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Chevrolet",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            Question(
                level: .one,
                category: .auto,
                emoji: "🛩🪑🔑📉⚰️",
                text: "Семейные и быстрые...",
                answers: [
                    Answer(text: "Saab",
                           correct: true,
                           answerText: "Авиационное прошлое, территориальное родство с крупнейшим мебельным ритейлером и замок зажигания на центральном тоннеле – это все про SAAB. Отличная была марка.",
                           points: 1),
                    Answer(text: "Mazda",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Volvo",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Lancia",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            Question(
                level: .one,
                category: .auto,
                emoji: "🥖⚙️",
                text: "Тут вопрос на смекалку!)",
                answers: [
                    Answer(text: "УАЗ",
                           correct: true,
                           answerText: "Да, это наш УАЗ - семейство советских и российских полноприводных грузо-пассажирских автомобилей повышенной проходимости. Серийный выпуск УАЗ-452 начат в 1965 году.",
                           points: 1),
                    Answer(text: "ЗАС",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "ВАЗ",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "МАЗ",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            Question(
                level: .one,
                category: .auto,
                emoji: "🚗🐴🏁💰💰",
                text: "Чистокровный жеребец!",
                answers: [
                    Answer(text: "Ferrari",
                           correct: true,
                           answerText: "Достаточно увидеть красный цвет и лошадь что-бы узнать работу Энцо Феррари.",
                           points: 1),
                    Answer(text: "Alpine",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Saleen",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Koenigsegg",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            Question(
                level: .one,
                category: .auto,
                emoji: "✈️🛠➡️🚘",
                text: "Главный музыкадьный хит 2000х",
                answers: [
                    Answer(text: "BMW",
                           correct: true,
                           answerText: "Мало кто знает что эмблема автомобилей BMW - это крутящийся пропеллер авиационного двигателя. История компании начинается с 1913 года и основным направлением было производство двигателей для самолетов.",
                           points: 1),
                    Answer(text: "Audi",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Land Rover",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Mini",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            Question(
                level: .one,
                category: .auto,
                emoji: "🚙🏔⛺️",
                text: "Крутой Уокер любил эту машину",
                answers: [
                    Answer(text: "Jeep",
                           correct: true,
                           answerText: "Один из редких случаев когда марка автомобиля появилась благодаря военным контрактам и выросла в независимую компанию! Уже нет...",
                           points: 1),
                    Answer(text: "Lincoln",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Land Rover",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Dodge",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            // MARK: - LevelTwo
            Question(
                level: .two,
                category: .film,
                emoji: "🔕🐑🐑🐑",
                text: "Испытайте настоящий страх...",
                answers: [
                    Answer(text: "Молчание ягнят",
                           correct: true,
                           answerText: "Вы знали что это третий фильм в истории кинематографа, который выиграл «большую пятерку» Оскаров – за лучший фильм, главные мужскую и женскую роли, за лучшие режиссуру и сценарий. Двумя другими были «Это случилось однажды ночью» в 1935 году и «Пролетая над гнездом кукушки» в 1976 году.",
                           points: 1),
                    Answer(text: "Стадо",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Волки и овцы",
                           correct: false,
                           answerText: "не верно",
                           points: 0),
                    Answer(text: "Одинокий пастух",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            Question(
                level: .two,
                category: .film,
                emoji: "🏝🏐",
                text: "Почти как самоизоляция)",
                answers: [
                    Answer(text: "Изгой",
                           correct: true,
                           answerText: "Одна из лучших работ Земекиса и Хэнкса. Производство картины было приостановлено почти на год, чтобы дать Тому Хэнксу возможность похудеть и отрастить волосы. В перерыве между съемками фильма «Изгой», режиссер Роберт Земекис успел снять фильм «Что скрывает ложь».",
                           points: 1),
                    Answer(text: "Пляж",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Подземная дрожь",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Спасатели малибу",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            Question(
                level: .two,
                category: .film,
                emoji: "👂👃👅✋👀6️⃣",
                text: "Стоит сразу посмотреть второй раз...",
                answers: [
                    Answer(text: "Шестое чувство",
                           correct: true,
                           answerText: "«Шестое Чувство» мистический фильм американского режиссёра М. Найт Шьямалана, вышедший в прокат 6 августа 1999 года, стал хитом мирового проката, а его концовка...",
                           points: 1),
                    Answer(text: "Без чувств",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Проклятый остров",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Части тела",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            Question(
                level: .two,
                category: .film,
                emoji: "👦🏻👐✂️",
                text: "Странноватенькое кино...",
                answers: [
                    Answer(text: "Эдвард руки ножницы",
                           correct: true,
                           answerText: "В 1974, будучи подростком, Тим Бертон нарисовал человечка с ножницами вместо рук. Парень еще не знал, что этот рисованный чудак превратится в реального персонажа его собственного фильма. И вот, в декабре 1990 года «Эдвард руки-ножницы» вышел на большие экраны и сразу полюбился зрителю.",
                           points: 1),
                    Answer(text: "Цирюльник",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Суини Тодд",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Не шутите с зоханом",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            Question(
                level: .two,
                category: .film,
                emoji: "🚿🔪",
                text: "Культовое кино, не менее культового режиссера.",
                answers: [
                    Answer(text: "Психо",
                           correct: true,
                           answerText: "Сейчас этот фильм помнят только по одной сцене...Кстати был сделан чёрно-белым, поскольку Хичкок посчитал, что картина получится чересчур жестокой, если её снять в цвете.",
                           points: 1),
                    Answer(text: "Жаркое лето",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Темные Воды",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Машина времени в джакузи",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            Question(
                level: .two,
                category: .film,
                emoji: "👑🗣",
                text: "За короля!",
                answers: [
                    Answer(text: "Король говорит",
                           correct: true,
                           answerText: "Речь короля, представленная в фильме, составляет только две трети оригинала. Оригинальная речь имеет 407 слов; версия фильма имеет 269. Четыре предложения были удалены и четыре предложения были сокращены.",
                           points: 1),
                    Answer(text: "Король Артур",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Конан Варвар",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Иван Царевич",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            Question(
                level: .two,
                category: .film,
                emoji: "🐺🏦",
                text: "",
                answers: [
                    Answer(text: "Волк с Уолл-стрит ",
                           correct: true,
                           answerText: "Можный фильм! Слово «fu * k» и его многочисленные спряжения говорят 569 раз, делая этот фильм рекордсменом. Также на протяжении всего фильма всего 680 проклинаний",
                           points: 1),
                    Answer(text: "Казино",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Игра Чарли",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Майор Пэйн",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            Question(
                level: .two,
                category: .film,
                emoji: "⏰🍊",
                text: "Шедевр или крик времени?",
                answers: [
                    Answer(text: "Заводной апельсин",
                           correct: true,
                           answerText: "Зрителям «Заводного апельсина» из Великобритании, Австралии и Индии момент с хулиганским вождением Алекса и его банды понятен. А вот поклонникам фильма из других стран не совсем ясно, почему встречные машины переворачивались. Многие забывают, что в Англии левостороннее движение. Алекс и его droogi мчались на огромной скорости по встречке!",
                           points: 1),
                    Answer(text: "Оранжевая любовь",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Звонок",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Завтрак джоджии",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            Question(
                level: .two,
                category: .film,
                emoji: " 🧙‍♂️🧝‍♂️💍🌋",
                text: "Говорят именно они иземнили мир авто",
                answers: [
                    Answer(text: "Властелин колец",
                           correct: true,
                           answerText: "Впервые права на экранизацию трилогии выкупили в 1969 году участники группы The Beatles. Они планировали сами сняться в главных ролях, а в качестве режиссёра пригласили знаменитого Стэнли Кубрика. Он, правда, отказался, и планы по экранизации заглохли.",
                           points: 1),
                    Answer(text: "Викинги",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Темная Башня",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "Хроники Нарнии",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            Question(
                level: .two,
                category: .film,
                emoji: "👨🏻🧑🏿‍🦱🕶🕶",
                text: "Этот фильм можно пересматривать!",
                answers: [
                    Answer(text: "Люди в черном",
                           correct: true,
                           answerText: "Фильм легенда, а агента Кея мог сыграть Клинт Иствуд и это еще не все, многие люди реально думают что такая организация существует!",
                           points: 1),
                    Answer(text: "Клерки",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "1 + 1",
                           correct: false,
                           answerText: "Не верно",
                           points: 0),
                    Answer(text: "ЧБ",
                           correct: false,
                           answerText: "Не верно",
                           points: 0)
                ]
            ),
            // MARK: - LevelThree
        ]
    }
    

    
    
    static func getQuestions(level: Level, category: Category) -> [Question] {
        
        var count = 0
        var questionsFilter = [Question]()
        let questions = getQuestions()
        for question in questions {
            guard count <= 10 else { break }
            if level == question.level && category == question.category {
                questionsFilter.append(question)
                count += 1
            }
        }
        return questionsFilter.shuffled()
        
    }
}
