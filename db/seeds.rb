# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

Subcategory.destroy_all
Category.destroy_all
Compound.destroy_all
Recipe.destroy_all
Source.destroy_all
Food.destroy_all
User.destroy_all
AdminUser.destroy_all

@category = Category.create(name: 'LECHE Y DERIVADOS', code: '1.0', Photo: open('http://d2x9t9e76t51np.cloudfront.net/wp-content/uploads/2016/11/15203312/Leche-y-derivados.jpg'))
Subcategory.create(name: 'LECHE', code: '1.1', category: @category)
Subcategory.create(name: 'YOGUR', code: '1.2', category: @category)
Subcategory.create(name: 'QUESO', code: '1.3', category: @category)

@category = Category.create(name: 'HUEVOS', code: '2.0', Photo: open('https://i.blogs.es/09c069/huevo/450_1000.jpg'))
Subcategory.create(name: 'HUEVO DE GALLINA', code: '2.1', category: @category)
Subcategory.create(name: 'HUEVOS OTRAS AVES', code: '2.1', category: @category)

@category = Category.create(name: 'AVES', code: '3.0', Photo: open('https://biotrendies.com/wp-content/uploads/2015/07/carne-pollo.jpg'))
Subcategory.create(name: 'POLLOS', code: '3.1', category: @category)
Subcategory.create(name: 'PAVO', code: '3.2', category: @category)
Subcategory.create(name: 'GANSO', code: '3.3', category: @category)
Subcategory.create(name: 'PATO', code: '3.4', category: @category)
Subcategory.create(name: 'EMU', code: '3.5', category: @category)

@category = Category.create(name: 'CARNES Y VISCERAS', code: '4.0', Photo: open('https://i.blogs.es/e1d151/carnes.hierro/450_1000.jpg'))
Subcategory.create(name: 'VACUNO', code: '4.1', category: @category)
Subcategory.create(name: 'CERDO', code: '4.2', category: @category)
Subcategory.create(name: 'CORDERO', code: '4.3', category: @category)
Subcategory.create(name: 'OTRAS CARNES', code: '4.4', category: @category)
Subcategory.create(name: 'VISCERAS', code: '4.5', category: @category)

@category = Category.create(name: 'CECINAS', code: '5.0', Photo: open('https://upload.wikimedia.org/wikipedia/commons/7/7f/Cecina.jpg'))
Subcategory.create(name: 'CECINAS', code: '5.1', category: @category)

@category = Category.create(name: 'PESCADOS Y MARISCOS', code: '6.0', Photo: open('http://assets.diarioconcepcion.cl/2017/05/imagenPrincipal-5455-569x400.jpg'))
Subcategory.create(name: 'PESCADOS', code: '6.1', category: @category)
Subcategory.create(name: 'MARISCOS Y OTROS ', code: '6.2', category: @category)

@category = Category.create(name: 'LEGUMINOSAS', code: '7.0', Photo: open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGvb8f_W7GYQK_9VqM_ozQUo71al-IP2P-RevfXS2eYuod-Qxi'))
Subcategory.create(name: 'SEMILLAS SECAS', code: '7.1', category: @category)

@category = Category.create(name: 'SEMILLAS, ALMENDRAS Y NUECES', code: '8.0', Photo: open('https://www.nanax.pe/wp-content/uploads/2016/07/semillas-y-nueces-1.jpg'))
Subcategory.create(name: 'SEMILLAS, ALMENDRAS Y NUECES', code: '8.1', category: @category)

@category = Category.create(name: 'CEREALES, LEGUMBRES FRESCAS  Y DERIVADOS', code: '9.0', Photo: open('http://www.edualimentaria.com/images/legumbres/tipos-de-legumbres.jpg'))
Subcategory.create(name: 'GRANOS FRESCOS', code: '9.1', category: @category)
Subcategory.create(name: 'CEREALES SECOS Y DERIVADOS', code: '9.2', category: @category)
Subcategory.create(name: 'PANES', code: '9.3', category: @category)
Subcategory.create(name: 'GALLETAS Y MASAS DULCES', code: '9.4', category: @category)

@category = Category.create(name: 'PAPAS Y SIMILARES', code: '10.0', Photo: open('https://img.elcomercio.pe/files/article_content_ec_fotos/uploads/2017/03/22/58d2204e0fc33.jpeg'))
Subcategory.create(name: 'PAPAS', code: '10.1', category: @category)
Subcategory.create(name: 'OTROS TUBÉRCULOS Y RAÍCES', code: '10.2', category: @category)


@category = Category.create(name: 'VERDURAS, ALGAS Y HONGOS DIGUEÑE', code: '11.0', Photo: open('http://www.adelgaceenlinea.com/wp-content/uploads/algas.jpg'))
Subcategory.create(name: 'VERDURAS (130)', code: '11.1', category: @category)
Subcategory.create(name: 'ALGAS', code: '11.2', category: @category)
Subcategory.create(name: 'HONGOS COMESTIBLES', code: '11.3', category: @category)
Subcategory.create(name: 'SALSAS', code: '11.4', category: @category)

@category = Category.create(name: 'FRUTAS', code: '12.0', Photo: open('http://frutas.consumer.es/sites/default/files/compra_0.jpg'))
Subcategory.create(name: 'FRUTAS', code: '12.1', category: @category)

@category = Category.create(name: 'ACEITE', code: '13.0', Photo: open('https://static2.diariosur.es/www/multimedia/201810/26/media/cortadas/aceite-oliva-1-kfjC-U601368691921E7D-624x385@RC.jpg'))
Subcategory.create(name: 'ACEITES', code: '13.1', category: @category)
Subcategory.create(name: 'CREMAS,  MANTECAS Y GRASAS', code: '13.2', category: @category)

@category = Category.create(name: 'AZUCARES Y MIEL', code: '14.0', Photo: open('https://laopinionla.files.wordpress.com/2018/02/shutterstock_263002952.jpg?quality=80&strip=all&w=940'))
Subcategory.create(name: 'AZUCARES Y MIEL', code: '14.1', category: @category)

@category = Category.create(name: 'BEBESTIBLES', code: '15.0', Photo: open('http://sabores.cl/wp-content/uploads/2016/04/Producto-6-Bebestibles.png'))
Subcategory.create(name: 'JUGOS (EXPRIMIDOS) DE FRUTA', code: '15.1', category: @category)
Subcategory.create(name: 'BEBIDAS LACTEAS VEGETALES ', code: '15.2', category: @category)
Subcategory.create(name: 'BEBIDAS EN POLVO ', code: '15.3', category: @category)
Subcategory.create(name: 'BEBIDAS GASEOSAS Y ENERGETICAS', code: '15.4', category: @category)

@category = Category.create(name: 'BEBIDAS ALCOHOLICAS', code: '16.0', Photo: open('https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Terremotopiojera.jpg/320px-Terremotopiojera.jpg'))
Subcategory.create(name: 'BEBIDAS ALCOHOLICAS', code: '16.1', category: @category)

@category = Category.create(name: 'CONDIMENTOS Y ESPECIAS', code: '17.0', Photo: open('https://cdn3.ticbeat.com/src/uploads/2017/09/7-especias-beneficios-para-la-salud-810x540.jpg?x32709'))
Subcategory.create(name: 'CONDIMENTOS Y ESPECIAS', code: '17.1', category: @category)

@category = Category.create(name: 'SNACK PRODUCTOS DULCES', code: '18.0', Photo: open('https://www.b2in.es/165-thickbox_default/snacks-dulces-y-salados.jpg'))
Subcategory.create(name: 'SNACK PRODUCTOS DULCES Y SALADOS', code: '18.1', category: @category)

@category = Category.create(name: 'VARIOS', code: '19.0', Photo: open('https://images-na.ssl-images-amazon.com/images/I/51GdWkplQIL._SY450_.jpg'))
Subcategory.create(name: 'VARIOS', code: '19.1', category: @category)


User.create(name:'juan', email:'admin@gmail.com',password:'123456', password_confirmation:'123456',role: :admin) if Rails.env.development?
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
