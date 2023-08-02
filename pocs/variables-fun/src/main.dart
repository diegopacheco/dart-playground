void main() {
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

  print('name: ' + name);
  print('year: ' + year.toString());
  print('antennaDiameter: ' + antennaDiameter.toString());
  print('flybyObjects: ' + flybyObjects.toString());
  print('image: ' + image.toString());
}
