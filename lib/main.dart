import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tattoo/data/course_client.dart';
import 'package:tattoo/data/ntut_client.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Tattoo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  NtutServiceCode _selectedService = NtutServiceCode.courseService;
  final NtutClient _ntutClient = NtutClient();
  final CourseClient _courseClient = CourseClient();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    await _ntutClient.login(_usernameController.text, _passwordController.text);
    await _ntutClient.sso(_selectedService);

    final courseTables = await _courseClient.getCourseTableList(
      _usernameController.text,
    );
    inspect('Available course tables: $courseTables');

    final courseSchedule = await _courseClient.getCourseTable(
      username: _usernameController.text,
      year: courseTables.first['year'],
      semester: courseTables.first['semester'],
    );
    inspect(courseSchedule);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Project Tattoo'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: AutofillGroup(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 16.0,
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                  controller: _usernameController,
                  autofillHints: const [AutofillHints.username],
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  controller: _passwordController,
                  autofillHints: const [AutofillHints.password],
                  obscureText: true,
                ),
                DropdownMenu<NtutServiceCode>(
                  initialSelection: NtutServiceCode.courseService,
                  onSelected: (value) {
                    if (value == null) return;
                    setState(() {
                      _selectedService = value;
                    });
                  },
                  dropdownMenuEntries: [
                    for (final service in NtutServiceCode.values)
                      DropdownMenuEntry(value: service, label: service.name),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _login,
        tooltip: 'Login',
        child: const Icon(Icons.login),
      ),
    );
  }
}
