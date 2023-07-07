abstract class Multimedia {}

// ini adalah mixin
// mixin berguna ketika terdapat kode yang tertulis secara berulang-ulang (menyalin kode)
mixin Playable {
  String? name;

  void play() {
    print('Play $name');
  }
}

mixin Stoppable {
  String? name;

  void stop() {
    print('Stop $name');
  }
}

// on berguna untuk menspesifkkan penggunaan mixin
// jadi Pause hanya bisa digunakan ke class turunan dari Multimedia
mixin Pause on Multimedia {}

// mixin dapat digunakan dengan menggunakan keyword with dan diikuti nama mixinnya
// bisa menggunakan beberapa mixin dengan menambah tanda , (koma) sebagai pemisah
// dengan menggunakan mixin, semua isi yang ada pada mixin (Playable, Stoppable) akan disalin ke class yang memanggil mixin tersebut
class Video extends Multimedia with Playable, Stoppable, Pause {}

class Audio with Playable, Stoppable {}

void main() {
  var video = Video();
  video.name = 'Dart';
  video.play();
  video.stop();
}
