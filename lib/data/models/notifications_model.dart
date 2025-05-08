
// الموديل ده كأنه ويدجت ثابته بستخدمها اكتر من مرة بس هو مش ويدجت .. دا شويه داتا ثابتين بطلبهم اكثر من مره

class NotificationsModel {
  final String title;
  final String doctorName;
  final String specialty;
  final String date;
  bool isNew;

  NotificationsModel({
    required this.title,
    required this.doctorName,
    required this.specialty,
    required this.date,
    this.isNew = true,
  });
}