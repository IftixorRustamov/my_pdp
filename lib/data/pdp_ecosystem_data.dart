class PdpEcosystemService {
  final String name;
  final String description;
  final List<String> bulletPoints;
  final String achievement;

  const PdpEcosystemService({
    required this.name,
    required this.description,
    this.bulletPoints = const [],
    required this.achievement,
  });
}

final List<PdpEcosystemService> pdpEcosystemServices = [
  const PdpEcosystemService(
    name: "PDP Academy",
    description:
        "PDP Academy — bu IT-ta'lim markazi bo'lib, yuqori sifatli va zamonaviy texnologiyalarni o'z ichiga olgan kurslar taqdim etadi. Akademiya o'z ichiga quyidagi yo'nalishlarni oladi:",
    bulletPoints: [
      "Frontend, Backend, Flutter, C#, Java, Python kabi dasturlash tillari.",
      "Yangi boshlovchilar uchun ta'lim (Foundation stage).",
      "Online va oflayn ta'lim imkoniyatlari.",
    ],
    achievement: "Hozirgacha 870+ studentlar o’qigan",
  ),
  const PdpEcosystemService(
    name: "PDP Online",
    description:
        "PDP Online — bu onlayn ta'lim platformasi bo'lib, talabalar istalgan joydan, istalgan vaqtda darslarga qatnashish imkoniyatiga ega. Bu platforma quyidagi imkoniyatlarni taqdim etadi:",
    bulletPoints: [
      "Interaktiv video darslar va amaliyotlar.",
      "Online imtihonlar va sertifikatlar.",
      "O'quvchilarning shaxsiy rivojlanishini kuzatib borish va qo'llab-quvvatlash tizimi.",
    ],
    achievement: "Hozirgacha 400+ studentlar o’qigan",
  ),
  const PdpEcosystemService(
    name: "PDP School",
    description:
        "PDP School — bu maktabgacha ta'limdan boshlanib, o'rta ta'limgacha bo'lgan o'quvchilarni tayyorlashga yo'naltirilgan ta'lim muassasasi. PDP School o'zining yuqori sifatli ta'limi, innovatsion yondashuvlari va kreativ o'qituvchilari bilan ajralib turadi.",
    bulletPoints: [
      "Erta ta'lim: Kichik yoshdagi bolalarni dastlabki bilimlar va ko'nikmalar bilan ta'minlash.",
      "Texnologiyalarni joriy etish: Yosh bolalar uchun dasturlash, robototexnika va boshqa texnologiyalarga oid boshlang'ich kurslar.",
      "Ijodiy rivojlanish: San'at, musiqiy va sport fanlarida o'quvchilarning ijodiy salohiyatini rivojlantirish.",
      "Akademik tayyorgarlik: O'quvchilarga o'rta ta'limni mukammal darajada olishlariga yordam berish.",
    ],
    achievement: "Hozirgacha 450+ studentlar o’qigan",
  ),
  const PdpEcosystemService(
    name: "PDP University",
    description:
        "PDP University — bu yuqori ma'lumot olish uchun mo'ljallangan ta'lim muassasasi bo'lib, talabalar o'zlari tanlagan yo'nalishda chuqur bilimlar va amaliy ko'nikmalarni egallashadi. PDP University nafaqat akademik tayyorgarlikni, balki talabalarni ishlashga tayyorlashni ham maqsad qilgan.",
    bulletPoints: [
      "IT mutaxassisliklari: PDP University AI, Software Engineering, Data Analytics va Business Analytics yo’nalishlarini o’z ichiga oladi.",
      "Biznes ta'limi: Biznesni boshqarish, moliya, marketing, va biznes jarayonlari bo'yicha kurslar.",
      "Innovatsiyalar va tadbirkorlik: Talabalarga o'z bizneslarini yaratish va uni boshqarish ko'nikmalarini o'rgatish.",
      "Birinchi kursdan to'liq tayyorgarlik: Talabalar dastlabki kursdan boshlab, so'nggi bosqichgacha sifatli ta'lim olishadi.",
    ],
    achievement: "Hozirgacha 1000+ studentlar o’qigan",
  ),
  const PdpEcosystemService(
    name: "PDP Junior",
    description:
        "PDP Junior — bu yoshlarning o'quv va rivojlanish jarayonida qo'llab-quvvatlovchi muassasa bo'lib, dastlabki IT va texnologiya ko'nikmalarini o'rganish uchun mo'ljallangan. PDP Junior bolalarga texnologiyalarni o'rganishni qiziqarli va interaktiv tarzda taqdim etadi, bu esa ularni dasturlash, robototexnika va boshqa sohalarda muvaffaqiyatga erishish uchun tayyorlaydi.",
    bulletPoints: [
      "Dasturlash: Yosh bolalar uchun boshlang'ich dasturlash kurslari (Scratch, Python va boshqalar).",
      "Robototexnika: Robotlar yaratish va ularni dasturlash, texnik ko'nikmalarni rivojlantirish.",
      "Texnologiyalarga kirish: Bolalar uchun zamonaviy texnologiyalarni o'rganish va ular bilan ishlashni o'rgatish.",
      "Ijodiy va amaliy mashg'ulotlar: Bolalar ijodiy ko'nikmalarni rivojlantirishga qaratilgan faoliyatlar, masalan, o'yinlar va mashg'ulotlar orqali.",
    ],
    achievement: "Hozirgacha 200+ studentlar o’qigan",
  ),
];

class UnicornGrantData {
  final String purpose;
  final Map<int, String> financialAmounts;
  final List<String> benefits;
  final Map<String, String> statistics;
  final List<String> sponsors;

  const UnicornGrantData({
    required this.purpose,
    required this.financialAmounts,
    required this.benefits,
    required this.statistics,
    required this.sponsors,
  });
}

final UnicornGrantData unicornGrantData = const UnicornGrantData(
  purpose:
      "PDP Unicorn 3.0 granti — bu PDP University tomonidan kam ta'minlangan oilalardan chiqqan iste'dodli bolalar uchun tashkil etilgan grant loyihasi. Grantlar, ayniqsa, talabalarga ta'lim olish, turar joy va ish imkoniyatlari taqdim etadi.",
  financialAmounts: {
    2022: "\$2,220,000",
    2023: "\$300,000",
    2024: "\$900,000",
  },
  benefits: [
    "Bepul Turar Joy: Grantga ega bo‘lgan talabalar 1 yil davomida bepul turar joyda yashash imkoniyatiga ega bo‘ladi.",
    "Ta'lim uchun Grantlar: Har bir grant olish talabasiga \$2,900 miqdorida ta'lim uchun mablag' ajratiladi.",
    "Talim Materiallari: PDP University o'quv materiallari Pearson BTEC Britaniya xalqaro ta'lim standartlariga asoslanadi.",
    "O‘rnatilgan Ishga Joylashish: 42% talabalarning rasmiy ishga joylashganligi haqida ma'lumot berilgan.",
    "Oziqlanish: Grantlarga ega bo‘lgan talabalar uchun uch mahal ovqatlanish ta'minlanadi.",
  ],
  statistics: {
    "Total Talabalar":
        "2- kursda tahsil olayotgan jami 280 nafar talaba mavjud.",
    "Ishga Joylashganlar": "83 nafar talaba rasmiy ishga joylashgan.",
  },
  sponsors: [
    "Balloon",
    "Alexor",
    "Megavan",
    "Union",
    "Paper and Board",
    "Megamotors",
    "Sifco International",
    "Alfaruq",
    "Kepa SureMaker",
  ],
);
