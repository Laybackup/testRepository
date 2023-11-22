import 'package:supabase/supabase.dart';

class SupabaseCredentials {
  static const String APIKEY =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpwY2x5Y25jcWdjYnRpeXh2dXZuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODQ0NjUyMjMsImV4cCI6MjAwMDA0MTIyM30.YcH57JCmIFmWwD7TVfut24hJbDQFUTkKfnR4odFHyK0";
  static const String APIURL = "https://zpclycncqgcbtiyxvuvn.supabase.co";
  static SupabaseClient supabaseClient = SupabaseClient(APIURL, APIKEY);
}
