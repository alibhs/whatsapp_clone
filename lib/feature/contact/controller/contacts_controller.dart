import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/feature/contact/repository/contact_repository.dart';

final contactControllerProvider = FutureProvider((ref) {
  final contactsRepository = ref.watch(contactsRepositoryProvider);
  return contactsRepository.getAllContacts();
});
