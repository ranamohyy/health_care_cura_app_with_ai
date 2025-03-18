import 'package:cura/core/helpers/CustomSvg.dart';
import 'package:cura/core/helpers/app_assets.dart';
import 'package:cura/core/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../core/helpers/styles.dart';
part 'package:cura/features/widgets/build_appointments_tab.dart';
part '../../widgets/custom_appoinments_card.dart';
class CalenderView extends StatefulWidget {
  const CalenderView({super.key});
  @override
  _CalenderViewState createState() => _CalenderViewState();
}

class _CalenderViewState extends State<CalenderView> {
  final DateTime _selectedDay = DateTime.now();
  final DateTime _focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 6)
                ],
              ),
              margin: const EdgeInsets.symmetric(horizontal: 12),
              child: TabBar(
                labelColor: AppColors.primary,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.blue,
                tabs: const [
                  Tab(
                      icon: CustomSvg(svg: AppIcons.calenderFilled),
                      text: "My Appointments"),
                  Tab(
                      icon: CustomSvg(
                        svg: AppIcons.archive,
                      ),
                      text: "Archive"),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  BuildAppointmentsTab(
                      focusDay: _focusedDay, selectedDay: _selectedDay),
                  const Center(
                      child: Text("Archive Section",
                          style: TextStyle(fontSize: 18))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
