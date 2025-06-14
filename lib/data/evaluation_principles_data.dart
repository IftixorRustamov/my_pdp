// lib/data/evaluation_principles_data.dart

// Data model for each evaluating principle (Submission, Resubmission, etc.)
class EvaluatingPrinciple {
  final String title;
  final String description;
  final List<String> requirements;
  final List<String> conditions; // For resubmission, retake conditions
  final String? duration; // For remodule duration

  const EvaluatingPrinciple({
    required this.title,
    required this.description,
    this.requirements = const [],
    this.conditions = const [],
    this.duration,
  });
}

// Data model for Plagiarism and Anti-Plagiarism
class PlagiarismInfo {
  final String plagiarismDefinition;
  final List<String> typesOfPlagiarism;
  final List<String> impactOfPlagiarism;
  final String antiPlagiarismPolicy;
  final List<String> antiPlagiarismComponents;
  final List<String> detectionTools;
  final List<String> violationMeasures;
  final List<String> importanceOfPolicy;

  const PlagiarismInfo({
    required this.plagiarismDefinition,
    required this.typesOfPlagiarism,
    required this.impactOfPlagiarism,
    required this.antiPlagiarismPolicy,
    required this.antiPlagiarismComponents,
    required this.detectionTools,
    required this.violationMeasures,
    required this.importanceOfPolicy,
  });
}

// Data for Evaluating Principles
final List<EvaluatingPrinciple> evaluatingPrinciples = [
  const EvaluatingPrinciple(
    title: "1. Submission (Topshirish)",
    description:
        "Submission — bu o‘quvchining topshiriq yoki baholash vazifasini belgilangan muddatda taqdim etish jarayoni. O‘quvchidan barcha ishlarni baholovchi (assessor)ga o‘z vaqtida topshirish talab etiladi.",
    requirements: [
      "Topshiriqni belgilangan muddatda sifatli bajarish.",
      "Talabaning barcha ishi o‘ziga tegishli bo‘lishi va plagiatdan xoli bo‘lishi kerak.",
      "Baholash mezonlariga (Assessment Criteria) mos keladigan ishni taqdim etish.",
    ],
    conditions: [
      "Baholovchining ko‘rsatmalariga qat’iy rioya qilish.",
      "Kerakli format va tuzilmani saqlash (masalan, PDF, Word hujjatlari yoki boshqalar).",
      "Talab qilingan dalil va qo‘shimcha materiallarni taqdim etish.",
    ],
  ),
  const EvaluatingPrinciple(
    title: "2. Resubmission (Qayta topshirish)",
    description:
        "Agar o‘quvchi birinchi topshirishda barcha mezonlarni bajara olmagan bo‘lsa, unga qayta topshirish imkoniyati beriladi. Resubmission faqat baholovchining (assessor) ruxsati bilan amalga oshiriladi.",
    requirements: [
      "Qayta topshirish faqatgina bir marta ruxsat etiladi.",
      "Talabaga qayta topshirishdan oldin ishini yaxshilash uchun aniq fikr-mulohazalar (feedback) beriladi.",
      "O‘quvchi qayta topshirishdan oldin qo‘shimcha yordam yoki ko‘rsatma so‘rashi mumkin.",
    ],
    conditions: [
      "Qayta topshirish uchun odatda yangi muddat belgilanadi, bu vaqt baholash davri ichida bo‘lishi kerak.",
    ],
  ),
  const EvaluatingPrinciple(
    title: "3. Retake (Qayta o‘rganish va qayta baholash)",
    description:
        "Agar o‘quvchi qayta topshirishda ham baholash mezonlarini bajara olmasa, unga retake imkoniyati beriladi. Bu jarayon davomida o‘quvchi darsning ma’lum bir qismini qaytadan o‘rganishi va baholashdan yana bir marta o‘tishi kerak.",
    requirements: [
      "Retake uchun odatda yangi vazifa yoki topshiriq beriladi, lekin bu faqat Pass (o‘tish balli) uchun baholanadi.",
      "Retake faqatgina Dastur Menejeri (Programme Manager) tomonidan tasdiqlanadi.",
    ],
    conditions: [
      "Faqat jiddiy sabablar tufayli muvaffaqiyatsizlikka uchragan talabalar (masalan, sog‘liq muammolari yoki boshqa muhim sabablar) qayta o‘rganishga ruxsat oladi.",
      "Amaliyotda talabaning o‘qitish sifati yoki boshqaruvdagi xatoliklar tufayli ham retake zarur bo‘lishi mumkin.",
    ],
  ),
  const EvaluatingPrinciple(
    title: "4. Remodule (Qayta modul o‘tish)",
    description:
        "Agar o‘quvchi retake imkoniyatidan keyin ham muvaffaqiyatsizlikka uchrasa, unga remodule qilish (butun modulni boshidan o‘rganish) talab qilinishi mumkin. Remodule dasturdagi barcha modullarni muvaffaqiyatli tamomlash uchun talab qilinadigan yakuniy imkoniyat hisoblanadi.",
    requirements: [
      "Talaba barcha baholash jarayonlarini tugatgan bo‘lishi kerak, ammo muvaffaqiyatga erishmagan holatda qayta modul o‘tish taklif qilinadi.",
      "Bu jarayon odatda dastur uchun qo‘shimcha to‘lovlarni talab qiladi.",
      "Qayta modulni tugatgach, talabadan yangi baholash jarayonlaridan muvaffaqiyatli o‘tish kutiladi.",
    ],
    duration:
        "Talaba modulni qayta o‘rganish uchun odatda bir yillik vaqt oladi. Remodule qilish talabaning vaqt va resurslari bo‘yicha katta majburiyat hisoblanadi.",
  ),
];

// Data for the process table
final List<List<String>> processTableData = [
  ["Jarayon", "Mazmuni", "Muddati", "Baholash mezoni"],
  [
    "Submission",
    "Topshiriqni o‘z vaqtida taqdim etish.",
    "Belgilangan muddat.",
    "To‘liq mezonlar bo‘yicha."
  ],
  [
    "Resubmission",
    "Qayta topshirish uchun bir martalik imkoniyat.",
    "Maxsus muddat belgilanadi.",
    "Asl mezonlar bo‘yicha."
  ],
  [
    "Retake",
    "Yangi vazifa asosida qayta baholash.",
    "Belgilangan muddat.",
    "Faqat Pass uchun."
  ],
  [
    "Remodule",
    "Modulni to‘liq qayta o‘rganish.",
    "1 yilgacha.",
    "Asl mezonlar bo‘yicha."
  ],
];

// Data for Plagiarism
final PlagiarismInfo plagiarismInfo = const PlagiarismInfo(
  plagiarismDefinition:
      "Plagiat — bu o'zgalar fikrlari, g'oyalari, matnlari yoki ishlarini mualliflik huquqini tan olmasdan o'z ishi sifatida taqdim qilish. Bu akademik halollik qoidalarini buzish hisoblanadi va talabaning baholariga salbiy ta'sir qiladi.",
  typesOfPlagiarism: [
    "To‘liq plagiat: Boshqa odamning ishini to‘liq yoki deyarli bir xil shaklda o‘z ishi sifatida topshirish.",
    "Parafrazlash plagiati: Matnni synonim so‘zlar bilan qayta yozib, lekin asl muallifni ko‘rsatmaslik.",
    "O‘z-o‘zini plagiat qilish: Talabaning avvalgi ishini yangi topshiriqda qayta topshirishi.",
    "Manbalarni noto‘g‘ri ko‘rsatish: Asl manbani ko‘rsatmaslik yoki noto‘g‘ri ko‘rsatish.",
    "Kollektiv plagiat: Bir guruh talabaning birgalikdagi ishi bo‘lsa-da, faqat bir kishi tomonidan topshirilgan ish.",
  ],
  impactOfPlagiarism: [
    "Akademik jazolar: Talabaning ishi rad etiladi va past baho beriladi.",
    "Reputatsiyaga zarar: Bu talabaning kelajakdagi ta’lim va professional rivojlanish imkoniyatlariga salbiy ta’sir ko‘rsatadi.",
    "Huquqiy choralar: Mualliflik huquqi buzilgan taqdirda jiddiy qonuniy oqibatlar yuzaga kelishi mumkin.",
  ],
  antiPlagiarismPolicy:
      "Anti-plagiat siyosati talabalarning barcha ishlarini halol va mustaqil bajarishini ta’minlash uchun qoidalar va choralarni belgilaydi. Bu siyosat talabalarga plagiarizmning oldini olish va akademik halollikka rioya qilishga yordam beradi.",
  antiPlagiarismComponents: [
    "Tushuncha berish: Talabalarga plagiatning turlari, xavfi va oqibatlari haqida to‘liq ma’lumot beriladi.",
    "Anti-plagiat texnologiyalari: Ishlarni tekshirish uchun plagiatni aniqlovchi dasturlar (masalan, Turnitin, Grammarly, PlagScan) ishlatiladi.",
    "Yozma ishlarda manbalarni to‘g‘ri keltirish: Talabalarga manbalarni to‘g‘ri ko‘rsatish usullari (APA, MLA, Harvard formatlari) o‘rgatiladi.",
    "Oldindan tekshirish imkoniyati: Talabalar o‘z ishlarini topshirmasdan oldin plagiatni tekshiruvchi dasturlarda tekshirishlari mumkin.",
    "Akademik halollik kodeksi: Har bir talaba muassasaning akademik halollik qoidalariga rioya qilish majburiyatini oladi.",
  ],
  detectionTools: [
    "Turnitin: Matndagi plagiatni aniqlash bo‘yicha dunyodagi eng mashhur dastur.",
    "Copyscape: Internetda mavjud bo‘lgan kontent bilan taqqoslab plagiatni aniqlaydi.",
    "Grammarly Premium: Yozma ishlardagi plagiat va grammatik xatolarni bir vaqtning o‘zida tekshiradi.",
    "Quetext: Matndagi o‘xshashliklarni aniqlaydigan bepul vosita.",
  ],
  violationMeasures: [
    "Ogohlantirish: Birinchi marta qoidabuzarlik qilgan talabaga ogohlantirish beriladi.",
    "Ishni rad etish: Plagiat aniqlangan topshiriq qabul qilinmaydi va talaba qayta topshirishga majbur bo‘ladi.",
    "Jarima: Qayta topshirish uchun qo‘shimcha to‘lov talab qilinishi mumkin.",
    "O‘qishdan chetlatish: Jiddiy yoki qayta-qayta plagiat qilgan talabalar dasturdan chetlatiladi.",
  ],
  importanceOfPolicy: [
    "Talabalarni mustaqil fikrlashga undaydi.",
    "Akademik halollikni targ‘ib qiladi.",
    "O‘quv dasturlarining nufuzini oshiradi.",
    "Talabani kelajakdagi professional hayotida halol ishlashga o‘rgatadi.",
  ],
);
