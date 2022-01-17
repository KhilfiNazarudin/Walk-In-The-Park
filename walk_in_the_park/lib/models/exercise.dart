class Exercises {
  Exercises(String name, String briefDescription, String description) {
    this.description = description;
    this.name = name;
    this.briefDescription = briefDescription;
  }

  String description = '';
  String briefDescription = '';
  String name = '';

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
