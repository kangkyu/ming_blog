# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

articles = Article.create!([
{
  title: "Lorem ipsum",
  body: "dolor sit amet, ea sit detracto iracundia euripidis. Mei eu minim reprimique, his justo theophrastus ne. Vel at soleat moderatius appellantur, nam an accusam vituperatoribus. Aperiri persius detraxit pro ex, ea vim vivendo fabellas, duis omnis nulla mei ex.

Has animal mnesarchum no, cum omittam signiferumque ut. Cu facer euripidis eos, ad officiis expetendis nam. Vim in suas prima atqui. Qui an cibo prompta lucilius. No amet probatus vix, his saepe utinam instructior no.

Eam docendi honestatis temporibus no. Quando audire vivendum te nec, sint laudem expetenda eam no, iusto graece salutandi qui an. Usu ea ridens meliore, ea nullam dicunt doctus duo. Vim ipsum efficiendi an. Ut cum hinc meis omittantur, sensibus vulputate complectitur ex duo.

Eros tation singulis vel eu. Ex nec fabulas legimus accumsan. No duis exerci reprehendunt eum, malis dicat ullum mea id. Ei option dolorum duo.

Vis in putant fabellas, eos inani possit impetus an. Vim corpora probatus convenire in, ex eam volumus sapientem conceptam. Pri te possit insolens pericula. Eu vulputate deseruisse ius. Veniam voluptatum neglegentur vel id. Duo no assum epicurei, te vocibus pertinax imperdiet nam."
},
{
  title: "Hello, world!",
  body: "Extend Bootstrap's grid system with the thumbnail component to easily display grids of images, videos, text, and more."
}])

Comment.create!(title: "Yes!", text: "Go for it!", article: articles.first)
User.create!(name: "kang-kyu lee", email: "lee@kangkyu.com", user_name: "kangkyu", password: "1111", password_confirmation: "1111")
