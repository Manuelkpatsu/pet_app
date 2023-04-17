import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pet_app/models/location.dart';
import 'package:pet_app/screen/main/settings/widget/section_text.dart';
import 'package:pet_app/screen/widget/text_input_field.dart';
import 'package:pet_app/theme/custom_color.dart';

import 'location_tile.dart';

class LocationSearch extends StatefulWidget {

  const LocationSearch({
    Key? key
  }) : super(key: key);

  @override
  State<LocationSearch> createState() => _LocationSearchState();
}

class _LocationSearchState extends State<LocationSearch> {
  final TextEditingController _searchController = TextEditingController();
  final List<Location> _searchedLocations = [
    const Location(
      id: 1,
      title: 'Track your Location',
      description: 'Automatically selects your current location',
    ),
    const Location(
      id: 2,
      title: 'Track your Location',
      description: 'Automatically selects your current location',
    ),
    const Location(
      id: 3,
      title: 'Track your Location',
      description: 'Automatically selects your current location',
    ),
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 4,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: CustomColor.greyContainerColor,
            ),
          ),
        ),
        const SizedBox(height: 20),
        const SectionText(section: 'Location'),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: TextInputField(
            controller: _searchController,
            hintText: 'Search your location',
            prefixIcon: const Icon(IconlyLight.search, color: CustomColor.hintColor),
            onChanged: (value) {
              setState(() {});
            },
          ),
        ),
        const SizedBox(height: 24),
        const Divider(
          height: 0,
          color: CustomColor.textFieldBorderColor,
          thickness: 1,
        ),
        _searchController.text.isEmpty
            ? const SizedBox.shrink()
            : Expanded(
                child: ListView.separated(
                  itemCount: _searchedLocations.length,
                  separatorBuilder: (context, index) => const Divider(
                    height: 0,
                    color: CustomColor.textFieldBorderColor,
                    thickness: 0.5,
                  ),
                  itemBuilder: (ctx, index) {
                    Location location = _searchedLocations[index];

                    return LocationTile(location: location, onPressed: () {});
                  },
                ),
              ),
      ],
    );
  }
}
