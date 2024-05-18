//a)Get all the countries from Asia continent /region using Filter function
let xhr=new XMLHttpRequest();
xhr.open('GET','https://restcountries.com/v3.1/all',true);
xhr.send();
xhr.onload=function (){
    let Data=JSON.parse(this.response);
    console.log("data", Data)
    let asia=Data.filter((a)=>{
        if(a.region==='Asia'){
            return a.name;
        }
    })
    console.log(asia);}


//b)Get all the countries with a population of less than 2 lakhs using Filter function
    let xhr=new XMLHttpRequest();
xhr.open('GET','https://restcountries.com/v3.1/all',true);
xhr.send();
xhr.onload=function (){
    let Data=JSON.parse(this.response);
    console.log("data", Data)
    let population=Data.filter((a)=>{
        if(a.population<200000){
            return a.name;
        }
    })
    console.log(population);}


//c)Print the following details name, capital, flag using forEach function
let xhr=new XMLHttpRequest();
xhr.open('GET','https://restcountries.com/v3.1/all',true);
xhr.send();
xhr.onload=function (){
    let data=JSON.parse(this.response);
    console.log("Data",data)
    data.forEach(data => {console.log(data.name,data.capital,data.flag)
        
    });

}


//d)Print the total population of countries using reduce function
let xhr=new XMLHttpRequest();
xhr.open('Get','https://restcountries.com/v3.1/all',true);
xhr.send();
xhr.onload=function(){
    let data=JSON.parse(this.response);
    console.log(data) 
    const population=data.reduce((acc,element)=>{
        return acc+element.population;
    })
    console.log(population);}


//e)Print the country which uses US Dollars as currency.
let xhr= new XMLHttpRequest();
xhr.open('Get','https://restcountries.com/v3.1/all',true);
xhr.send();
xhr.onload=function(){
    let data = JSON.parse(this.response);
    console.log(data)
   for(i=0;i<data.length;i++){
        if(data[i].currencies==="USD")
       {
           console.log("name:",data[i].name,"==>",data[i].currencies)
       }
     }
    }


    

