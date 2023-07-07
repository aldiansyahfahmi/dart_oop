class ValidationException implements Exception {
  String message;

  ValidationException(this.message);

  @override
  String toString() {
    return 'Validation Exception : $message';
  }
}

class Validation {
  static void validate(String username, String password) {
    if (username.isEmpty) {
      // menggunakan class exception sendiri (buat sendiri)
      throw ValidationException('Username is blank');
    } else if (password.isEmpty) {
      throw ValidationException('Password is blank');
    } else if (username != 'aldi' || password != 'aldi') {
      // menggunakan exception dari dart
      throw Exception('Login failed');
    }
  }
}

void main() {
  try {
    Validation.validate('', 'salah');
    // ketika validasi gagal, maka akan masuk ke blok catch
  } on ValidationException catch (exception, stackTrace) {
    print(exception);
    // stack trace berguna untuk mengetahui lokasi error (lokasi file, baris)
    print('Stack Trace : $stackTrace');
    // multi exception
  } on Exception catch (exception) {
    print(exception);
    // error ataupun tidak, finally akan selalu di eksekusi
  } finally {
    print('finally');
  }

  try {
    Validation.validate('aldi', 'salah');
    // menangkap semua class exception apapun
  } catch (exception) {
    print(exception);
  } finally {
    print('finally');
  }

  print('selesai');
}
