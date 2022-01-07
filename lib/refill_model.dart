class Refill {
  int idUser;
  String namaUser;
  String username;
  String email;
  String password;

  Refill(
      {this.idUser, this.namaUser, this.username, this.email, this.password});

  Refill.fromJson(Map<String, dynamic> json) {
    idUser = json['id_user'];
    namaUser = json['nama_user'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_user'] = this.idUser;
    data['nama_user'] = this.namaUser;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}