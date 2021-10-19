import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

int? nightSleepHours;
String? qualityOfSleep;
String pulseMorningSitting = '';
String pulseMorningStanding = '';

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
            ],
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
          Row(
            children: [
              Radio<String>(
                value: 'good',
                groupValue: qualityOfSleep,
                visualDensity: const VisualDensity(horizontal: 4, vertical: 0),
                onChanged: (value) {
                  setState(() {
                    qualityOfSleep = value;
                  });
                },
              ),
              const Text('Отлично спал')
            ],
          ),
          Row(
            children: [
              Radio<String>(
                value: 'bad',
                groupValue: qualityOfSleep,
                visualDensity: const VisualDensity(horizontal: 4, vertical: 0),
                onChanged: (value) {
                  setState(() {
                    qualityOfSleep = value;
                  });
                },
              ),
              const Text('Ворочался всю ночь, не мог уснуть')
            ],
          ),
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
              'Пульс утром после пробуждения 2 минуты сидя',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 10, right: MediaQuery.of(context).size.width * 0.6),
            child: TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              maxLength: 6,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp("[0-9-]"))
              ],
              decoration: InputDecoration(
                hintText: '120-70',
                errorText: isCorrect ? null : 'Введите число в формате 120-70',
              ),
              onSubmitted: (inputValue) {
                if (RegExp(r'^\d\d\d-\d\d$').hasMatch(inputValue) ||
                    inputValue.isEmpty) {
                  setState(() {
                    pulseMorningSitting = _controller.text;
                    isCorrect = true;
                  });
                } else {
                  setState(() {
                    pulseMorningSitting = '';
                    isCorrect = false;
                  });
                }
              },
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
              'Пульс утром после пробуждения 3 минуты стоя',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 10, right: MediaQuery.of(context).size.width * 0.6),
            child: TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              maxLength: 6,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp("[0-9-]"))
              ],
              decoration: InputDecoration(
                hintText: '120-70',
                errorText: isCorrect ? null : 'Введите число в формате 120-70',
              ),
              onSubmitted: (inputValue) {
                if (RegExp(r'^\d\d\d-\d\d$').hasMatch(inputValue) ||
                    inputValue.isEmpty) {
                  setState(() {
                    pulseMorningStanding = _controller.text;
                    isCorrect = true;
                  });
                } else {
                  setState(() {
                    pulseMorningStanding = '';
                    isCorrect = false;
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
