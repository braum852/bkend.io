# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.create(event_type: 'holiday', event_date: '2022-05-06', title: 'GOMA', done: false)
Event.create(event_type: 'holiday', event_date: '2022-08-26', title: 'Ferris Wheel', done: true)

    #   t.string :event_type
    #   t.date :event_date
    #   t.text :title
    #   t.boolean :done
