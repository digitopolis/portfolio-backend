# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Work.destroy_all
Artist.destroy_all


aw = Artist.create(name: 'Andy Warhol', location: 'New York', media: 'film, printmaking', bio: 'Andy Warhol (/ˈwɔːrhɒl/; born Andrew Warhola; August 6, 1928 – February 22, 1987) was an American artist, director and producer who was a leading figure in the visual art movement known as pop art.', img_url: 'https://public-media.si-cdn.com/filer/fc/d4/fcd4335e-0c18-4c2c-93aa-699850d4ca08/warhol.jpg')

mds = Artist.create(name: 'Mark di Suvero', location: 'New York', media: 'sculpture', bio: 'Marco Polo "Mark" di Suvero (born September 18, 1933 in Shanghai, China) is an abstract expressionist sculptor and 2010 National Medal of Arts recipient.', img_url: 'https://upload.wikimedia.org/wikipedia/commons/0/0e/Joan_Mondale_Greeting_Joseph_Hirshhorn.jpg')

soup = Work.create(title: "Campbell's Soup Cans", media: 'Silk-screen on canvas', year: 1962, statement: "Campbell's Soup Cans, which is sometimes referred to as 32 Campbell's Soup Cans, is a work of art produced between November 1961 and March or April 1962 by Andy Warhol. It consists of thirty-two canvases, each measuring 20 inches (51 cm) in height × 16 inches (41 cm) in width and each consisting of a painting of a Campbell's Soup can—one of each of the canned soup varieties the company offered at the time.", img_url: 'https://upload.wikimedia.org/wikipedia/en/9/95/Warhol-Campbell_Soup-1-screenprint-1968.jpg', artist: aw )
