import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_model.freezed.dart';
part 'job_model.g.dart';

@freezed
class JobModel with _$JobModel {
  const JobModel._();

  factory JobModel({
    required String id,
    required String title,
    @JsonKey(fromJson: dateFromJson) required DateTime publicationDate,
    required String location,
    required String company,
    required String sourceSite,
    required String linkDetail,
    required String logoImgLink,
    required String position,
  }) = _JobModel;

  factory JobModel.fromJson(Map<String, dynamic> json) =>
      _$JobModelFromJson(json);
}

DateTime dateFromJson(String str) => DateTime.parse(str);

const dummyJobs = [
  {
    "id": "kalibrr-190478",
    "title": "Programmer",
    "publicationDate": "2024-05-18",
    "location": "Jakarta, Indonesia",
    "company": "MITech",
    "sourceSite": "kalibrr.com",
    "linkDetail": "https://www.kalibrr.com/c/mitech/jobs/190478/programmer",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.com/logos/ZHQB9N99RC7RV9MC5X4Q2YR5FZUBVYEUBKZLVN6T-63ed9846.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-233103",
    "title": "Programmer Staff",
    "publicationDate": "2024-05-18",
    "location": "Bandung Kota, Indonesia",
    "company": "Medion Group",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/medion-group/jobs/233103/programmer-staff",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.com/logos/9JTXXELYQ3EUBXEAJZ3TNTWLGJA9W7HF4N4HKCTG-5f7ff927.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-122655",
    "title": "Bootcamp IT Consultant Programmer Fresh Graduate",
    "publicationDate": "2024-04-18",
    "location": "Jakarta, Indonesia",
    "company": "PT. Indocyber Global Teknologi",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/pt-indocyber-global-technology/jobs/122655/bootcamp-it-consultant-programmer-fresh-graduate",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.com/logos/UB8E4EX872UMFUKP4NXM7GTNVW7UWX3EP97ZQ4JT-656ac629.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-176235",
    "title": "Java Developer",
    "publicationDate": "2024-05-13",
    "location": "Jakarta, Indonesia",
    "company": "Code.id",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/code-id/jobs/176235/java-developer",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.com/logos/59DLY4R6ZNH5RQ2UDGRRVS8PQBGG53DR5Y8L5AA9-60c1fbc3.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-233647",
    "title": "Data Science Trainee",
    "publicationDate": "2024-05-08",
    "location": "Jakarta Selatan, Indonesia",
    "company": "Algoritma",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/algoritma/jobs/233647/data-science-trainee-25",
    "logoImgLink":
        "https://rec-data.kalibrr.com/logos/EVAHCC5S9CM5FRRVH6US-5a03dfcf.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-197705",
    "title": "System Analyst",
    "publicationDate": "2024-04-30",
    "location": "Kota Jakarta Barat, Indonesia",
    "company": "PT. Adicipta Inovasi Teknologi (AdIns)",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/pt-adicipta-inovasi-teknologi/jobs/197705/system-analyst-2",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.ph/logos/7FWNNTTG5J7E5VUCBJLZC6TTFJQHPFGB3W724S9C-5e1d7b7d.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-240507",
    "title": "Full Stack Developer (Mid to Senior Level)",
    "publicationDate": "2024-05-09",
    "location": "Tangerang Selatan, Indonesia",
    "company": "commsult Indonesia",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/commsult/jobs/240507/full-stack-developer-mid-to-senior-level",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.com/logos/QCM2VUVEEL5LAD6AZR8YSHXLHS6UZ2EVNZWNAEZV-657168d2.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-241961",
    "title": "Java Developer",
    "publicationDate": "2024-05-13",
    "location": "South Jakarta, Indonesia",
    "company": "PT IONPay Networks (NICEPAY)",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/pt-ionpay-networks-nicepay/jobs/241961/java-developer-12",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.ph/logos/P2Y96UM2PCMLYHGNZTAHBD6CZGRZLR4DFTZ66SQC-5d760c6e.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-236076",
    "title": "IT Bootcamp Malang #Batch 4",
    "publicationDate": "2024-05-03",
    "location": "Malang, Indonesia",
    "company": "Enigma Camp",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/enigma-camp/jobs/236076/it-bootcamp-malang-batch-4",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.com/logos/YEHA7E886PR23JD8BFKMYGXEK5WAGD6PK23V59S3-654b3e3d.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-95976",
    "title": "Business Analyst",
    "publicationDate": "2024-04-23",
    "location": "South Jakarta, Indonesia",
    "company": "Dans Multi Pro",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/dans-multi-pro/jobs/95976/business-analyst",
    "logoImgLink":
        "https://rec-data.kalibrr.com/logos/NKCKPXP97U7TZKATE62PCJCE5NKQ5ZN9J8FUM5VU-5b74492f.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-241002",
    "title": "Mobile Developer (iOS or Android)",
    "publicationDate": "2024-04-23",
    "location": "Jakarta, Indonesia",
    "company": "Code.id",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/code-id/jobs/241002/mobile-developer-ios-or-android",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.com/logos/59DLY4R6ZNH5RQ2UDGRRVS8PQBGG53DR5Y8L5AA9-60c1fbc3.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-201616",
    "title": "Software Engineer Backend",
    "publicationDate": "2024-04-27",
    "location": "South Jakarta, Indonesia",
    "company": "PT Samuel Kripto Indonesia",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/vonix/jobs/201616/software-engineer-backend-3",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.com/logos/KCKMMXRNCMU4K9ANT9XYJ8JFCVUGTY4ZTNV63GA6-662b291a.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-201616",
    "title": "Software Engineer Backend",
    "publicationDate": "2024-04-27",
    "location": "South Jakarta, Indonesia",
    "company": "PT Samuel Kripto Indonesia",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/vonix/jobs/201616/software-engineer-backend-3",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.com/logos/KCKMMXRNCMU4K9ANT9XYJ8JFCVUGTY4ZTNV63GA6-662b291a.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-242293",
    "title": "Software Developer",
    "publicationDate": "2024-05-18",
    "location": "Jakarta Selatan, Indonesia",
    "company": "PT Bank KB Bukopin Tbk",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/pt-bank-kb-bukopin-tbk/jobs/242293/software-developer",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.com/logos/ZJEYS7JJTX9PWARYP9UJC5ER8B6CGZVNFYG62QDV-6603d871.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-242230",
    "title": "Software Developer",
    "publicationDate": "2024-05-16",
    "location": "Jakarta, Indonesia",
    "company": "amIT Global Solution",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/amit-global-solution/jobs/242230/software-developer",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.com/logos/9G5U345ZMYGUANZ9BTSW55SCY37D44RS2KJT6KBA-6645c3c8.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-242290",
    "title": "Software Engineer Jakarta",
    "publicationDate": "2024-05-18",
    "location": "Jakarta Pusat, Indonesia",
    "company": "Kompas Gramedia",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/kompas-gramedia/jobs/242290/software-engineer-jakarta-2",
    "logoImgLink":
        "https://rec-data.kalibrr.com/logos/RY3HWX77MY33MHQ9TJH59FZU48SB4KDBZQVE8KAM-5bbc5ddd.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-238255",
    "title": "IT: EDC Android Developer",
    "publicationDate": "2024-05-14",
    "location": "South Jakarta, Indonesia",
    "company": "PCS Group",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/pcs-indonesia/jobs/238255/it-edc-android-developer-3",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.com/logos/YXA9NGD4N8TAPZ372DS3U766TU7LDE7J2XXZAC7N-659f918b.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-241915",
    "title": "Android Developer Golang",
    "publicationDate": "2024-05-11",
    "location": "Jakarta Selatan, Indonesia",
    "company": "PT Bumi Amartha Teknologi Mandiri",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/pt-bumi-amartha-teknologi-mandiri/jobs/241915/android-developer-golang",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.com/logos/YR6YN3KQLWDCA9JR3Z6YWXGPBNTR6A8BBRQ87TVD-609b611e.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-229199",
    "title": "Software Developer",
    "publicationDate": "2024-04-18",
    "location": "Jakarta Selatan, Indonesia",
    "company": "BOSNET Distribution Indonesia",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/bosnet-distribution-indonesia/jobs/229199/software-developer",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.com/logos/VTK9LWEDEVZ7H5RBCGSZX8J2HJNP4FKB57VGAH29-64ca24ab.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-242141",
    "title": "Network Engineer",
    "publicationDate": "2024-05-15",
    "location": "Jakarta Selatan, Indonesia",
    "company": "PT. Sampoerna Agro Tbk.",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/pt-sampoerna-agro-tbk/jobs/242141/network-engineer",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.com/logos/PEDLLTMC4NCSB7GJFPP287QSDZ2VSJ2W8NNZLPFP-65265a55.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-241151",
    "title": "Mobile Application Developer",
    "publicationDate": "2024-04-24",
    "location": "Central Jakarta, Indonesia",
    "company": "Kompas Gramedia",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/kompas-gramedia/jobs/241151/mobile-application-developer",
    "logoImgLink":
        "https://rec-data.kalibrr.com/logos/RY3HWX77MY33MHQ9TJH59FZU48SB4KDBZQVE8KAM-5bbc5ddd.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-242039",
    "title": "IT Business System & Data Analyst Supervisor",
    "publicationDate": "2024-05-14",
    "location": "Tangerang Kota, Indonesia",
    "company": "Boga Group",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/boga-group/jobs/242039/it-business-system-data-analyst-supervisor",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.com/logos/CYF2KLWH3U87243ZWLBVCKQNMUPD7PKKUHSAHZTR-635f8eef.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-241945",
    "title": "Network Engineer",
    "publicationDate": "2024-05-11",
    "location": "Kota Jakarta Selatan, Indonesia",
    "company": "KSPS",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/ksps/jobs/241945/network-engineer-2",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.ph/logos/4CCKNG8K4NN28DRGEETTHZUDV6TYV3Z8E33SQJN9-5e708b3f.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-239060",
    "title": "Full Stack Developer",
    "publicationDate": "2024-05-14",
    "location": "Jakarta Timur, Indonesia",
    "company": "PT. Bank BCA Syariah",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/bca-syariah/jobs/239060/full-stack-developer",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.com/logos/HN7FRJZNREH2C4T7NQD7DN6WUFA6ULAZMNQ2V6DB-649a4433.png",
    "position": "Programmer"
  },
  {
    "id": "kalibrr-239558",
    "title": "Backend Engineer",
    "publicationDate": "2024-05-18",
    "location": "South Jakarta, Indonesia",
    "company": "Kitabisa",
    "sourceSite": "kalibrr.com",
    "linkDetail":
        "https://www.kalibrr.com/c/kitabisa-com/jobs/239558/backend-engineer-3",
    "logoImgLink":
        "https://rec-data.kalibrr.com/www.kalibrr.com/logos/GA5R8E8LSK4KPDXLY8N66M7STZ88WF4VJYK4GP4J-60d48c95.png",
    "position": "Programmer"
  }
];
