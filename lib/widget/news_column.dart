import 'package:flutter/material.dart';

class NewsColumn extends StatelessWidget {
  const NewsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
            'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1w2pMa.img?w=768&h=512&m=6'),
      ),
      const Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
          ('تشتهر التوابل بقدرتها على إضافة نكهة مميزة للأطباق، ولكن هل تعلم أن بعض التوابل تمتلك خصائص صحية مذهلة، فهي لا تقتصر على تحسين طعم الطعام فحسب، بل تسهم أيضا في تعزيز صحة الجسم ومقاومة الأمراض.')),
    ]);
  }
}
