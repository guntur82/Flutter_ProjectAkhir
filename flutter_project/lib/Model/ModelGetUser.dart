class ModelGetUser {
  int? id;
  String? email;
  String? name;
  String? password;
  String? noHp;
  String? level;
  String? alamat;
  String? gambar;
  String? createdAt;
  String? updatedAt;
  String? error;

  ModelGetUser(
      {this.id,
      this.email,
      this.name,
      this.password,
      this.noHp,
      this.level,
      this.alamat,
      this.gambar,
      this.createdAt,
      this.updatedAt,
      this.error});

  ModelGetUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    name = json['name'];
    password = json['password'];
    noHp = json['no_hp'];
    level = json['level'];
    alamat = json['alamat'];
    gambar = json['gambar'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  factory ModelGetUser.withError(String error) => ModelGetUser(error: error);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['name'] = this.name;
    data['password'] = this.password;
    data['no_hp'] = this.noHp;
    data['level'] = this.level;
    data['alamat'] = this.alamat;
    data['gambar'] = this.gambar;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
