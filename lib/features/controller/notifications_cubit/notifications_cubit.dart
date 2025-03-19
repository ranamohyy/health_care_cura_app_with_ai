import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/dio_helper.dart';
import '../../../core/end_points.dart';
import '../../../models/notifications_model.dart';
part 'notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  NotificationsCubit() : super(NotificationsInitial());
List<NotificationsModel>notifications=[];
  Future<void> getAllNotifications() async {
    try {
      emit(NotificationsLoading());
      final response = await DioHelper.get(GET_NOTIFICATIONS);
      if (response.isSuccess) {
        final List<NotificationsModel> list =List<NotificationsModel>.from(
            (response.data?['data'] ?? []).map((e) =>
                NotificationsModel.fromJson(e)));
        notifications.clear();
        notifications.addAll(list);
        emit(NotificationsSuccess());
      }
    } catch (e) {
     log("the error cause ${e.toString()}");
      emit(NotificationsError());
    }
  }

}
