require 'nokogiri'
require 'open-uri'

url = 'https://www.psychologies.co.uk/test/are-you-an-introvert-or-an-extrovert/'
html = URI.open(url)
doc = Nokogiri::HTML(html)

questions = doc.css('.c-test__question-text')
answers = doc.css('.c-test__answer-label .c-test__answer-text')

puts 'Deleting Questions'
Question.destroy_all

puts 'Creating Questions and Answers'
questions.each_with_index do |question, index|
  new_question = Question.create!(body: question.text.strip)

  score = 1
  answers[index * 4, 4].each do |answer|
    new_question.answers.create!(body: answer.text.strip, score:)
    score += 1
  end
end

puts 'Done'
