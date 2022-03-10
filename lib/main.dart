import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const peopleIcon = Icon(Icons.people);

    const greyTextStyle = TextStyle(
        fontSize: 16, color: Colors.grey, fontWeight: FontWeight.normal);

    const roundedTextField = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(color: Color(0xffeceff1), width: 0));

    return MaterialApp(
        home: Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  const SizedBox(width: 75),
                  const Icon(Icons.people),
                  const SizedBox(width: 9),
                  const Text(
                    'Регистрация',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 22),
              const Text(
                'Чтобы зарегестрироваться введите свой номер телефона и почту',
                textAlign: TextAlign.center,
                style: greyTextStyle,
              ),
              const SizedBox(height: 14),
              const Text(
                'Телефон',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 6),
              const TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 224, 224, 224),
                    enabledBorder: roundedTextField,
                    focusedBorder: roundedTextField,
                    hintText: '+7',
                    contentPadding: EdgeInsets.all(10)),
              ),
              const SizedBox(height: 15),
              const Text(
                'Почта',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              const SizedBox(height: 6),
              const TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 224, 224, 224),
                      enabledBorder: roundedTextField,
                      focusedBorder: roundedTextField,
                      contentPadding: EdgeInsets.all(10))),
              const SizedBox(height: 24),
              const Text(
                'Вам придет четырехзначный код, который будет вашим паролем',
                textAlign: TextAlign.center,
                style: greyTextStyle,
              ),
              const SizedBox(height: 14),
              const Text(
                'Изменить пароль можно будет в личном кабинете после регистрации',
                textAlign: TextAlign.center,
                style: greyTextStyle,
              ),
              const SizedBox(height: 43),
              SizedBox(
                width: 154,
                height: 42,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff0079d0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36.0))),
                  onPressed: () {},
                  child: const Text('Отправить код'),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
