import 'package:flutter/material.dart';
import 'item/JobListItem.dart';
import 'package:boss/model/Job.dart';

class JobsTab extends StatefulWidget {
  const JobsTab({super.key});

  @override
  State<StatefulWidget> createState() {
    return JobList();
  }
}

class JobList extends State<JobsTab> {
  List<Job> _Jobs = [];

  @override
  void initState() {
    super.initState();
  }

  void getJobList() {
    setState(() {
      _Jobs = Job.fromJson("""
      {
        "list":[
          {
            "name":"架构师(Android)",
            "cname":"蚂蚁金服",
            "size":"B轮",
            "salary":"25k-45k"
            "username":"Claire"
            "title":"HR"
          },{
            "name":"资深Android工程师",
            "cname":"今日头条",
            "size":"D轮",
            "salary":"40k-60k"
            "username":"Kimi"
            "title":"HRBP"
          },
        ]
      }
      """);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 245),
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          "Android",
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: _Jobs.length,
        itemBuilder: buildJobItem,
      ),
    );
  }

  Widget buildJobItem(BuildContext context, int index) {
    Job job = _Jobs[index];
    var jobItem = InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) => const AlertDialog(
                  content: Text("敬请期待", style: TextStyle(fontSize: 20.0))));
        },
        child: JobListItem(job));
    return jobItem;
  }
}
