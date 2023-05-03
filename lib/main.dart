import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';


void main() {
  runApp(const LMSApp());
}

class LMSApp extends StatelessWidget {
  const LMSApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning Management System App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            Center(
              child: SizedBox(
                width: 200.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: const Text('Login'),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Center(
              child: SizedBox(
                width: 200.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                  child: const Text('Register'),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Center(
              child: SizedBox(
                width: 200.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CourseList(),
                      ),
                    );
                  },
                  child: const Text('Courses'),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Center(
          child: Text('Learning Management System App'),
        ),
      ),
    );
  }
}









class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _accountTitle = 'User account';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _accountTitle != null
            ? Text(
          _accountTitle!,
          textAlign: TextAlign.center,
        )
            : const Text(
          'User account',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_accountTitle != null) ...[
              const SizedBox(height: 20),
              Text(
                _accountTitle!,
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InstructorPage(),
                      ),
                    );
                  },
                  child: const Text('Instructor'),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StudentPage(),
                      ),
                    );
                  },
                  child: const Text('Student'),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}








class InstructorPage extends StatelessWidget {
  const InstructorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instructor Page'),
      ),
      body: const Center(
        child: Text('This is the instructor page.'),
      ),
    );
  }
}

class StudentPage extends StatelessWidget {
  const StudentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Page'),
      ),
      body: const Center(
        child: Text('This is the student page.'),
      ),
    );
  }
}


class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign Up',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                hintText: 'First Name...',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Last Name...',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Email...',
              ),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password...',
              ),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirm password...',
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class CourseList extends StatelessWidget {
  final List<String> courses = ['Mathematics', 'Science', 'English', 'History', 'Art', 'Music'];
  CourseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: UniqueKey(),
      appBar: AppBar(
        title: const Center(
          child: Text('Courses'),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return Center(
              child: ListTile(
                title: Center(
                  child: Text(courses[index]),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CourseDetails(courseName: courses[index]),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}



class CourseDetails extends StatelessWidget {
  final String courseName;
  final Key? key;

  const CourseDetails({required this.courseName, this.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text(courseName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              courseName,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Course Description:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'This is the description for the $courseName course. '
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Suspendisse malesuada mauris ut orci posuere, nec euismod nisi volutpat. '
                  'Nam id consectetur orci. Donec vel facilisis odio. Nam eget leo nec dolor dictum sodales nec eu justo. '
                  'Sed eu velit eros. Aliquam non nunc non sapien feugiat posuere in sed nisi. '
                  'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. '
                  'Nunc varius justo leo, vitae vestibulum ipsum pellentesque at.',
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Course Materials:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.file_copy),
                    title: Text('Material ${index + 1}'),
                    onTap: () {
                      // Open file viewer
                      OpenFile.open('path/to/material_${index + 1}.pdf');
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


