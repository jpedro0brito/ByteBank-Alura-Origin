import 'Contact.dart';

class Transaction {
  final String id;
  final double value;
  final Contact contact;

  Transaction(
      this.value,
      this.contact,
      this.id,
      ): assert(value > 0);

  @override
  String toString() {
    return 'Transaction{id: $id value: $value, contact: $contact}';
  }

  Transaction.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      value = json['value'],
      contact = Contact.fromJson(json['contact']);

  Map<String, dynamic> toJson() =>
  {
    'id': id,
    'value': value,
    'contact': contact.toJson(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Transaction &&
              runtimeType == other.runtimeType &&
              value == other.value &&
              contact == other.contact;

  @override
  int get hashCode =>
      value.hashCode ^
      contact.hashCode;

}