class RecentFile {
  final String? icon, title, date, size, nameuser;

  RecentFile({this.nameuser, this.icon, this.title, this.date, this.size});
}

List demoRecentFiles = [
  RecentFile(
    nameuser: 'mohamed',
    icon: "assets/icons/xd_file.svg",
    title: "iphon 13",
    date: "1-10-2022",
    size: "Ongoing",
  ),
  RecentFile(
    nameuser: 'yousef',
    icon: "assets/icons/Figma_file.svg",
    title: "laptop m600",
    date: "1-10-2022",
    size: "Canceld",
  ),
  RecentFile(
    nameuser: 'salah',
    icon: "assets/icons/doc_file.svg",
    title: "sansung s20",
    date: "1-10-2022",
    size: "Completed",
  ),
  RecentFile(
    nameuser: 'wael',
    icon: "assets/icons/sound_file.svg",
    title: "redmi 5",
    date: "2-10-2022",
    size: "Completed",
  ),
  RecentFile(
    nameuser: 'magdy',
    icon: "assets/icons/media_file.svg",
    title: "shirt whait",
    date: "3-10-2022",
    size: "Ongoing",
  ),
  RecentFile(
    nameuser: 'mohamed',
    icon: "assets/icons/pdf_file.svg",
    title: "shoose",
    date: "4-10-2022",
    size: "Ongoing",
  ),
  RecentFile(
    nameuser: 'arwa',
    icon: "assets/icons/excle_file.svg",
    title: "shitr black",
    date: "4-10-2022",
    size: "Ongoing",
  ),
];

class Pepole {
  final String? name, id, datetime, email;

  Pepole({this.name, this.id, this.datetime, this.email});
}

List<Pepole> demopeple = [
  Pepole(
    datetime: '2022-5-11',
    email: 'taha@gmail.com',
    id: '211',
    name: 'Taha khaled',
  ),
  Pepole(
    datetime: '2022-5-22',
    email: 'mohamed@gmail.com',
    id: '225',
    name: 'mohamed salah',
  ),
  Pepole(
    datetime: '2022-6-18',
    email: 'yousef@gmail.com',
    id: '236',
    name: 'yousef magdy',
  ),
];
