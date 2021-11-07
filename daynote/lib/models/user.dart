import 'package:daynote/pages/note_page.dart';

class User {
  final int id, pin;
  final String nama, email, password, gambar;
  User(
      {required this.id,
      required this.pin,
      required this.nama,
      required this.email,
      required this.password,
      required this.gambar});

  static List<User> getUser() {
    return <User>[
      User(
          id: 1,
          pin: 123456,
          nama: 'anggi',
          email: 'anggi@mail.com',
          password: 'anggi123',
          gambar: 'tes1.png'),
      User(
          id: 2,
          pin: 123123,
          nama: 'silva',
          email: 'silva@mail.com',
          password: 'silva123',
          gambar: 'tes2.png'),
    ];
  }
}

class Note {
  final int id;
  final String title, tanggal, fill;
  Note({
    required this.id,
    required this.title,
    required this.tanggal,
    required this.fill,
  });

  static List<Note> getNote() {
    return <Note>[
      Note(
          id: 1,
          title: 'Catata 1',
          tanggal: '12 Jan 2020',
          fill:
              'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptas nobis vel recusandae veritatis voluptatum in ratione sapiente quia, nisi aliquam.'),
      Note(
          id: 2,
          title: 'Catata 2',
          tanggal: '13 Feb 2020',
          fill:
              'Opsum, dolor sit amet consectetur adipisicing elit. Voluptas nobis vel recusandae veritatis voluptatum in ratione sapiente quia, nisi aliquam.'),
      Note(
          id: 3,
          title: 'Catata 3',
          tanggal: '14 Mar 2020',
          fill:
              'Porem ipsum, dolor sit amet consectetur adipisicing elit. Voluptas nobis vel recusandae veritatis voluptatum in ratione sapiente quia, nisi aliquam.'),
    ];
  }
}
