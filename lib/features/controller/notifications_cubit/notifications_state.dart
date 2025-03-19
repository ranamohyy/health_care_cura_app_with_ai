part of 'notifications_cubit.dart';

abstract class NotificationsState {}

 class NotificationsInitial extends NotificationsState {}
 class NotificationsLoading extends NotificationsState {}
 class NotificationsError extends NotificationsState {}
 class NotificationsSuccess extends NotificationsState {}
