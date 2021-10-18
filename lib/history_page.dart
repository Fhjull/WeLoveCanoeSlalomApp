import 'package:float_column/float_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('История гребного слалома'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                // Images inserted in a sizedBox adjusting their size according
                // to width of the screen
                // MediaQuery.of(context).size.width is screen size
                height: MediaQuery.of(context).size.width / 3.35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/1.jpg'),
                    Image.asset('assets/images/2.jpg'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '    Изначально, идеи каяков для слалома были переняты у жителей'
                ' крайнего севера. Эскимосы изобрели закрытую (мужскую)'
                ' охотничью лодку – каяк и открытую (женскую) - умиак.',
              ),
              const SizedBox(
                height: 10,
              ),
              FloatColumn(
                children: [
                  Floatable(
                    float: FCFloat.start,
                    padding: const EdgeInsets.only(right: 8, top: 8),
                    maxWidthPercentage: 0.5,
                    child: Image.asset(
                      'assets/images/3.jpg',
                    ),
                  ),
                  const WrappableText(
                    text: TextSpan(
                      text: '    Каяк – мужская охотничья лодка для'
                          ' преследования морского зверя. Каркас ее делали из'
                          ' тонких деревянных или костяных планок и обтягивали'
                          ' моржовой кожей, сверху оставляли люк для охотника.'
                          ' На реках тоже использовали каяки, они были длиной'
                          ' от 9 до 12 метров и очень узкими.',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              FloatColumn(
                children: [
                  Floatable(
                    float: FCFloat.end,
                    padding: const EdgeInsets.only(left: 8, top: 8),
                    maxWidthPercentage: 0.5,
                    child: Image.asset(
                      'assets/images/4.jpg',
                    ),
                  ),
                  const WrappableText(
                    text: TextSpan(
                      text: '    Умиак – женская грузовая лодка. Использовался'
                          ' летом для перевозки людей и имущества на летние'
                          ' охотничьи земли, а также для охоты на китов. Умиак'
                          ' обычно делался так же из плавника или китового уса,'
                          ' сколоченного или связанного в остов, на который'
                          ' натянута кожа. Нос и корма его были тупоконечными.'
                          ' Умиак был значительно крупнее каяка, при длине'
                          ' корпуса от 6 до 10 метров он мог одновременно'
                          ' выдерживать более двадцати человек. На 30-футовый'
                          ' умиак требовалось около семи шкур. У эскимосов'
                          ' молодые женщины использовались как рабочая сила'
                          ' — гребцы. Гребли женщины на умиаке в одиночку, а'
                          ' мужчины сопровождали женщин на маленьких'
                          ' одноместных каяках.',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              FloatColumn(
                children: [
                  Floatable(
                    float: FCFloat.end,
                    padding: const EdgeInsets.only(left: 8, top: 8),
                    maxWidthPercentage: 0.5,
                    child: Image.asset(
                      'assets/images/5.jpg',
                    ),
                  ),
                  const WrappableText(
                    text: TextSpan(
                      text: '    Также эскимосы известны для нас тем, что'
                          ' изобрели эскимосский переворот. Для них это'
                          ' основная техника выживания при опрокидывании'
                          ' каяка во время охоты на тюленей или китов. Нередко,'
                          ' эскимосы были вынуждены сами опрокидывать свои'
                          ' судна, чтобы избежать обрушивающихся на них высоких'
                          ' волн. Эскимосский переворот был первым, чему сын'
                          ' учился у своего отца в море. Морская охота в те'
                          ' времена была крайне опасным делом. "Грести начнешь'
                          ' раньше, чем пойдешь!" - таков был девиз у'
                          ' эскимосского отца по отношению к своему сыну в те'
                          ' времена, когда жизнь эскимосской  семьи напрямую'
                          ' зависела от удачи охотника на каяке.',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '    В 19-м столетии шотландский энтузиаст Джон МакГрегор'
                ' сконструировал лодку, подобную каякам эскимосов и'
                ' совершал на ней путешествия по рекам Европы, что в'
                ' деталях описал в своих книгах.',
              ),
              const SizedBox(
                height: 10,
              ),
              FloatColumn(
                children: [
                  Floatable(
                    float: FCFloat.start,
                    padding: const EdgeInsets.only(right: 8, top: 8),
                    maxWidthPercentage: 0.4,
                    child: Image.asset(
                      'assets/images/6.jpg',
                    ),
                  ),
                  const WrappableText(
                    text: TextSpan(
                      text: '    Вдохновленные путешествиями МакГрегора'
                          ' появились экстремалы, которые в поисках острых'
                          ' ощущений и адреналина в крови, начали сплавляться'
                          ' на лодках по быстрым рекам.\n\n'
                          '    Непосредственно гребной слалом изначально'
                          ' проходил на «гладкой» воде, но его быстро перенесли'
                          ' на реки с большим количеством порогов и быстрым'
                          ' течением, которые так ценят спортсмены.\n\n'
                          '    30-е годы 20-го столетия стали временем активного'
                          ' развития слалома в европейских странах. Это привело'
                          ' к тому, что 11 сентября 1932 года гребной слалом'
                          ' был провозглашен самостоятельным видом спорта. Уже'
                          ' в 1947 году впервые был проведен Европейский'
                          ' чемпионат, а спустя 2 года, в 1949 году, в'
                          ' швейцарской Женеве проведен первый в истории'
                          ' Чемпионат Мира по гребному слалому.',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '    С превращением гребного слалома в самостоятельный вид'
                ' спорта начались первые характерные изменения в'
                ' конструкции лодок. Из мощного каркаса и брезентовой'
                ' ткани байдарки были заменены крепкими'
                ' стеклопластиковыми лодками.',
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 1.75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      // height: 50,
                      // width: 100,
                      child: Image.asset('assets/images/7.jpg'),
                    ),
                    const SizedBox(
                      child: Icon(
                        Icons.arrow_forward,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.4,
                      // height: MediaQuery.of(context).size.width / 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/8.jpg'),
                          Image.asset('assets/images/9.jpg'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '    В 1972 году  гребной слалом впервые включают в программу'
                ' летних Олимпийских игр, проходящих в Мюнхене. Благодаря'
                ' этой Олимпиаде появляется первый в истории искусственный'
                ' слаломный канал в г.Аугсбург. Но, так как все места на'
                ' подиуме заняли представители Германии, организаторы'
                ' следующих Олимпийских игр 1976 г. в Канаде (г. Монреаль)'
                ' решили гребной слалом из программы исключить.',
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                // Images inserted in a sizedBox adjusting their size according
                // to width of the screen
                // MediaQuery.of(context).size.width is screen size
                height: MediaQuery.of(context).size.width / 2.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/10.jpg'),
                    Image.asset('assets/images/11.jpg'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '    Со временем изменялись и упрощались правила соревнований'
                ' по гребному слалому. Появилась надежда на то, что слалом'
                ' снова станет олимпийским видом спорта.  Что и произошло'
                ' на Олимпийских играх в Барселоне в 1992 году. Продолжали'
                ' привноситься новые изменения — были изменены штрафы и'
                ' система двух попыток. Раньше, например, можно было'
                ' получить 20 секунд штрафа за задевание вешки снаружи и'
                ' 10 секунд за задевание внутри створа. Потом  все'
                ' «задетые» вешки судились по 10 секунд, потом по 5'
                ' секунд, и только после этого по 2 секунды.  Время'
                ' дистанции заметно сократилось. В 80х годах для'
                ' производства слаломных лодок и вёсел начали применять'
                ' кевлар, в 90х годах начали использовать углеволокно.'
                ' В современном мире, конечно же, наиболее ценны'
                ' карбоновые лодки.\n\n'
                '    Изначально интерес к гребному слалому проявился в'
                ' странах Европы и Северной Америки. Но, затем, становился'
                ' всё более популярным во многих странах на всех'
                ' континентах.\n\n'
                '    Появление гребного слалома в Советском союзе берет свое'
                ' начало с 1971 года, когда были проведены первые'
                ' всесоюзные соревнования, по итогам которых была'
                ' сформирована сборная страны.',
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset('assets/images/12.jpg'),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '    На Олимпиаде 1972 года в Мюнхене советские спортсмены,'
                ' хоть и принимали участие в соревнованиях, но никаких'
                ' значимых результатов добиться не смогли. Именно по этой'
                ' причине, а также из-за отсутствия гребного слалома в'
                ' программе Олимпиад 1976 – 1988 гг., в СССР про него'
                ' практически забыли. Им занимались только'
                ' экстремалы - любители',
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                // Images inserted in a sizedBox adjusting their size according
                // to width of the screen
                // MediaQuery.of(context).size.width is screen size
                height: MediaQuery.of(context).size.width / 3.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/13.jpg'),
                    Image.asset('assets/images/14.jpg'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '    Однако, уже на Олимпиаде 1996 года в Атланте, от России'
                ' участвовало три спортсмена. На Пекинской Олимпиаде 2008'
                ' года российские спортсмены в составе каноэ-двойки'
                ' Кузнецов Михаил и Ларионов Дмитрий из г.Нижний Тагил'
                ' заняли 3-е место! Благодаря этому событию в'
                ' Новгородской области, г.Окуловка, построили первый в'
                ' России центр подготовки по гребному слалому, при'
                ' поддержке главы попечительского совета Федерации'
                ' гребного слалома России Лаврова С.В.',
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 1.3,
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: SizedBox(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                    child: Image.asset('assets/images/15.jpg')),
                                const SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child:
                                            Image.asset('assets/images/16.jpg'),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const Expanded(
                          flex: 2,
                          child: SizedBox(
                              // width: 100,
                              ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Expanded(
                          flex: 3,
                          child: SizedBox(
                              // width: 100,
                              ),
                        ),
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            // width: 200,
                            child: Image.asset('assets/images/17.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '    Для тех, кому интересно погрузиться в историю развития'
                ' отечественного гребного слалома, рекомендуем к просмотру'
                '  рассказ заслуженного тренера России по гребному слалому'
                ' из Санкт-Петербурга - Валентин Павловича Лютвинского!\n\n'
                '    https://www.youtube.com/watch?v=iWqhe3_1Udc\n\n'
                '    Так же, советуем к прочтению интересные истории на сайте'
                ' Федерации гребного слалома России.\n'
                '    https://waterslalom.ru/news/novosti-50-let/Pervoprohodtsy-grebnogo-slaloma-Rossii',
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
