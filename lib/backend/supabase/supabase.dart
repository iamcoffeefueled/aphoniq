import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://yvvpjwubdfjdatdlfavs.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl2dnBqd3ViZGZqZGF0ZGxmYXZzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzAzOTI3ODAsImV4cCI6MjA0NTk2ODc4MH0.0Oo5C0eDegfAWALDVg0DafLndoDZsL2obZ1VZ2CXgCc';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
