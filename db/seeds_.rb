# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 7.1 Escribir la creación de 5 nuevos Blogs, con los nombres (Blog 1, Blog 2, Blog 3, Blog 4 y Blog 5)

b = Blog.new
b.name = "Blog 1"
b.description = "descripcion de blog 1"
b.save

b = Blog.new
b.name = "Blog 2"
b.description = "descripcion de blog 2"
b.save

b = Blog.new
b.name = "Blog 3"
b.description = "descripcion de blog 3"
b.save

b = Blog.new
b.name = "Blog 4"
b.description = "descripcion de blog 4"
b.save

b = Blog.new
b.name = "Blog 5"
b.description = "descripcion de blog 5"
b.save

puts "Trabajo 7.1 Hecho."

#7.2 Escribir 2 publicaciones para cada Blog.
p = Post.new
p.title = "Post 1"
p.content = "Contenido de mas de 15 caracteres post 1"
p.blog = Blog.where(name: "Blog 1").first
p.save

p = Post.new
p.title = "Post 2"
p.content = "Contenido de mas de 15 caracteres post 2"
p.blog = Blog.where(name: "Blog 1").first
p.save

p = Post.new
p.title = "Post 3"
p.content = "Contenido de mas de 15 caracteres post 3"
p.blog = Blog.where(name: "Blog 2").first
p.save

p = Post.new
p.title = "Post 4"
p.content = "Contenido de mas de 15 caracteres post 4"
p.blog = Blog.where(name: "Blog 2").first
p.save

p = Post.new
p.title = "Post 5"
p.content = "Contenido de mas de 15 caracteres post 5"
p.blog = Blog.where(name: "Blog 3").first
p.save

p = Post.new
p.title = "Post 6"
p.content = "Contenido de mas de 15 caracteres post 6"
p.blog = Blog.where(name: "Blog 3").first
p.save

p = Post.new
p.title = "Post 7"
p.content = "Contenido de mas de 15 caracteres post 7"
p.blog = Blog.where(name: "Blog 4").first
p.save

p = Post.new
p.title = "Post 8"
p.content = "Contenido de mas de 15 caracteres post 8"
p.blog = Blog.where(name: "Blog 4").first
p.save

p = Post.new
p.title = "Post 9"
p.content = "Contenido de mas de 15 caracteres post 9"
p.blog = Blog.where(name: "Blog 5").first
p.save

p = Post.new
p.title = "Post 10"
p.content = "Contenido de mas de 15 caracteres post 10"
p.blog = Blog.where(name: "Blog 5").first
p.save

puts "Trabajo 7.2 Hecho."

#7.3 > Obtener todas las publicaciones para el primer blog.

puts Post.blog.where(name:"Blog 1").count

puts "Trabajo 7.3 Hecho."

#7.4 Obtener todas las publicaciones para el último blog (ordenadas por titulo en orden descendiente).

puts Post.where(name: "Blog 5").first.post.
order("title desc")

#7.5> Actualizar el título de la primera publicación.
s = Post.find(1)
s.name = "nuevo post actualizado"
s.save

#7.6 > Eliminar la tercera publicación (haga que el modelo borre automáticamente todos los mensajes asociados con la tercera publicación cuando la elimines).

Post.where(name: "Post 3").first.destroy

#7.7 > Obtener todos los blog.

puts Blog.all

#7.8 > Obtener todos los blog con id menor a 5.

puts Blogs.where(id: less_than 5).first






