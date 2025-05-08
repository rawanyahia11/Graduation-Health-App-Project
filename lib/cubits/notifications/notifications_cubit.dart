import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_health_app_project/cubits/notifications/notifications_states.dart';

import '../../data/models/notifications_model.dart';

class NotificationsCubit extends Cubit<NotificationsStates>{
  NotificationsCubit() : super(NotificationsInitialState()) {
    loadNotifications();
  }

  //****************************************************************************

  final List<NotificationsModel> notificationsList = [
    NotificationsModel(
      title: "هناك تحليل عليك إجراؤه",
      doctorName: "د/ محمد أمين شاهين",
      specialty: "عيادة - القلب",
      date:  "الخميس 27 / 2",
    ),

    NotificationsModel(
      title: "هناك أشعة عليها إجراؤها",
      doctorName: "د/ إسماعيل محمد السيد",
      specialty: "عيادة - العظام",
      date: "الخميس 27 / 2",
    ),
  ];

  //****************************************************************************

  void loadNotifications() {
    emit(NotificationsLoadedState(List.from(notificationsList)));
  }

  //****************************************************************************

  void markAllAsRead() {
    for (var n in notificationsList) {    // دي لوب بتلف على كل عنصر (NotificationModel) في الليستة  notificationList
                                          // n هنا يمثل إشعار واحد
      n.isNew = false; // كل اشعار كان عليه ترو بقا فولس يعني قرأ
    }
    emit(NotificationsLoadedState(List.from(notificationsList)));
  }

}





/*
List.from(notificationsList)
→ دي طريقة لإنشاء نسخة جديدة من الليست. ليه؟
عشان تتفادى مشاكل التغيير في الليست الأصلية _notifications بعد ما الحالة تكون تبعتت، وده بيمنع Side Effects في Flutter
 */