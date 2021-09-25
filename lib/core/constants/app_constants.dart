import 'package:supabase/supabase.dart';

class SupaBaseCredentials {
  static const String supaAPIKEY =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYzMjIyNDk3OSwiZXhwIjoxOTQ3ODAwOTc5fQ.qo5dy0_1om2o8oxwwQ5LfbNGxyznYt3fV0BkIeGjCOs';
  static const String supaAPIURL = 'https://zqemgvzynujfudvvzlgo.supabase.co';

  static SupabaseClient supabaseClient =
      SupabaseClient(supaAPIKEY, supaAPIURL);
}
