import 'package:flutter/material.dart';

import '../../model/Job.dart';
import '../../common/Constant.dart';

class JobListItem extends StatelessWidget {
  final Job _job;

  const JobListItem(this._job, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 3.0,
        left: 5.0,
        right: 5.0,
        bottom: 3.0,
      ),
      child: SizedBox(
        child: Card(
          elevation: 0.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 10.0, bottom: 5.0),
                          child: Text(
                            _job.name,
                            style: const TextStyle(color: Colors.red),
                          )),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text(
                              _job.salary,
                              style: const TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 5.0, left: 10.0, bottom: 5.0),
                    child: Text(
                      "${_job.cname}  ${_job.size}",
                      style:
                          const TextStyle(fontSize: 15.0, color: Colors.grey),
                    ),
                  ),
                  const Divider(),
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 5.0, left: 10.0, right: 5.0, bottom: 15.0),
                          child: Text(
                            "${_job.username} | ${_job.title}",
                            style:
                                const TextStyle(color: Constant.mainThemeColor),
                          ))
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
