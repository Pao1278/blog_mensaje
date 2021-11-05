# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Tarea 1:Creacion de 5 Blog

t = Blog.new
t.name = "Blog 1"
t.description = "Descripcion blog 1"
t.save()

t = Blog.new
t.name = "Blog 2"
t.description = "Descripcion blog 2"
t.save()

t = Blog.new
t.name = "Blog 3"
t.description = "Descripcion blog 3"
t.save()

t = Blog.new
t.name = "Blog 4"
t.description = "Descripcion blog 4"
t.save()

t = Blog.new
t.name = "Blog 5"
t.description = "Descripcion blog 5"
t.save()

puts "Blogs creados: #{Blog.all.count}"
puts "Tarea 1. Hecha"

#Tarea 2: Creacion de Post

t = Post.new
t.title = "Un nuevo dia para crear"
t.content = "Contenido de la publicacion 1"
t.blog = Blog.where(name: "Blog 1").first
t.save()

t = Post.new
t.title = "Gestion emocional para niños"
t.content = "Contenido de la publicacion 1"
t.blog = Blog.where(name: "Blog 1").first
t.save()

t = Post.new
t.title = "Cultura y sociedad contemoranea"
t.content = "Contenido de la publicacion 2"
t.blog = Blog.where(name: "Blog 1").first
t.save()

t = Post.new
t.title = "Cuando poder decir no"
t.content = "Contenido de la publicacion 2"
t.blog = Blog.where(name: "Blog 1").first
t.save()

t = Post.new
t.title = " La busqueda del alma"
t.content = "Contenido de la publicacion 3"
t.blog = Blog.where(name: "Blog 3").first
t.save

t = Post.new
t.title = "Amar despues del dolor"
t.content = "Contenido de la publicacion 3"
t.blog = Blog.where(name: "Blog 3").first
t.save()

t = Post.new
t.title = "Forjando tu destino"
t.content = "Contenido de la publicacion 4"
t.blog = Blog.where(name: "Blog 4").first
t.save()

t = Post.new
t.title = "Tesoros en el cielo"
t.content = "Contenido de la publicacion 4"
t.blog = Blog.where(name: "Blog 4").first
t.save()

t = Post.new
t.title = "Logrando lo imposible"
t.content = "Contenido de la publicacion 5"
t.blog = Blog.where(name: "Blog 5").first
t.save()

t = Post.new
t.title = "Cuando el sol se detuvo"
t.blog = Blog.where(name: "Blog 5").first
t.save()

puts "Publicacion: #{Post.all.count}"
puts "Tarea 2. Hecha"

#Tarea 3: Crear mensajes

pp = Post.all.order("created_at asc").first

m = Message.new
m.post = pp
m.author = "Ray Rojas"
m.message = "Hola mundo marte x"
m.save()
#puts m.errors.messages

m = Message.new
m.post = pp
m.author = "Leo Rojas"
m.message = "Hola mundo venus x"
m.save()

puts "Mensaje: #{Message.all.count}"

puts "Tarea 3. Hecha"

#Tarea 4: Obtener todas las publicaciones del primer blog

puts Post.where(blog: Blog.where(name: "Blog 1").first).count
puts "Tarea 4. Hecha"


#Tarea 5: Obtener todas las publicaciones para el último blog (ordenadas por titulo en orden descendiente).

puts Post.where(blog: Blog.where(name: "Blog 5").first).order("title desc")
puts "Tarea 5. Hecha"

#Tarea 6: Actualizar el título de la primera publicación.

t = Post.all.first
t.title = "Nuevo titulo"
t.save()
puts Post.all.first.title
pust "Tarea 6. Hecha"

#Tarea 7:Eliminar la tercera publicación (haga que el modelo borre automáticamente todos los mensajes asociados con la tercera publicación cuando la elimines).
