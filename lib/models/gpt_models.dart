class GptModels {
  final String id;
  final int created;
  final String root;

  GptModels({
    required this.id,
    required this.created,
    required this.root,
  });

  factory GptModels.fromJSON(Map<String, dynamic> json) => GptModels(
        id: json["id"],
        root: json["root"],
        created: json["created"],
      );

  static List<GptModels> modelsfromsnapshot(List snapshots) {
    return snapshots.map((data) => GptModels.fromJSON(data)).toList();
  }
}
