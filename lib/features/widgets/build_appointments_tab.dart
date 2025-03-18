part of '../home/components/calender.dart';

class BuildAppointmentsTab extends StatefulWidget {
  BuildAppointmentsTab(
      {super.key, required this.focusDay, required this.selectedDay});
  DateTime selectedDay;
  DateTime focusDay;

  @override
  State<BuildAppointmentsTab> createState() => _BuildAppointmentsTabState();
}

class _BuildAppointmentsTabState extends State<BuildAppointmentsTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: [
          Text(
            "${widget.selectedDay.day}/${widget.selectedDay.month}/${widget.selectedDay.year}",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TableCalendar(
            focusedDay: widget.focusDay,
            firstDay: DateTime.utc(
              2020,
            ),
            lastDay: DateTime.utc(2030, 12, 31),
            selectedDayPredicate: (day) => isSameDay(widget.selectedDay, day),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                widget.selectedDay = selectedDay;
                widget.focusDay = focusedDay;
              });
            },
            calendarStyle: CalendarStyle(
              holidayDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8)),
              weekendDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8)),
              withinRangeDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8)),
              rangeStartDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8)),
              markerDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8)),
              rangeEndDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8)),
              outsideDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8)),
              disabledDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8)),
              defaultDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8)),
              todayTextStyle: const TextStyle(color: Colors.black),
              selectedDecoration: BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              todayDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Colors.blue)),
            ),
          ),
          const SizedBox(height: 20),
          CustomAppointmentsCard(
            selectedDay: widget.selectedDay,
          ),
        ],
      ),
    ]);
  }
}
