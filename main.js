

    alert('JavaScript is  notworking');
    header = document.getElementById('header')
    first = document.createElement('h1');
    first.id = "header-tag"
    console.log(first)
    headerText = document.createTextNode('Hey this actually works!');

    first.appendChild(headerText);

    header.appendChild(first);

    contentBackground = document.getElementById('background');
    contentBackground.style.backgroundImage = "url('https://images.unsplash.com/photo-1503435824048-a799a3a84bf7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7b97ca29535c8301f918a8f8beba8197&auto=format&fit=crop&w=2734&q=80')"

    contentBackground.style.backgroundSize = "100%";

    contentBackground.stylebackgroundRepeat = "none";

    document.getElementById('header-tag').style.color = "white";

    var x = document.getElementsByClassName('stats');
      var i;
      for (i = 0; i < x.length; i++) {
          x[i].style.fontSize = "30px";
          x[i].style.color = "white";

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






    