class Post {
  String name;
  String time;
  String imagePath;
  String desc;
  int like;
  int comment;

  Post({
    required this.name,
    required this.time,
    required this.imagePath,
    required this.desc,
    this.like = 0,
    this.comment = 0
  });

  String setTime() => "Il y a $time";

  String setLikes() {
    return "$like j'aime";
  }

  String setComments() {
    if (comment > 1) {
      return "$comment commentaires";
    } else {
      return "$comment commentaire";
    }
  }
}