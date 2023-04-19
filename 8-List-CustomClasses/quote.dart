class Quote {

  late String text;
  late String author;

  Quote(String text, String author) {
    this.text = text;
    this.author = author;
  }

}

Quote myQuote = Quote('this is the text', 'author name');



// Name Parameters:
class Quote2 {

  late String text;
  late String author;

  Quote2({required String text, required String author}) {
    this.text = text;
    this.author = author;
  }

}

Quote2 myQuote2 = Quote2(author: 'Tomas', text: 'textttttt');


// 3.
class Quote3 {
  late String text;
  late String author;
  Quote3({required this.text, required this.author});
}
Quote3 myquote3 = Quote3(author: 'Jim', text:'Text Here');
