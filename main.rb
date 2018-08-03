File.open('index.html', 'w') { |doc|  doc.write("
  <!DOCTYPE html>
    <html>
    <head>
      <title></title>
      <link rel='stylesheet' href='main.css'>
    </head>
    <body id='background'>
    <div id='header'></div>
    <div class='container'>
      <div class='pokemon'>
        <button onClick ='loadDoc(corsola)'>Pokemon 1</button>
        <h2 id ='pokemonOne'></h2>
          <ol class= 'stats'>
            <li id='hp'></li>
            <li id='attack'></li>
            <li id='defense'></li>
          </ol>
      </div>
      <div class='pokemon'>
        <button>Pokemon 2</button>
        <h2 id='pokemonTwo'></h2>
        <ol class= 'stats'>
          <li></li>
          <li></li>
          <li></li>
        </ol>
      </div>
      <div class='pokemon'>
        <button>Pokemon 3</button>
        <h2 id='pokemonThree'></h2>
        <ol class= 'stats'>
          <li></li>
          <li></li>
          <li></li>
        </ol>
      </div>
    </div>
    <section id='page2'>
      <div></div>
      <div></div>
    </section>
    <script src='main.js'></script>
    </body>
  </html>
  ") }

  File.open('main.js', 'w') { |doc|  doc.write("

    alert('JavaScript is  notworking');
    header = document.getElementById('header')
    first = document.createElement('h1');
    first.id = \"header-tag\"
    console.log(first)
    headerText = document.createTextNode('Hey this actually works!');

    first.appendChild(headerText);

    header.appendChild(first);

    contentBackground = document.getElementById('background');
    contentBackground.style.backgroundImage = \"url('https://images.unsplash.com/photo-1503435824048-a799a3a84bf7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7b97ca29535c8301f918a8f8beba8197&auto=format&fit=crop&w=2734&q=80')\"

    contentBackground.style.backgroundSize = \"100%\";

    contentBackground.stylebackgroundRepeat = \"none\";

    document.getElementById('header-tag').style.color = \"white\";

    var x = document.getElementsByClassName('stats');
      var i;
      for (i = 0; i < x.length; i++) {
          x[i].style.fontSize = \"30px\";
          x[i].style.color = \"white\";

      }

  corsola = 'https://raw.githubusercontent.com/jmaine123/six_favorite_pokemon/master/pokemon1.json'

function loadDoc(pokemon) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {

      var myObj = JSON.parse(this.responseText);
      var name = myObj.name;
      var hp = myObj.stats[5]['base_stat'];
      var attack = myObj.stats[4]['base_stat'];
      var defense = myObj.stats[3]['base_stat'];
      var abilities = [myObj.abilities[0].ability.name, myObj.abilities[1].ability.name]

      console.log(attack)

      document.getElementById('pokemonOne').innerHTML = name;
      document.getElementById('hp').innerHTML = hp;
      document.getElementById('attack').innerHTML = attack;
      document.getElementById('defense').innerHTML= defense;
    }
  };
  xhttp.open('GET', pokemon, true);
  xhttp.send();
}






    ") }


File.open('main.css', 'w') { |doc|  doc.write("
    button{
      height:40px;
      width:60px;
      background-color: blue;
      color: white;
     }

    .background{
      background-repeat: \"no-repeat\";
    }

    .container{
      display: grid;
      width: 90%;
      height: 400px;
      margin: 10% auto;
      grid-template: 100% / 30% 30% 30%;
      grid-gap: 5%;
     }

     .container div{
       border: 2px solid white;
       border-radius: 20%;
       background-color: rgb(102, 255, 153, .5);
      }

     h1{
       font-size: 50px
      }

      #page2{
      height: 400px;
      width: 100%;
      display: grid;
      grid-template: 100% / 50% 50%;
      border: 1px solid white;
     }

     #page2 div{
     border: 1px solid white;
    }

     #pokemonOne{
     color: white;
    }

    h2{
    font-size: 40px
   }

    ") }
