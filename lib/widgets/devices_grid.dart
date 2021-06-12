import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'device_tile.dart';
import '../models/device.dart';
import '../providers/devices.dart';

class DevicesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Device> _devices = Provider.of<Devices>(context).getDevices;

    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5 / 1.15,
      ),
      children: _devices.map((device) => DeviceTile(device)).toList(),
    );
  }
}
