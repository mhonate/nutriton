# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Subcategory.destroy_all

@category = Category.create(name: 'LECHE Y DERIVADOS', code: '1.0')
Subcategory.create(name: 'LECHE', code: '1.1', category: @category)
Subcategory.create(name: 'YOGUR', code: '1.2', category: @category)
Subcategory.create(name: 'QUESO', code: '1.3', category: @category)

@category = Category.create(name: 'HUEVOS', code: '2.0')
Subcategory.create(name: 'HUEVO DE GALLINA', code: '2.1', category: @category)
Subcategory.create(name: 'HUEVOS OTRAS AVES', code: '2.1', category: @category)

@category = Category.create(name: 'AVES', code: '3.0')
Subcategory.create(name: 'POLLOS', code: '3.1', category: @category)
Subcategory.create(name: 'PAVO', code: '3.2', category: @category)
Subcategory.create(name: 'GANSO', code: '3.3', category: @category)
Subcategory.create(name: 'PATO', code: '3.4', category: @category)
Subcategory.create(name: 'EMU', code: '3.5', category: @category)

@category = Category.create(name: 'CARNES Y VISCERAS', code: '4.0')
Subcategory.create(name: 'VACUNO', code: '4.1', category: @category)
Subcategory.create(name: 'CERDO', code: '4.2', category: @category)
Subcategory.create(name: 'CORDERO', code: '4.3', category: @category)
Subcategory.create(name: 'OTRAS CARNES', code: '4.4', category: @category)
Subcategory.create(name: 'VISCERAS', code: '4.5', category: @category)

@category = Category.create(name: 'CECINAS', code: '5.0')
Subcategory.create(name: 'CECINAS', code: '5.1', category: @category)

@category = Category.create(name: 'PESCADOS Y MARISCOS', code: '6.0')
Subcategory.create(name: 'PESCADOS', code: '6.1', category: @category)
Subcategory.create(name: 'MARISCOS Y OTROS ', code: '6.2', category: @category)

@category = Category.create(name: 'LEGUMINOSAS', code: '7.0')
Subcategory.create(name: 'SEMILLAS SECAS', code: '7.1', category: @category)

@category = Category.create(name: 'SEMILLAS, ALMENDRAS Y NUECES', code: '8.0')
Subcategory.create(name: 'SEMILLAS, ALMENDRAS Y NUECES', code: '8.1', category: @category)

@category = Category.create(name: 'CEREALES, LEGUMBRES FRESCAS  Y DERIVADOS', code: '9.0')
Subcategory.create(name: 'GRANOS FRESCOS', code: '9.1', category: @category)
Subcategory.create(name: 'CEREALES SECOS Y DERIVADOS', code: '9.2', category: @category)
Subcategory.create(name: 'PANES', code: '9.3', category: @category)
Subcategory.create(name: 'GALLETAS Y MASAS DULCES', code: '9.4', category: @category)

@category = Category.create(name: 'PAPAS Y SIMILARES', code: '10.0')
Subcategory.create(name: 'PAPAS', code: '10.1', category: @category)
Subcategory.create(name: 'OTROS TUBÉRCULOS Y RAÍCES', code: '10.2', category: @category)


@category = Category.create(name: 'VERDURAS, ALGAS Y HONGOS DIGUEÑE', code: '11.0')
Subcategory.create(name: 'VERDURAS (130)', code: '11.1', category: @category)
Subcategory.create(name: 'ALGAS', code: '11.2', category: @category)
Subcategory.create(name: 'HONGOS COMESTIBLES', code: '11.3', category: @category)
Subcategory.create(name: 'SALSAS', code: '11.4', category: @category)

@category = Category.create(name: 'FRUTAS', code: '12.0')
Subcategory.create(name: 'FRUTAS', code: '12.1', category: @category)

@category = Category.create(name: 'ACEITE', code: '13.0')
Subcategory.create(name: 'ACEITES', code: '13.1', category: @category)
Subcategory.create(name: 'CREMAS,  MANTECAS Y GRASAS', code: '13.2', category: @category)

@category = Category.create(name: 'AZUCARES Y MIEL', code: '14.0')
Subcategory.create(name: 'AZUCARES Y MIEL', code: '14.1', category: @category)

@category = Category.create(name: 'BEBESTIBLES', code: '15.0')
Subcategory.create(name: 'JUGOS (EXPRIMIDOS) DE FRUTA', code: '15.1', category: @category)
Subcategory.create(name: 'BEBIDAS LACTEAS VEGETALES ', code: '15.2', category: @category)
Subcategory.create(name: 'BEBIDAS EN POLVO ', code: '15.3', category: @category)
Subcategory.create(name: 'BEBIDAS GASEOSAS Y ENERGETICAS', code: '15.4', category: @category)

@category = Category.create(name: 'BEBIDAS ALCOHOLICAS', code: '16.0')
Subcategory.create(name: 'BEBIDAS ALCOHOLICAS', code: '16.1', category: @category)

@category = Category.create(name: 'CONDIMENTOS Y ESPECIAS', code: '17.0')
Subcategory.create(name: 'CONDIMENTOS Y ESPECIAS', code: '17.1', category: @category)

@category = Category.create(name: 'SNACK PRODUCTOS DULCES', code: '18.0')
Subcategory.create(name: 'SNACK PRODUCTOS DULCES Y SALADOS', code: '18.1', category: @category)

@category = Category.create(name: 'VARIOS', code: '19.0')
Subcategory.create(name: 'VARIOS', code: '19.1', category: @category)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?