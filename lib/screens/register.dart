import 'package:dtb/screens/components/button.dart';
import 'package:flutter/material.dart';

class RegisterComponent extends StatefulWidget {
  const RegisterComponent({Key? key}) : super(key: key);
  @override
  State<RegisterComponent> createState() => _RegisterComponentState();
}

class _RegisterComponentState extends State<RegisterComponent> {
  String selectedCountry = 'Kenya';
  String selectedCountryCode = '+254';
  final List<Map<String, String>> countries = [
    {'name': 'Kenya', 'code': '+254'},
    {'name': 'USA', 'code': '+1'},
    // Add more countries as needed
  ];
  final List<String> languages = [
    'English',
    'Kiswahili',
    'French',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Welcome to DTB mobile banking'),
        const Text('Please select your country and language to continue'),
        const SizedBox(height: 16.0),
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            labelText: 'Country',
            prefixIcon: Icon(Icons.flag),
          ),
          value: selectedCountry,
          items: countries.map((country) {
            return DropdownMenuItem<String>(
              value: country['name'],
              child: Text(country['name'] ?? ''),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedCountry = value!;
              selectedCountryCode = countries
                  .firstWhere((country) => country['name'] == value)['code']!;
            });
          },
        ),
        const SizedBox(height: 16.0),
        // Add the language dropdown
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            labelText: 'Language',
            prefixIcon: Icon(Icons.language),
          ),
          value: languages.first,
          items: languages.map((language) {
            return DropdownMenuItem<String>(
              value: language,
              child: Text(language),
            );
          }).toList(),
          onChanged: (value) {
            // Implement the onChanged method
          },
        ),
        const SizedBox(height: 16.0),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Phone number',
            prefixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(selectedCountryCode),
                const SizedBox(width: 8.0),
              ],
            ),
          ),
          keyboardType: TextInputType.phone,
        ),
        // Add the button  that spans the full width of the screen
        const SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () {
            // Implement the onPressed method
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFE71B3D),
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            minimumSize: const Size(double.infinity, 48.0),
          ),
          child: const Text(
            'Next',
            style: TextStyle(color: Colors.white),
          ),
        ),
        //  CustomButton(
        //   onPressed: () {
        //     // Implement the onPressed method
        //   },
        //   text: 'Next',
        // ),
      ],
    );
  }
}
