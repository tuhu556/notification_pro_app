import 'package:flutter/material.dart';
import 'package:notification_pro_app/widgets.dart';

class PlanStatsPage extends StatelessWidget {
  const PlanStatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppBarTitle(),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Plant Stats',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 45),
              PlantImage(),
              SizedBox(
                height: 25,
              ),
              PlantStats(),
            ],
          ),
        ),
      ),
    );
  }
}
