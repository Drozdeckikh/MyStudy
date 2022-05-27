void main() {
  String product = "Meat";
  int amount = 8;
  int pricee = 70;

  print("Output\n");

  Product porkNeck = Product("Pork neck", "Meat", 400, product, amount);
  Product russianCheese =
      Product("Russian cheese", "Cheese", 150, product, amount);
  Product ryeBread = Product("Rye bread", "Bread", 70, product, amount);
  Product cowsMilk = Product("Cow's milk", "Milk", 70, product, amount);
  Product boiledSausage =
      Product("Boiled sausage", "Sausage", 300, product, amount);
  Product buckwheat = Product("Buckwheat", "Buckwheat", 90, product, amount);
  Product roundGrainRice =
      Product("Round grain rice", "Rice", 120, product, amount);
  Product youngPotatoes =
      Product("Young potatoes", "Potatoes", 80, product, amount);
  Product orangeJuice = Product("Orange juice", "Juice", 250, product, amount);
  Product darkBeer = Product("Dark beer", "beer", 100, product, amount);

  print("===================");

//Discont
  porkNeck.discont();
  russianCheese.discont();
  ryeBread.discont();
  cowsMilk.discont();
  boiledSausage.discont();
  buckwheat.discont();
  roundGrainRice.discont();
  youngPotatoes.discont();
  orangeJuice.discont();
  darkBeer.discont();

  print("===================");

//Search
  porkNeck.search();
  russianCheese.search();
  ryeBread.search();
  cowsMilk.search();
  boiledSausage.search();
  buckwheat.search();
  roundGrainRice.search();
  youngPotatoes.search();
  orangeJuice.search();
  darkBeer.search();

  print("===================");

//Filter
  print("Filter:");

  porkNeck.filter(pricee);
  russianCheese.filter(pricee);
  ryeBread.filter(pricee);
  cowsMilk.filter(pricee);
  boiledSausage.filter(pricee);
  buckwheat.filter(pricee);
  roundGrainRice.filter(pricee);
  youngPotatoes.filter(pricee);
  orangeJuice.filter(pricee);
  darkBeer.filter(pricee);

  print("===================");

//Sorting
  //var list = [];

  // list.add(Productt("Pork neck", "Meat", 400, list));
  // list.add(Productt("Russian cheese", "Cheese", 150));
  // list.add(Productt("Rye bread", "Bread", 70));
  // list.add(Productt("Cow's milk", "Milk", 70));
  // list.add(Productt("Boiled sausage", "Sausage", 300));
  // list.add(Productt("Buckwheat", "Buckwheat", 90));
  // list.add(Productt("Round grain rice", "Rice", 120));
  // list.add(Productt("Young potatoes", "Potatoes", 80));
  // list.add(Productt("Orange juice", "Juice", 250));
  // list.add(Productt("Dark beer", "beer", 100));

  // list.sort();
  // print(list);

  var list1 = [
    porkNeck.price,
    russianCheese.price,
    ryeBread.price,
    cowsMilk.price,
    boiledSausage.price,
    buckwheat.price,
    roundGrainRice.price,
    youngPotatoes.price,
    orangeJuice.price,
    darkBeer.price
  ];
  var list3 = list1;
  list1.sort();

  porkNeck.sorting(list1);
  russianCheese.sorting(list1);
  ryeBread.sorting(list1);
  cowsMilk.sorting(list1);
  boiledSausage.sorting(list1);
  buckwheat.sorting(list1);
  roundGrainRice.sorting(list1);
  youngPotatoes.sorting(list1);
  orangeJuice.sorting(list1);
  darkBeer.sorting(list1);
}

class Product {
  String description = "Not description";
  String names = "Not name";
  int price = 0;

  String product = "Not Product";
  int amount = 0;

  Product(description, names, price, product, amount) {
    this.description = description;
    this.names = names;
    this.price = price;
    this.product = product;
    this.amount = amount;
    print("Description: $description, Name: $names, Price: $price");
  }

  void discont() {
//Discount function
    if (amount > 9 && product == names) {
      int price2 = price * amount;
      dynamic price1 = price2 - (price2 * 25 / 100);
      print("Discount:");
      print("25% discount, price: $price2, discount price: $price1");
    } else if (amount < 10 && product == names) {
      int price2 = price * amount;
      print("Not dicount:");
      print("Price: $price2");
    }
  }

//Search
  void search() {
    if (product == names) {
      print("Search:");
      print("Description: $description, Name: $names, Price: $price");
    }
  }

//Filter
  void filter(pricee) {
    if (price == pricee) {
      print("Description: $description, Name: $names, Price: $price");
    }
  }

//Sorting
  void sorting(list1) {
    // print(list1);
  }
}
