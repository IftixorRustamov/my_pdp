class PersonInfo {
  final String imagePath;
  final String name;
  final String title;
  final String description;
  final List<String> bulletPoints;

  const PersonInfo({
    required this.imagePath,
    required this.name,
    required this.title,
    required this.description,
    this.bulletPoints = const [],
  });
}

class ContactDetails {
  final String mapImagePath;
  final String country;
  final String city;
  final String address;
  final String websiteUrl;

  const ContactDetails({
    required this.mapImagePath,
    required this.country,
    required this.city,
    required this.address,
    required this.websiteUrl,
  });
}

final List<PersonInfo> teamMembers = [
  const PersonInfo(
    imagePath: "assets/images/odilbek.jpeg",
    name: "Odilbek Mirzayev",
    title: "PDP Ecosystem asoschisi",
    description:
        "Odilbek Mirzayev - O'zbekistonda ta'lim va IT sohalarida faoliyat yurituvchi Entrepreneur • Investor • Developer • Visioner. Odilbek Mirzayev PDP EcoSystem asoschisi bo'lib, bu tashkilot zamonaviy ta'lim va yetakchi mutaxassislarni tayyorlashga qaratilgan bir nechta loyihalarni amalga oshirib kelmoqda.",
    bulletPoints: [
      "PDP Academy: IT-texnologiyalarini rivojlantirish bo'yicha ta'lim beruvchi akademiya. PDP Academy hozir dasturlashni o'rganish istagidagi insonlarga 6 yildan beri professionallar bilimi, ularning tajribasi, loyihalar, tadbirlar orqali sifatli ta'lim ulabish bormoqda. Hozirgacha akademiyada tahsil olayotganlar 10 000 nafarni tashkil etadi.",
      "PDP University: Yuqori malakali mutaxassislarni tayyorlashga yo'naltirilgan universitet. Buyuk Britaniyaning Pearson BTEC xalqaro ta'lim dasturining rasmiy markazi hisoblanadi.",
      "PDP School: Yoshlarni zamonaviy kasblarga tayyorlashga mo'ljallangan maktab. Toshkentdagi ilk 'IT' Maktab.",
      "PDP Junior: 5 yildan beri 8-17 yoshdagi dasturchilarni dasturlash hamda tanqidiy fikrlash bo'yicha ko'nikmalarini shakllantirib, IT sohasida kichik ilova hamda o'yinlar ishlab chiqarishlariga yaqindan yordam berib kelyapdi."
    ],
  ),
  const PersonInfo(
    imagePath: "assets/images/director.jpeg",
    name: "Jiemurat Mambetkarimov Polatovich",
    title: "PDP University rektori",
    description:
        "PDP University rektori sifatida Jiemurat Mambetkarimov yuqori malakali mutaxassislarni tayyorlashga yo'naltirilgan zamonaviy ta'lim muassasasiga yetakchilik qilmoqda. PDP University ta'lim jarayonlarida innovatsion yondashuvni qo'llab-qo'llab-quvvatlaydi hamda Buyuk Britaniyaning Pearson BTEC xalqaro ta'lim dasturining rasmiy markazi sifatida global sifat standartlariga mos ta'lim beradi.\n\nJiemurat Mambetkarimovning rahbarligi ostida universitet O'zbekiston va mintaqadagi IT va texnologiyalar bo'yicha yetakchi kadrlarni tayyorlashda o'z hissasini qo'shmoqda. U ta'lim sohasida hamkorlikni rivojlantirish va zamonaviy o'quv dasturlarini joriy etish orqali yosh avlodni raqobatbardosh karyeraga yo'naltirilgan.",
  ),
];

final ContactDetails contactDetails = const ContactDetails(
  mapImagePath: "assets/images/map.png",
  country: "Uzbekistan",
  city: "Tashkent",
  address: "12/1, Yangi Sergeli Road, 100000, Tashkent, Uzbekistan",
  websiteUrl: "https://university.pdp.uz/uz",
);
