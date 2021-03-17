# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Entry.destroy_all
Prompt.destroy_all

#Users
user_1 = User.create(username:'evher', password: 'evher123', email: 'evher@gmail.com')
user_2 = User.create(username:'yolis', password: 'yolis123', email: 'yolis@gmail.com')
user_3 = User.create(username:'ollie', password: 'ollie123', email: 'ollie@gmail.com')
user_4 = User.create(username:'pebs', password: 'pebs123', email: 'pebs@gmail.com')
user_5 = User.create(username:'ellie', password: 'ellie123', email: 'ellie@gmail.com')

#
prompt_1 = Prompt.create(question: 'What are some of your coping mechanisms? Write them out and evaluate which ones are working for you.')
prompt_2 = Prompt.create(question: 'What is a goal you have? Write it out and then talk about how you\'re going to reach that goal')
prompt_3 = Prompt.create(question: 'What did you feel like today? List out every emotion that you went through and describe how it felt in that moment.')
prompt_4 = Prompt.create(question: 'How would you describe yourself to a stranger? What are your likes, your dislikes, your strengths, or your weaknesses? ')
prompt_5 = Prompt.create(question: 'Write a message for yourself on bad days. The message can look however you want; remind yourself of happier times, point out good things in your life, and do whatever you think will mean the most to you when you’re in a bad place.')
prompt_6 = Prompt.create(question: 'What are 5 things that makes you incredibly happy and describe why they make you feel this way')
prompt_7 = Prompt.create(question: 'Write about the people in your life that make you feel the most “at ease” and what they do to make you feel that way.')
prompt_8 = Prompt.create(question: 'Write about a difficult memory and the coping mechanisms you used at the time. Would you change the way you dealt? How?')
prompt_9 = Prompt.create(question: 'What has your anxiety taught you about yourself?')
prompt_10 = Prompt.create(question: 'Describe what love means to you in detail.')
prompt_11 = Prompt.create(question: 'Write about 5 songs that mean the most to you. Why do the lyrics speak to you? How do you relate to these songs? How do they make you feel when you hear them?')
prompt_12 = Prompt.create(question: 'What risks do you want to take? What’s holding you back?')
prompt_13 = Prompt.create(question: 'What are some of the strongest emotions you’ve ever felt? Write about how those emotions affected you and what caused you to feel those emotions.')
prompt_14 = Prompt.create(question: 'What are 3 things that make you angry? Why?')
prompt_15 = Prompt.create(question: 'What are some of your favorite books? Why? Write about them.')

#entries
entry_1 = Entry.create(subject: 'Imposter syndrome', emotion: 'Okay', emotion_image: '😐', body: 'I keep questioning, keep comparing myself to others. My classmates seem to know so much more about the material than I do. Why cant I just absorb all the knowledge in one go?', topic: 'School', topic_image: '🏫', highlight: 'My wife brought me flowers :)', date: '03/13/2021', user_id: 1, prompt_id: 2)

entry_2 = Entry.create(subject: 'My hours are getting cut...', emotion: 'stressed', emotion_image: '😥', body: 'I\'m not sure what to do about our financial situation. The bills are piling up... I think its time to start looking for another job.. Hopefully I can find one and fast..', topic: 'Finance', topic_image: '💲', highlight: 'A butterfly landed on my arm today! I stood as still as I could and took in its beauty.', date: '03/14/2021', user_id: 2, prompt_id: 1)

entry_3 = Entry.create(subject: 'My wife received a promotion!!', emotion: 'Happy', emotion_image: '😃', body: 'I believe someone or something is looking out for us! Yolis got a promotion at work and a bonus! I can cry of happiness right now!', topic: 'Work', topic_image: '💼', highlight: 'I found my favorite hat!!', date: '03/15/2021', user_id: 1, prompt_id: 3)

