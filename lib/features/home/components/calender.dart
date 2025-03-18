import 'package:cura/core/helpers/CustomSvg.dart';
import 'package:cura/core/helpers/app_assets.dart';
import 'package:cura/core/helpers/app_colors.dart';
import 'package:cura/core/helpers/styles.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
class CalenderView extends StatefulWidget {
  const CalenderView({super.key});
  @override
  _CalenderViewState createState() => _CalenderViewState();
}
class _CalenderViewState extends State<CalenderView>
{
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          const SizedBox(height: 50,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow:const [ BoxShadow(color: Colors.black12, blurRadius: 6)],
            ),
            margin: const EdgeInsets.symmetric(horizontal: 12),
            child: TabBar(
              labelColor: AppColors.primary,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.blue,
              tabs: [
                const Tab(
                    icon: CustomSvg(svg: AppIcons.calenderFilled),
                    text: "My Appointments"),
                const Tab(
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
                    buildAppointmentsTab(),
                    const Center(
                        child: Text("Archive Section", style: TextStyle(fontSize: 18))),
                  ],
                ),
          ),
        ],
      ),


      ),
    );
  }
  Widget buildAppointmentsTab() {
    return ListView(
        children:[ Column(
          children: [
            Text("${_selectedDay.day}/${_selectedDay.month}/${_selectedDay.year}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TableCalendar(
              focusedDay: _focusedDay,
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              calendarFormat: CalendarFormat.month,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              calendarStyle: CalendarStyle(
                todayTextStyle: const TextStyle(color: Colors.black),
                selectedDecoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(8),
                ),
                todayDecoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.blue)),
              ),

            ),
            const SizedBox(height: 20),
            buildAppointmentCard(),
          ],
        ),
        ] );
  }
  Widget buildAppointmentCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [const BoxShadow(color: Colors.black12, blurRadius: 6)],
      ),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 120,
            padding: const EdgeInsets.symmetric(vertical: 0),
            decoration: const BoxDecoration(
              color: Colors.blue,

            ),
          ),
          Image.asset(AppImages.medicines,width: 70,),
          const SizedBox(width: 10,),
          Text("Medication\n Time",
              style:kTextStyle14Grey),
          const Spacer(),
          Container(
            width: 1,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          const SizedBox(width: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const CustomSvg(svg: AppIcons.calenderFilled),
                const SizedBox(width: 4),
                Text(
                    "${_selectedDay.day}/ ${_selectedDay.month}/ ${_selectedDay.year}\n10:00 AM",
                    style: const TextStyle(color: Colors.black)),
              ],
            ),
          ),
          const SizedBox(height: 4),

        ],
      ),
    );
  }



}
