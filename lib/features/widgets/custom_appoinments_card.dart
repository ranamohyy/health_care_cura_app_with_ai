
part of '../home/components/calender.dart';
class CustomAppointmentsCard extends StatelessWidget {
   CustomAppointmentsCard({super.key,required this.selectedDay});
  DateTime selectedDay;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow:const [ BoxShadow(color: Colors.black12, blurRadius: 6)],
      ),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 120,
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
                    "${selectedDay.day}/ ${selectedDay.month}/ ${selectedDay.year}\n10:00 AM",
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
