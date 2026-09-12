import 'package:doctor_hunt/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class DoctorLoaction extends StatelessWidget {
  final double latitude;
  final double longitude;

  const DoctorLoaction({
    super.key,
    this.latitude = 30.0444, 
    this.longitude = 31.2357, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: ShapeDecoration(
        color: AppColors.colorWhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        shadows: [
          BoxShadow(
            color: AppColors.colorShadowBlack8,
            blurRadius: 30,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: FlutterMap(
          options: MapOptions(
            initialCenter: LatLng(latitude, longitude),
            initialZoom: 15.0,
            interactionOptions: const InteractionOptions(
              flags: InteractiveFlag.none,
            ),
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.doctor_hunt',
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(latitude, longitude),
                  width: 40,
                  height: 40,
                  child: Icon(
                    Icons.location_on,
                    color: AppColors.colorDarkGreen,
                    size: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
