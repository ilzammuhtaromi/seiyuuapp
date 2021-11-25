class Seiyuu {
  String name;
  String alias;
  String birth;
  String placebirth;
  String height;
  String goldar;
  String photo;
  String minibio;

  Seiyuu(
      {this.name,
      this.alias,
      this.birth,
      this.placebirth,
      this.height,
      this.goldar,
      this.photo,
      this.minibio,
      });

  Seiyuu.fromJson(json){
    name = json['name'];
    alias = json['alias'];
    birth = json['birth'];
    placebirth = json['placebirth'];
    height = json['height'];
    goldar = json['goldar'];
    photo = json['photo'];
    minibio = json['minibio'];
  }
}