import 'package:supabase/supabase.dart';
import 'package:asvine/core/constants/app_constants.dart';

class AuthenticationService {

  Future<String?> signup({
    required String email,
    required String password,

  })async{
    GotrueSessionResponse response =
      await SupaBaseCredentials.supabaseClient.auth.signUp(email, password);

    if (response.error == null){
      String? userEmail = response.data!.user!.email;

      print("Kayit islemi basarili $userEmail");
    }else{
      print("Kayit islemi hatali : ${response.error!.message}");
    }
  }

  Future<String?> login({
    required String email,
    required String password,    
  }) async{
    GotrueSessionResponse response =
      await SupaBaseCredentials.supabaseClient.auth.signIn(
        email: email,
        password: password,
        options: AuthOptions(redirectTo: SupaBaseCredentials.supaAPIURL));

      if (response.error == null){
      String? userEmail = response.data!.user!.email;

      print("Giris islemi basarili $userEmail");
    }else{
      print("Giris islemi hatali : ${response.error!.message}");
    }
  }
}
