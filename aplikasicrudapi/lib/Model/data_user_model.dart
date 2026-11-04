class DataUser {
  int? id;
  String? nama;
  String? alamat;
  String? gender;
  String? createdAt;
  String? updateAt;

  DataUser(
      {
        this.id,
        this.nama,
        this.alamat,
        this.gender,
        this.createdAt,
        this.updateAt});

  DataUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    alamat = json['alamat'];
    gender = json['gender'];
    createdAt = json['createdAt'];
    updateAt = json['updateAt'];
  }

  Map<String, dynamic> toJson() {
    final Map <String, dynamic> data = new Map<String, dynamic> ();
    data['id'] = this.id;
    data['nama'] = this.nama;
    data['alamat'] = this.alamat;
    data['gender'] = this.gender;
    data['createdAt'] = this.createdAt;
    data['updateAt'] = this.updateAt;
    return data;
  }
}