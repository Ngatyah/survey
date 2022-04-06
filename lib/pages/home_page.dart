import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../components/grid_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('ICT Survey'),
          actions: [
            ElevatedButton.icon(
              icon: const Icon(Icons.power_settings_new,
                  color: Colors.white, size: 30),
              label: const Text('Logout'),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.custom(
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                repeatPattern: QuiltedGridRepeatPattern.mirrored,
                pattern: const [
                  QuiltedGridTile(1, 2),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 1),
                  QuiltedGridTile(1, 2),
                ],
              ),
              childrenDelegate: SliverChildListDelegate([
                const GridData(
                  iconData: Icons.computer,
                  title: 'Computer',
                  pcolor: Color.fromARGB(255, 12, 221, 228),
                  scolor: Color.fromARGB(255, 78, 158, 75),
                  status: 'Not Started',
                ),
                const GridData(
                  iconData: Icons.phone_android,
                  title: 'Mobile',
                  pcolor: Color.fromARGB(255, 79, 79, 80),
                  scolor: Color.fromARGB(255, 150, 156, 156),
                  status: 'Completed',
                ),
                const GridData(
                  iconData: Icons.network_check,
                  title: 'Networking',
                  pcolor: Color.fromARGB(255, 78, 158, 75),
                  scolor: Color.fromARGB(255, 103, 107, 107),
                  status: '20%',
                ),
                const GridData(
                  iconData: Icons.settings,
                  title: 'Computer Hardware',
                  pcolor: Color(0xFFE60023),
                  scolor: Color.fromARGB(255, 91, 92, 92),
                  status: '70%',
                ),
                const GridData(
                  iconData: Icons.settings_input_component,
                  pcolor: Color(0xFF057BC7),
                  scolor: Color(0xFF4F643D),
                  title: 'Computer Software',
                  status: 'completed',
                ),
                const GridData(
                  iconData: Icons.settings_input_antenna,
                  title: 'Networking Hardware',
                  pcolor: Color(0xFFFFB703),
                  scolor: Color.fromARGB(255, 75, 74, 74),
                  status: 'Not Started',
                ),
              ]),
            )));
  }
}
  // IconButton(
  //             icon: const Icon(
  //               Icons.power_settings_new,
  //               size: 28,
  //             ),
  //             onPressed: () {},
  //           ),
