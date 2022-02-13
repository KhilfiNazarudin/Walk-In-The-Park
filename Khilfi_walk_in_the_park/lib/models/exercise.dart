class Exercises {
  Exercises(
      String name, String briefDescription, String description, String img) {
    this.description = description;
    this.name = name;
    this.briefDescription = briefDescription;
    this.img = img;
  }

  String description = '';
  String briefDescription = '';
  String name = '';
  String img = '';

  String getName() {
    return this.name;
  }

  void setName(String name) {
    this.name = name;
  }

  String getDescription() {
    return this.description;
  }

  void setDescription(String description) {
    this.description = description;
  }
}
