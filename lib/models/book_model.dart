class BookModel {
  String image;
  String secondImage;
  String title;
  String subtitle;
  bool favorite;

  BookModel({
    required this.image,
    required this.secondImage,
    required this.title,
    required this.subtitle,
    required this.favorite,
  });

  // the new bok

  static BookModel newBook = BookModel(
    image: "assets/images/colis1.jpg",
    secondImage: "assets/images/colis2.jpg",
    title: "Raft of Stars",
    subtitle: "Andrew j. Graff",
    favorite: true,
  );

  // let's create our list of books

  static List<BookModel> books = [
    BookModel(
      image: "assets/images/colis1.jpg",
      secondImage: "assets/images/colis1.jpg",
      title: "The martian",
      subtitle: "Andy weir",
      favorite: false,
    ),
    BookModel(
      image: "assets/images/colis2.jpg",
      secondImage: "assets/images/colis2.jpg",
      title: "Midnight war",
      subtitle: "Mateo Martinez",
      favorite: false,
    ),
    BookModel(
      image: "assets/images/colis3.jpg",
      secondImage: "assets/images/colis3.jpg",
      title: "The martian",
      subtitle: "Andy weir",
      favorite: false,
    ),
    BookModel(
      image: "assets/images/colis4.jpg",
      secondImage: "assets/images/colis4.jpg",
      title: "Amara the brave",
      subtitle: "Matt Zhang",
      favorite: true,
    ),
    BookModel(
      image: "assets/images/colis1.jpg",
      secondImage: "assets/images/colis1.jpg",
      title: "The martian",
      subtitle: "Andy weir",
      favorite: true,
    ),
  ];
}
