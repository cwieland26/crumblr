# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#1st
post1 = Post.new
post1.title = "1st post"
post1.kind = "text"
post1.content = "1st post"
post1.save

7.times do 
	post1.hearts.create
end

#brownies
post2 = Post.new
post2.title = "Brownies"
post2.kind = "image"
post2.content = "http://www.examiner.com/images/blog/wysiwyg/image/brownies1.jpg"
post2.save

5.times { post2.hearts.create}

#cookies
post3 = Post.new
	post3.title = "cookies"
	post3.title = "image"
	post3.content = "http://graphics8.nytimes.com/images/2008/07/09/dining/09chip-600.jpg"
	post3.save

6.times {post3.hearts.create}

#post4
post4 = Post.new(title: "post4", kind: "text")
post4.content = <<content
	sample text with "qoutes"
content

post4.save
2.times {post4.hearts.create}
