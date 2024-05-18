
var json = [{
    "name" : "Richard", 
    "age"   : "22",
    "mail": "richard@gmail.com"
},
{
    "name" : "abi", 
    "age"   : "20",
    "mail": "abi@gmail.com"
}];
//for loop
for(var i = 0; i < json.length; i++) {
    var obj = json[i];

    console.log(obj.name)
    console.log(obj.age)
    console.log(obj.mail)
   

}
//for Each
json.forEach(function(obj) { console.log(obj.age); });

//for In
for (var key in json) {
if (json.hasOwnProperty(key)) {
  console.log(json[key].name);
  console.log(json[key].age);
 
}
}
//for Of
let text = "";
for (let x of json[key].name) {
 text += x; 
}
 console.log(text);