import 'package:flutter/material.dart';

class RulesPage extends StatefulWidget {
  const RulesPage({Key? key}) : super(key: key);

  @override
  State<RulesPage> createState() => _RulesPage();
}

class _RulesPage extends State<RulesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: const Text(''));
  }
}

/*
class PulseMorningSitting extends StatefulWidget {
  const PulseMorningSitting({Key? key}) : super(key: key);

  @override
  _PulseMorningSittingState createState() => _PulseMorningSittingState();
}

class _PulseMorningSittingState extends State<PulseMorningSitting> {
  final TextEditingController _controller = TextEditingController();
  bool isCorrect = true;

  /*
  I dont know whether this function works, need to investigate
   */
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'ЧСС после пробуждения, сидя (среднее значение за 2 минуты)',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Focus(
              onFocusChange: (hasFocus) {
                if (!hasFocus) {
                  if (_controller.text.isEmpty ||
                      int.parse(_controller.text) >= 30 &&
                          int.parse(_controller.text) <= 200) {
                    setState(() {
                      pulseMorningSitting = int.tryParse(_controller.text);
                      isCorrect = true;
                    });
                  } else {
                    setState(() {
                      pulseMorningSitting = null;
                      isCorrect = false;
                    });
                  }
                }
              },
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                maxLength: 3,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                ],
                decoration: InputDecoration(
                  errorText: isCorrect ? null : 'Введите число от 30 до 200',
                ),
                // onEditingComplete: () {
                //   print('complete');
                // },

                // onSubmitted: (inputValue) {
                // int? inputValue = int.tryParse(_controller.text);
                // if (inputValue.isEmpty ||
                //     int.parse(inputValue) >= 30 &&
                //         int.parse(inputValue) <= 200) {
                //   setState(() {
                //     pulseMorningSitting = int.tryParse(inputValue);
                //     isCorrect = true;
                //   });
                // } else {
                //   setState(() {
                //     pulseMorningSitting = null;
                //     isCorrect = false;
                //   });
                // }
                // },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/

/*
This PulseMorningSitting class is the same as PulseMorningStanding
The only difference are title and variable obtained
 */
/*
class PulseMorningSitting extends StatefulWidget {
  const PulseMorningSitting({Key? key}) : super(key: key);

  @override
  _PulseMorningSittingState createState() => _PulseMorningSittingState();
}

class _PulseMorningSittingState extends State<PulseMorningSitting> {
  // Controller is a value you are entering in a TextField
  // With _controller.txt you can get entered text in any moment you want
  final TextEditingController _controller = TextEditingController();
  bool isCorrect = true;
  final _formPulseMorningSittingStateKey = GlobalKey<FormState>();
/*
Dont know is this function do something or not
Added it here, because it was in recipe for using _controller
and it may really work in this way
 */
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // Properties of this container is the same for all parts of form
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'ЧСС после пробуждения, сидя (среднее значение за 2 минуты)',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Focus(
            /*
            As child widget loses focus, we check entered value to valid.
            If it is so, we pass value to our variable(pulseMorningSitting)
             */
            onFocusChange: (hasFocus) {
              if (!hasFocus) {
                if (_controller.text.isEmpty ||
                    int.parse(_controller.text) >= 30 &&
                        int.parse(_controller.text) <= 200) {
                  setState(() {
                    pulseMorningSitting = int.tryParse(_controller.text);
                    _formMorningTestKey.currentState!.validate();
                  });
                } else {
                  setState(() {
                    _formMorningTestKey.currentState!.validate();
                  });
                }
              }
            },
            child: TextFormField(
              validator: (inputValue) {
                // This are conditions for which we check entered value,
                // if we get true, we return String that will be displayed
                // in error message of widget
                if (inputValue == null ||
                    inputValue.isEmpty ||
                    int.parse(inputValue) < 30 ||
                    int.parse(inputValue) > 200) {
                  return 'Пожалуйста, введите число от 30 до 200';
                }
                // According to recipe we have to return null
                return null;
              },
              controller: _controller,
              keyboardType: TextInputType.number,
              maxLength: 3,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp("[0-9]"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/

/*

/*
This PulseMorningStanding class is the same as PulseMorningSitting
The only difference are title and variable obtained
 */
class PulseMorningStanding extends StatefulWidget {
  const PulseMorningStanding({Key? key}) : super(key: key);

  @override
  _PulseMorningStandingState createState() => _PulseMorningStandingState();
}

class _PulseMorningStandingState extends State<PulseMorningStanding> {
  // Controller is a value you are entering in a TextField
  // With _controller.txt you can get entered text in any moment you want
  final TextEditingController _controller = TextEditingController();
  final _formPulseMorningStandingStateKey = GlobalKey<FormState>();
/*
Dont know is this function do something or not
Added it here, because it was in recipe for using _controller
and it may really work in this way
 */
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // Properties of this container is the same for all parts of form
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'ЧСС утром после пробуждения, стоя (среднее значение за 3 минуты)',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Focus(
            /*
            As child widget loses focus, we check entered value to valid.
            If it is so, we pass value to our variable(pulseMorningSitting)
             */
            onFocusChange: (hasFocus) {
              if (!hasFocus) {
                if (_controller.text.isEmpty ||
                    int.parse(_controller.text) >= 30 &&
                        int.parse(_controller.text) <= 200) {
                  setState(() {
                    pulseMorningStanding = int.tryParse(_controller.text);
                    _formMorningTestKey.currentState!.validate();
                  });
                } else {
                  setState(() {
                    _formMorningTestKey.currentState!.validate();
                  });
                }
              }
            },
            child: TextFormField(
              validator: (inputValue) {
                // This are conditions for which we check entered value,
                // if we get true, we return String that will be displayed
                // in error message of widget
                if (inputValue == null ||
                    inputValue.isEmpty ||
                    int.parse(inputValue) < 30 ||
                    int.parse(inputValue) > 200) {
                  return 'Пожалуйста, введите число от 30 до 200';
                }
                // According to recipe we have to return null
                return null;
              },
              controller: _controller,
              keyboardType: TextInputType.number,
              maxLength: 3,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp("[0-9]"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
 */
