class User{
  int id;
  String fullName;
  String email;
  String mobile;
  String photoName;

  User(this.id,this.fullName,this.email,this.mobile,this.photoName);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'fullName':fullName,
      'email':email,
      'mobile':mobile,
      'photoName': photoName,
    };
    return map;
  }

  User.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    fullName=map['fullName'];
    email=map['email'];
    mobile=map['mobile'];
    photoName = map['photoName'];
  }
}