import 'dart:convert';
import 'package:meta/meta.dart';

class Job {
  final String name;
  final String cname;
  final String size;
  final String salary;
  final String username;
  final String title;

  Job({required this.name,
    required this.cname,
    required this.size,
    required this.salary,
    required this.username,
    required this.title});

  static List<Job> fromJson(String json) {
    List<Job> jobList = [];

    JsonDecoder decoder = const JsonDecoder();
    var mapData = decoder.convert(json);

    mapData['list'].forEach((obj) {
      Job job = Job(
        name: obj['name'],
        cname: obj['cname'],
        size: obj['size'],
        salary: obj['salary'],
        username: obj['username'],
        title: obj['title'],
      );
      jobList.add(job);
    });

    return jobList;
  }
}
