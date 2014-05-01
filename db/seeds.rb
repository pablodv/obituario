# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.destroy_all

puts "Creating packets..."
Product.create(
  name: "Mensaje 1",
  title: "Sobre del recuerdo",
  summary: "Sobre personalizado que se entrega en forma lacrada, con su mensaje de condolancia.",
  description: "<p>El servicio Sobre Del Recuerdo, se ofrece a todas esas personas que se encuentran lejos en un momento de dolor pero necesitan enviar sus mas sinceras condolencias.</p>
  <p>El sobre del recuerdo esta compuesto por un sobre personalizado que se le entregara a los dolientes en forma lacrada.Este sobre contiene una hoja tambien personalizada donde los compañeros de la vida pueden escribir sus condolencias.</p>
  <p>Este servicio se tiene una demora de entrega de 2 a 3 horas posteriores a la solicitud del servicio.</p>",
  kind: "packet",
  price: 120
)
Product.create(
  name: "Mensaje 2",
  title: "Sobre del recuerdo + Ramo de Claveles o Crisabtemos",
  summary: "Ramo de Claveles o Crisabtemos que se entrega junto con un sobre personalizado que se entrega lacrado, con su mensaje de condolancia.",
  description: "<p>Envíe su más sincero pésame con esta ofrenda floral y manifieste su afecto en un momento de pérdida.</p>
  <p>La corona estara compuesta por una seleccion y combinacion de los más frescos gladiolos, crisantemos, claveles y flores de estación, estara adornado por laureles.</p>
  <p>El tamaño es de 1 metros de altura.</p>
  <p>Este servicio se tiene una demora de entrega de 2 a 3 horas posteriores a la solicitud del servicio.</p>",
  kind: "packet",
  price: 250
)
Product.create(
  name: "Mensaje 3",
  title: "Sobre del recuerdo + Ramo de Rosas Blancas",
  summary: "Ramo de Rosas Blancas que se entrega junto con un sobre personalizado que se entrega lacrado, con su mensaje de condolancia.",
  description: "<p>El servicio Sobre, se ofrece a todas esas personas que se encuentran lejos en un momento de dolor pero necesitan enviar sus mas sinceras condolencias. Este sobre se entregara a las personas juntos con un ramos de crisantemos o claveles.</p>
  <p>El sobre del recuerdo esta compuesto por un sobre personalizado que se le entregara a los dolientes en forma lacrada.Este sobre contiene una hoja tambien personalizada donde los compañeros de la vida pueden escribir sus condolencias. Este sobre esta acompañado con un ramo de crisantemos o claveles.</p>
  <p>Este servicio se tiene una demora de entrega de 2 a 3 horas posteriores a la solicitud del servicio.</p>",
  kind: "packet",
  price: 340
)
puts "Done"

puts "Creating crowns..."
Product.new(
  name: "Corona 1",
  title: "",
  summary: "",
  description: "",
  kind: "crown",
  price: 120
).save(validate: false)
Product.new(
  name: "Corona 2",
  title: "",
  summary: "",
  description: "",
  kind: "crown",
  price: 250
).save(validate: false)
Product.new(
  name: "Corona 3",
  title: "",
  summary: "",
  kind: "crown",
  price: 340
).save(validate: false)
puts "Done"
