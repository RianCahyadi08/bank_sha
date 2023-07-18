import 'package:bank_sha/models/transaction_model.dart';
import 'package:bank_sha/services/transaction_service.dart';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc() : super(TransactionInitial()) {
    on<TransactionEvent>((event, emit) async {
      if (event is TransactionGet) {
        try {
          emit(TransactionLoading());
          final transactions = await TransactionService().getTransactions();
          emit(TransactionSuccess(transactions));
        } on Exception catch (e) {
          emit(TransactionFail(e.toString()));
        }
      }
    });
  }
}
