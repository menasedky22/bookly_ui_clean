class BookEntity {
  final String bookId;
  final String? image;
  final String title;
  final String? authnName;
  final num? price;
  final String? rating;

  BookEntity(
      {required this.bookId,
      required this.image,
      required this.title,
      required this.authnName,
      required this.price,
      required this.rating});
}
