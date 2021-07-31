//question 1

//db.restaurants.distinct("name",find({}, {_id:0, name:1}))
db.restaurants.find()


// question 2
db.restaurants.find({}, {_id: 0, name: 1, cuisine: 1}).limit(5)

//question 3
db.restaurants.find({borough : "Bronx"}).limit(5)

//question 4
db.restaurants.find({name: "Kosher Island"})
db.restaurants.updateOne({name: "Kosher Island"}, {$set : {cuisine : "Sea Food"}})
db.restaurants.find({name: "Kosher Island"})