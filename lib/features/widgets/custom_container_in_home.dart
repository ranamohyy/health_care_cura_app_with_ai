part of '../home/components/home.dart';
class ContainerInHome extends StatelessWidget {
  const ContainerInHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get a symptom assessment and begin your journey toward better health",
                  style: TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),

              ],
            ),
          ),
          Expanded(child: Image.asset(AppImages.doctors))

        ],
      ),
    );
  }
}
