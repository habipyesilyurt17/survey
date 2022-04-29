surveys = Survey.create([{name: "Developer Survey"}, {name: "Animal Survey"}, {name: "Pisano Survey"}])
questions = Question.create([
  {
    survey_id: surveys[0].id,
    question_type: "single_choice",
    name: "What is the best web framework?"
  },
  {
    survey_id: surveys[0].id,
    question_type: "long_answer",
    name: "Why do you feel this way?"
  },
  {
    survey_id: surveys[0].id,
    question_type: "multiple_choice",
    name: "What langueages have you worked with?"
  },
  {
    survey_id: surveys[1].id,
    question_type: "single_choice",
    name: "What is the best favorite animal?"
  },
  {
    survey_id: surveys[1].id,
    question_type: "long_answer",
    name: "Why do you feel this way?"
  },
  {
    survey_id: surveys[1].id,
    question_type: "multiple_choice",
    name: "What animals are kept at home?"
  },
  {
    survey_id: surveys[2].id,
    question_type: "single_choice",
    name: "How was your experience with us today?"
  },
  {
    survey_id: surveys[2].id,
    question_type: "long_answer",
    name: "Please explain the reason for your choice"
  },
])

Answer.create(question_id: questions[0].id, name: "Symfony")
Answer.create(question_id: questions[0].id, name: "Ruby on Rails")
Answer.create(question_id: questions[0].id, name: "Django")
Answer.create(question_id: questions[1].id, name: "")
Answer.create(question_id: questions[2].id, name: "Python")
Answer.create(question_id: questions[2].id, name: "Ruby")
Answer.create(question_id: questions[2].id, name: "PHP")
Answer.create(question_id: questions[3].id, name: "Cat")
Answer.create(question_id: questions[3].id, name: "Dog")
Answer.create(question_id: questions[3].id, name: "Bird")
Answer.create(question_id: questions[4].id, name: "")
Answer.create(question_id: questions[5].id, name: "Hors")
Answer.create(question_id: questions[5].id, name: "Cat")
Answer.create(question_id: questions[5].id, name: "Dog")
Answer.create(question_id: questions[5].id, name: "Bird")
Answer.create(question_id: questions[6].id, name: "Very Good")
Answer.create(question_id: questions[6].id, name: "Good")
Answer.create(question_id: questions[6].id, name: "Neutral")
Answer.create(question_id: questions[6].id, name: "Bad")
Answer.create(question_id: questions[6].id, name: "Very Bad")
Answer.create(question_id: questions[7].id, name: "")