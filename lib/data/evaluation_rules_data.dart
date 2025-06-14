// lib/data/evaluation_rules_data.dart

class EvaluationRuleSubtopic {
  final String title;
  final List<String> points;

  const EvaluationRuleSubtopic({
    required this.title,
    required this.points,
  });
}

class EvaluationRuleSection {
  final String title;
  final String? description;
  final List<String>? mainPoints;
  final List<EvaluationRuleSubtopic>? subtopics;

  const EvaluationRuleSection({
    required this.title,
    this.description,
    this.mainPoints,
    this.subtopics,
  });
}

final List<EvaluationRuleSection> evaluationRulesSections = [
  const EvaluationRuleSection(
    title: "Ichki baholashning prinsiplari",
    description:
        "Ichki baholash talabalarning bilim va ko‘nikmalarini amaliy va adolatli tarzda baholashni ta’minlaydi. Ushbu jarayon talabalarning o‘zlashtirish darajasini mustaqil va ob‘ektiv baholashga qaratilgan bo‘lib, quyidagi asosiy xususiyatlarga ega:",
    mainPoints: [
      "Baholash jarayonlari talabalarning nazariy bilimlarini amaliy ko‘nikmalarga aylantirishga yo‘naltirilgan bo‘lishi kerak. Har bir baholash amaliyot va bilimni birlashtirgan holda o‘tkaziladi.",
      "Baholash milliy va xalqaro standartlarga mos kelishi lozim. Bu barcha talabalarga teng imkoniyatlarni yaratadi va adolatli baho berilishini ta’minlaydi.",
      "Baholash jarayonlari qiyin, qiziqarli va zamonaviy bo‘lishi maqsadga muvofiqdir. Bu talabalarni faol ishtirok etishga va yangiliklarga tayyor bo‘lishga rag‘batlantiradi.",
      "Har bir baholash topshirig‘i talabaning bilim va ko‘nikmalariga mos ravishda ishlab chiqilishi lozim. Bu talabalarning o‘zlashtirish jarayonini yengillashtiradi va aniq natijalar olish imkonini beradi.",
      "Baholash jarayonida talabalar uchun ochiq va aniq mezonlar belgilanishi, ular bilan oldindan tanishtirilishi zarur. Har bir talaba o‘zining natijalarini qanday erishilganini tushunishi kerak.",
    ],
  ),
  const EvaluationRuleSection(
    title: "Topsiriqlar asosida baholash",
    mainPoints: [
      "Ichki baholash topshiriqlar asosida amalga oshiriladi. Topshiriqlar quyidagi tartibda beriladi:",
    ],
    subtopics: [
      EvaluationRuleSubtopic(
        title: "Talabalarga topshiriq varaqasi topshiriladi, unda:",
        points: [
          "Amalga oshirish sanasi,",
          "Yakunlash muddati,",
          "Talablar ko’rsatiladi",
        ],
      ),
      EvaluationRuleSubtopic(
        title: "Topshiriqlar:",
        points: [
          "Amaliy yoki yozma shaklda bo‘lishi mumkin.",
          "Talabaning mustaqil yoki guruhda bajaradigan faoliyatlarini o‘z ichiga oladi.",
          "Talabalarga ochiq va aniq baholash mezonlari bilan taqdim etiladi.",
        ],
      ),
    ],
  ),
  const EvaluationRuleSection(
    title: "Baholash mezonlari",
    description:
        "Baholash qarorlari aniq belgilangan mezonlarga asoslangan holda amalga oshiriladi. Talabalar quyidagi baholarni olish uchun quyidagilarni bajarishlari kerak:",
    mainPoints: [
      "Pass: Barcha asosiy mezonlarni qanoatlantirish.",
      "Merit: Asosiy mezonlar bilan birga yuqori darajadagi ko‘rsatkichlarni ko‘rsatish.",
      "Distinction: Yuqori darajadagi barcha mezonlarni mukammal bajarish.",
      "Talaba mezonlarni bajarmagan taqdirda, uning natijasi “Unclassified” sifatida qayd etiladi.",
    ],
  ),
  const EvaluationRuleSection(
    title: "Baholash jamoasi",
    description:
        "Ichki baholashni amalga oshirish uchun quyidagi vazifalar mavjud:",
    subtopics: [
      EvaluationRuleSubtopic(
        title: "Dastur rahbari:",
        points: [
          "Baholash va monitoring jarayonlarini boshqaradi.",
          "Baholash bo‘yicha standartlarni o‘rgatadi.",
          "Ichki tekshiruvlarni amalga oshiradi.",
        ],
      ),
      EvaluationRuleSubtopic(
        title: "Ichki tekshiruvchi:",
        points: [
          "Baholash va topshiriqlarni tekshiradi.",
          "Talabaning natijalariga adolatli baho berilishini ta’minlaydi.",
        ],
      ),
      EvaluationRuleSubtopic(
        title: "Baholovchilar:",
        points: [
          "Topshiriqlarni ishlab chiqadi.",
          "Talabalarning natijalariga mos baho beradi.",
        ],
      ),
    ],
  ),
  const EvaluationRuleSection(
    title: "Tashkiliy jarayon",
    description:
        "Ichki baholash yaxshi tashkil etilgan bo‘lishi kerak. Bu quyidagilarni o‘z ichiga oladi:",
    mainPoints: [
      "Dastur mazmuni va vaqt jadvalining aniq rejasini tuzish.",
      "Talabalarning topshiriqlarni o‘z vaqtida yakunlashiga yordam beruvchi tizimlarni joriy etish.",
    ],
  ),
  const EvaluationRuleSection(
    title: "Talabalarni tayyorlash",
    description:
        "Talabalar baholash jarayoniga doimiy tayyor bo‘lishi kerak. Bu uchun:",
    mainPoints: [
      "Baholash tartibi va mezonlarini tushuntirish.",
      "Plagiat va akademik halollik talablarini ta’minlash qoidalarini o‘rgatish.",
      "Har bir topshiriq yakunida talabalar o‘z ishining mustaqil ekanligini tasdiqlovchi deklaratsiyani imzolashi talab qilinadi.",
    ],
  ),
  const EvaluationRuleSection(
    title: "Haqqoniy baholash qarorlari",
    subtopics: [
      EvaluationRuleSubtopic(
        title: "7.2.1 Talabaning mustaqil ishi",
        points: [
          "Baholovchi talabaning ishini mustaqil va original ekanligiga ishonch hosil qilishi kerak. Agar ishda plagiat yoki boshqa noqonuniyliklar aniqlansa, belgilangan qoidalarga muvofiq chora ko‘riladi.",
        ],
      ),
      EvaluationRuleSubtopic(
        title: "7.2.3 Muddatdan kechikkan topshiriqlar",
        points: [
          "Odatdagi mezonlar asosida baholash amalga oshiriladi.",
          "Kechikkanligi uchun belgilangan jarima qo‘llaniladi.",
          "Talabaga kechikkan holda baholangan va jarima qo‘llanilgan bahosi haqida xabar beriladi.",
        ],
      ),
    ],
  ),
  const EvaluationRuleSection(
    title: "Natijalarni qayta topshirish imkoniyati",
    description:
        "Agar talaba birinchi baholashda o‘tmasa, unga topshiriqni qayta topshirish imkoniyati beriladi:",
    mainPoints: [
      "Har bir topshiriqni faqat bir marta qayta topshirish mumkin.",
      "Qayta topshirish natijasi “Pass” darajasidan yuqori bo‘lishi mumkin emas.",
    ],
  ),
  const EvaluationRuleSection(
    title: "Yangi imkoniyatlar va qayta o‘qish",
    description:
        "Agar talaba topshiriqni qayta topshirishdan so‘ng ham muvaffaqiyat qozonmasa:",
    mainPoints: [
      "Talaba blokni qayta o‘qishi va blok uchun belgilangan to‘lovni amalga oshirishi kerak.",
      "Ushbu blokning qayta o‘qishdan keyingi bahosi faqat “Pass” bo‘lishi mumkin.",
    ],
  ),
];
