require 'faker'
require "open-uri"

Post.destroy_all
User.destroy_all

user1 = User.create!(email: "mario@email.com", password: "mario1234", nickname: "Mario", admin: true)
file =  URI.open("app/assets/images/avatar.png")
user1.photo.attach(io: file, filename: "avatar-mario.png", content_type: "image/png")
user1.save

file = URI.open("https://images.unsplash.com/photo-1517420704952-d9f39e95b43e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80")
post = Post.create!(title: "Super led", content: "Super led 60w", url: "some post", user: user1)
post.photo.attach(io: file, filename: "post1.jpg", content_type: "image/jpg")
post.save

file = URI.open("https://images.unsplash.com/photo-1509390559807-3144e7d29097?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80")
post = Post.create!(title: "Mega led", content: "Mega led 80w", url: "some post", user: user1)
post.photo.attach(io: file, filename: "post2.jpg", content_type: "image/jpg")
post.save

file = URI.open("https://images.unsplash.com/photo-1621905251918-48416bd8575a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80")
post = Post.create!(title: "Hyper led", content: "Hyper led 100w", url: "some post", user: user1)
post.photo.attach(io: file, filename: "post3.jpg", content_type: "image/jpg")
post.save
