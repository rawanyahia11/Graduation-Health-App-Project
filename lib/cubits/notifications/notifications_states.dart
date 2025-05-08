import '../../data/models/notifications_model.dart';

abstract class NotificationsStates {}

class NotificationsInitialState extends NotificationsStates {}

class NotificationsLoadedState extends NotificationsStates {
  final List<NotificationsModel> notifications;

  NotificationsLoadedState(this.notifications);
}