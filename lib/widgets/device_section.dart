import 'package:flutter/material.dart';
import '../widgets/state_widget.dart';

class DeviceSection extends StatefulWidget {
  const DeviceSection({super.key, required this.deviceName, required this.shortDescription});
  final String deviceName;
  final String shortDescription;

  @override
  State<DeviceSection> createState() => _DeviceSectionState();
}

class _DeviceSectionState extends State<DeviceSection> {
  String deviceName = 'Device Name';
  String shortDescription = 'Short description of the device.';


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/device.jpg', width: 100, height: 100),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.deviceName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.shortDescription,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          StateWidget(title: "offline", state: false),
        ],
      ),
    );
  }
}