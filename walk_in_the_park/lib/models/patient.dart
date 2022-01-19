class userPatient {
  userPatient(String name, int age, String doctor_name, int hp_number,
      int doctor_hp, int weight) {
    this.name = name;
    this.age = age;
    this.doctor_name = doctor_name;
    this.hp_number = hp_number;
    this.doctor_hp = doctor_hp;
    this.weight = weight;
  }

  String name = "";
  int age = 0;
  String doctor_name = "";
  int hp_number = 0;
  int doctor_hp = 0;
  int weight = 0;
}
