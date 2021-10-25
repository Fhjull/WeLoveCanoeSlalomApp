import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

int? nightSleepHours;
/*
Maybe change qualityOfSleep to bool or ENUM class to save memory?
 */
String? qualityOfSleep;
int? pulseMorningSitting;
int? pulseMorningStanding;
int? heartRateVariability;
int? musclePain;
double energy = 0;
double grouchiness = 0;
double vivacity = 0;
double irritability = 0;
double ambition = 0;
double angry = 0;
double cheerfulness = 0;
double trepidation = 0;
double pity = 0;
double happiness = 0;
final _formMorningTestKey = GlobalKey<FormState>();

class MorningTest extends StatefulWidget {
  const MorningTest({Key? key}) : super(key: key);

  @override
  _MorningTestState createState() => _MorningTestState();
}

class _MorningTestState extends State<MorningTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Утренний блок'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formMorningTestKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SleepingHours(),
                SizedBox(height: 10),
                SleepQuality(),
                SizedBox(height: 10),
                PulseMorningSitting(),
                SizedBox(height: 10),
                PulseMorningStanding(),
                SizedBox(height: 10),
                HeartRateVariability(),
                SizedBox(height: 10),
                MusclePain(),
                SizedBox(height: 10),
                Mood(),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formMorningTestKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Ночной сон: $nightSleepHours ч\n'
                                'Качество сна: $qualityOfSleep\n'
                                'ЧСС, сидя: $pulseMorningSitting\n'
                                'ЧСС, стоя: $pulseMorningStanding\n'
                                'Вариабельность сердечного ритма:'
                                ' $heartRateVariability\n'
                                'Мышечная боль (0 - 10): $musclePain\n'
                                'Энергичность: $energy\n'
                                'Ворчливость: $grouchiness\n'
                                'Бодрость: $vivacity\n'
                                'Раздраженность: $irritability\n'
                                'Амбициозность: $ambition\n'
                                'Сердитость: $angry\n'
                                'Веселость: $cheerfulness\n'
                                'Волнение: $trepidation\n'
                                'Жалость: $pity\n'
                                'Счастье: $happiness'),
                          ),
                        );
                      }
                    },
                    child: const Text('Отправить'),
                  ),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SleepingHours extends StatefulWidget {
  const SleepingHours({Key? key}) : super(key: key);

  @override
  State<SleepingHours> createState() => _SleepingHoursState();
}

class _SleepingHoursState extends State<SleepingHours> {
  @override
  Widget build(BuildContext context) {
    const double heightOfRadioLabel = 65.0;
    const visualDensity = VisualDensity(horizontal: 4, vertical: -4);

    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Количество сна в часах. Ночной сон',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: heightOfRadioLabel,
                      child: Center(
                        child: Text(
                          'Менее\n1 часа',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Radio<int>(
                      visualDensity: visualDensity,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: 1,
                      groupValue: nightSleepHours,
                      onChanged: (value) {
                        setState(() {
                          nightSleepHours = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: heightOfRadioLabel,
                    child: Center(
                      child: Text(
                        '2 ч',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Radio<int>(
                    visualDensity: visualDensity,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 2,
                    groupValue: nightSleepHours,
                    onChanged: (value) {
                      setState(() {
                        nightSleepHours = value;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: heightOfRadioLabel,
                    child: Center(
                      child: Text(
                        '3 ч',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Radio<int>(
                    visualDensity: visualDensity,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 3,
                    groupValue: nightSleepHours,
                    onChanged: (value) {
                      setState(() {
                        nightSleepHours = value;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: heightOfRadioLabel,
                    child: Center(
                      child: Text(
                        '4 ч',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Radio<int>(
                    visualDensity: visualDensity,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 4,
                    groupValue: nightSleepHours,
                    onChanged: (value) {
                      setState(() {
                        nightSleepHours = value;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: heightOfRadioLabel,
                    child: Center(
                      child: Text(
                        '5 ч',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Radio<int>(
                    visualDensity: visualDensity,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 5,
                    groupValue: nightSleepHours,
                    onChanged: (value) {
                      setState(() {
                        nightSleepHours = value;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: heightOfRadioLabel,
                    child: Center(
                      child: Text(
                        '6 ч',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Radio<int>(
                    visualDensity: visualDensity,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 6,
                    groupValue: nightSleepHours,
                    onChanged: (value) {
                      setState(() {
                        nightSleepHours = value;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: heightOfRadioLabel,
                    child: Center(
                      child: Text(
                        '7 ч',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Radio<int>(
                    visualDensity: visualDensity,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 7,
                    groupValue: nightSleepHours,
                    onChanged: (value) {
                      setState(() {
                        nightSleepHours = value;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: heightOfRadioLabel,
                    child: Center(
                      child: Text(
                        '8 ч',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Radio<int>(
                    visualDensity: visualDensity,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 8,
                    groupValue: nightSleepHours,
                    onChanged: (value) {
                      setState(() {
                        nightSleepHours = value;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: heightOfRadioLabel,
                    child: Center(
                      child: Text(
                        '9 ч',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Radio<int>(
                    visualDensity: visualDensity,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 9,
                    groupValue: nightSleepHours,
                    onChanged: (value) {
                      setState(() {
                        nightSleepHours = value;
                      });
                    },
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: heightOfRadioLabel,
                      child: Center(
                        child: Text(
                          '10 ч\nили\nболее',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Radio<int>(
                      visualDensity: visualDensity,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: 10,
                      groupValue: nightSleepHours,
                      onChanged: (value) {
                        setState(() {
                          nightSleepHours = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class SleepQuality extends StatefulWidget {
  const SleepQuality({Key? key}) : super(key: key);

  @override
  _SleepQualityState createState() => _SleepQualityState();
}

class _SleepQualityState extends State<SleepQuality> {
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
              'Качество сна',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            iconSize: 50,
            color: Colors.yellow,
            onPressed: () {
              setState(() {});
            },
            icon: FaIcon(
              FontAwesomeIcons.angry,
              // size: 50,
              // color: Colors.yellow,
            ),
          ),
          // Row(
          //   children: [
          //     Radio<String>(
          //       value: 'good',
          //       groupValue: qualityOfSleep,
          //       visualDensity: const VisualDensity(horizontal: 4, vertical: 0),
          //       onChanged: (value) {
          //         setState(() {
          //           qualityOfSleep = value;
          //         });
          //       },
          //     ),
          //     const Flexible(
          //       child: Text('Отлично спал'),
          //     ),
          //   ],
          // ),
          // Row(
          //   children: [
          //     Radio<String>(
          //       value: 'bad',
          //       groupValue: qualityOfSleep,
          //       visualDensity: const VisualDensity(horizontal: 4, vertical: 0),
          //       onChanged: (value) {
          //         setState(() {
          //           qualityOfSleep = value;
          //         });
          //       },
          //     ),
          //     const Flexible(
          //       child: Text('Ворочался всю ночь, не мог уснуть'),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

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

class PulseMorningStanding extends StatefulWidget {
  const PulseMorningStanding({Key? key}) : super(key: key);

  @override
  _PulseMorningStandingState createState() => _PulseMorningStandingState();
}

class _PulseMorningStandingState extends State<PulseMorningStanding> {
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
                      pulseMorningStanding = int.tryParse(_controller.text);
                      isCorrect = true;
                    });
                  } else {
                    setState(() {
                      pulseMorningStanding = null;
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeartRateVariability extends StatefulWidget {
  const HeartRateVariability({Key? key}) : super(key: key);

  @override
  _HeartRateVariabilityState createState() => _HeartRateVariabilityState();
}

class _HeartRateVariabilityState extends State<HeartRateVariability> {
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
              'Утренний показатель вариабельности сердечного ритма '
              '(необходим пульсометр и специальное приложение)',
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
                      int.parse(_controller.text) >= 0 &&
                          int.parse(_controller.text) <= 200) {
                    setState(() {
                      heartRateVariability = int.tryParse(_controller.text);
                      isCorrect = true;
                    });
                  } else {
                    setState(() {
                      heartRateVariability = null;
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
                  errorText: isCorrect ? null : 'Введите число от 0 до 200',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MusclePain extends StatefulWidget {
  const MusclePain({Key? key}) : super(key: key);

  @override
  State<MusclePain> createState() => _MusclePainState();
}

class _MusclePainState extends State<MusclePain> {
  @override
  Widget build(BuildContext context) {
    const double heightOfRadioLabel = 25.0;
    const visualDensity = VisualDensity(horizontal: -4, vertical: -4);

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'Мониторинг мышечной боли',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const Center(
                child: Text('Боль\nотсутствует'),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: heightOfRadioLabel,
                    child: Center(
                      child: Text(
                        '0',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Radio<int>(
                    visualDensity: visualDensity,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 0,
                    groupValue: musclePain,
                    onChanged: (value) {
                      setState(() {
                        musclePain = value;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: heightOfRadioLabel,
                    child: Center(
                      child: Text(
                        '1',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Radio<int>(
                    visualDensity: visualDensity,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 1,
                    groupValue: musclePain,
                    onChanged: (value) {
                      setState(() {
                        musclePain = value;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: heightOfRadioLabel,
                    child: Center(
                      child: Text(
                        '2',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Radio<int>(
                    visualDensity: visualDensity,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 2,
                    groupValue: musclePain,
                    onChanged: (value) {
                      setState(() {
                        musclePain = value;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: heightOfRadioLabel,
                    child: Center(
                      child: Text(
                        '3',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Radio<int>(
                    visualDensity: visualDensity,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 3,
                    groupValue: musclePain,
                    onChanged: (value) {
                      setState(() {
                        musclePain = value;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: heightOfRadioLabel,
                    child: Center(
                      child: Text(
                        '4',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Radio<int>(
                    visualDensity: visualDensity,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 4,
                    groupValue: musclePain,
                    onChanged: (value) {
                      setState(() {
                        musclePain = value;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: heightOfRadioLabel,
                    child: Center(
                      child: Text(
                        '5',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Radio<int>(
                    visualDensity: visualDensity,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 5,
                    groupValue: musclePain,
                    onChanged: (value) {
                      setState(() {
                        musclePain = value;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: heightOfRadioLabel,
                    child: Center(
                      child: Text(
                        '6',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Radio<int>(
                    visualDensity: visualDensity,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 6,
                    groupValue: musclePain,
                    onChanged: (value) {
                      setState(() {
                        musclePain = value;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: heightOfRadioLabel,
                    child: Center(
                      child: Text(
                        '7',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Radio<int>(
                    visualDensity: visualDensity,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 7,
                    groupValue: musclePain,
                    onChanged: (value) {
                      setState(() {
                        musclePain = value;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: heightOfRadioLabel,
                    child: Center(
                      child: Text(
                        '8',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Radio<int>(
                    visualDensity: visualDensity,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 8,
                    groupValue: musclePain,
                    onChanged: (value) {
                      setState(() {
                        musclePain = value;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: heightOfRadioLabel,
                    child: Center(
                      child: Text(
                        '9',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Radio<int>(
                    visualDensity: visualDensity,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 9,
                    groupValue: musclePain,
                    onChanged: (value) {
                      setState(() {
                        musclePain = value;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: heightOfRadioLabel,
                    child: Center(
                      child: Text(
                        '10',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Radio<int>(
                    visualDensity: visualDensity,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: 10,
                    groupValue: musclePain,
                    onChanged: (value) {
                      setState(() {
                        musclePain = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              const Center(
                child: Text('Непереносимая\nболь'),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class Mood extends StatefulWidget {
  const Mood({Key? key}) : super(key: key);

  @override
  _MoodState createState() => _MoodState();
}

class _MoodState extends State<Mood> {
  @override
  Widget build(BuildContext context) {
    double sizeOfFirstColumn = MediaQuery.of(context).size.width * 0.4;
    return Container(
      padding: const EdgeInsets.all(10),
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
            'Профиль настроения',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: sizeOfFirstColumn,
                      child: const Text(''),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: sizeOfFirstColumn,
                      child: const Text('Энергичность'),
                    ),
                    Slider(
                      value: energy,
                      onChanged: (value) {
                        setState(() {
                          energy = value;
                        });
                      },
                      min: 0,
                      max: 5,
                      divisions: 5,
                      label: energy.toInt().toString(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: sizeOfFirstColumn,
                      child: const Text('Ворчливость'),
                    ),
                    Slider(
                      value: grouchiness,
                      onChanged: (value) {
                        setState(() {
                          grouchiness = value;
                        });
                      },
                      min: 0,
                      max: 5,
                      divisions: 5,
                      label: grouchiness.toInt().toString(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: sizeOfFirstColumn,
                      child: const Text('Бодрость'),
                    ),
                    Slider(
                      value: vivacity,
                      onChanged: (value) {
                        setState(() {
                          vivacity = value;
                        });
                      },
                      min: 0,
                      max: 5,
                      divisions: 5,
                      label: vivacity.toInt().toString(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: sizeOfFirstColumn,
                      child: const Text('Раздражённость'),
                    ),
                    Slider(
                      value: irritability,
                      onChanged: (value) {
                        setState(() {
                          irritability = value;
                        });
                      },
                      min: 0,
                      max: 5,
                      divisions: 5,
                      label: irritability.toInt().toString(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: sizeOfFirstColumn,
                      child: const Text('Амбициозность'),
                    ),
                    Slider(
                      value: ambition,
                      onChanged: (value) {
                        setState(() {
                          ambition = value;
                        });
                      },
                      min: 0,
                      max: 5,
                      divisions: 5,
                      label: ambition.toInt().toString(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: sizeOfFirstColumn,
                      child: const Text('Сердитость'),
                    ),
                    Slider(
                      value: angry,
                      onChanged: (value) {
                        setState(() {
                          angry = value;
                        });
                      },
                      min: 0,
                      max: 5,
                      divisions: 5,
                      label: angry.toInt().toString(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: sizeOfFirstColumn,
                      child: const Text('Веселость'),
                    ),
                    Slider(
                      value: cheerfulness,
                      onChanged: (value) {
                        setState(() {
                          cheerfulness = value;
                        });
                      },
                      min: 0,
                      max: 5,
                      divisions: 5,
                      label: cheerfulness.toInt().toString(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: sizeOfFirstColumn,
                      child: const Text('Волнение'),
                    ),
                    Slider(
                      value: trepidation,
                      onChanged: (value) {
                        setState(() {
                          trepidation = value;
                        });
                      },
                      min: 0,
                      max: 5,
                      divisions: 5,
                      label: trepidation.toInt().toString(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: sizeOfFirstColumn,
                      child: const Text('Жалость'),
                    ),
                    Slider(
                      value: pity,
                      onChanged: (value) {
                        setState(() {
                          pity = value;
                        });
                      },
                      min: 0,
                      max: 5,
                      divisions: 5,
                      label: pity.toInt().toString(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: sizeOfFirstColumn,
                      child: const Text('Счастье'),
                    ),
                    Slider(
                      value: happiness,
                      onChanged: (value) {
                        setState(() {
                          happiness = value;
                        });
                      },
                      min: 0,
                      max: 5,
                      divisions: 5,
                      label: happiness.toInt().toString(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
