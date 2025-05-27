import 'package:flutter/material.dart';
import 'package:labwork/widgets/adaptive/adaptive_block.dart';
import 'package:labwork/widgets/additions_tools/status_block.dart';
import 'package:labwork/widgets/additions_tools/device_text_block.dart';

class DeviceBlock extends StatelessWidget{
  const DeviceBlock({super.key});
  
  
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: AdaptiveBlock(
        children: [
          AdaptiveBlock(
            children: [
              Image.asset('assets/images/device.jpg', width: 100, height: 100),
              const DeviceTextBlock(
                title: 'Device Name',
                description: 'This is a sample device description that can be used to provide more information about the device.',
              ),
            ],
          ),
          Center(
            child: StatusBlock(
              state: false, 
              title: 'offline'
              ),
          )
          ]
        ),
    );
  }
}