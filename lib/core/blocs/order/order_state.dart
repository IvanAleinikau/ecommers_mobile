import 'package:ecommers_mobile/core/model/order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_state.freezed.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState({
    @Default(false) bool isLoading,
    @Default([]) List<Order> orderList,
    @Default(false) bool orderCreated,
  }) = _OrderState;
}
