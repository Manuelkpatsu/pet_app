import 'package:equatable/equatable.dart';

class PaymentMethod extends Equatable {
  final int id;
  final String accountNumber;
  final String accountHolderName;
  final String expiredDate;
  final String cvv;
  final String provider;

  const PaymentMethod({
    required this.id,
    required this.accountNumber,
    required this.accountHolderName,
    required this.expiredDate,
    required this.cvv,
    required this.provider,
  });

  @override
  List<Object?> get props => [
        id,
        accountNumber,
        accountHolderName,
        expiredDate,
        cvv,
        provider,
      ];
}
