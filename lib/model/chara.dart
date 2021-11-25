class Chara {
  String uuid;
  String nama;
  String poster;
  String voting;
  String description;

  Chara(
      {this.description,
      this.poster,
      this.nama,
      this.uuid,
      this.voting});

  Chara.fromJson(json) {
    uuid = json['uuid'];
    nama = json['nama'];
    poster = json['poster'];
    voting = json['voting'];
    description = json['description'];
  }
}
