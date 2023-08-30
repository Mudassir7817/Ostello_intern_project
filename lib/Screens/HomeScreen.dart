import 'package:flutter/material.dart';
import 'package:ostello_intern_project2/utils/Colors.dart';

import '../utils/Items.dart';
import '../utils/SortOption.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // variable for searching
  String searchTerm = '';
  // For titles of each item
  final List<String> itemTitles = [
    'Metro Coaching Center',
    'Star Coaching Center',
    'Proffesor Coaching',
    'New Coaching Center',
    'Next Coaching Center',
    'Nature Coaching',
    'Second Coaching',
    'Smart Coaching Center',
    'Sweet Coaching Center',
    // Add more titles as needed
  ];
  //Rating for sort out the coachings
  final List<double> rating = [
    5.0,
    1.2,
    2.0,
    4.2,
    3.0,
    2.2,
    0.4,
    2.2,
    4.5,
  ];
  String selectedSortOption = '';
  // for popup menu
  List<SortOption> sortOptions = [
    SortOption('Relevance', 'Relevance'),
    SortOption('Price', 'Price'),
    SortOption('Distance', 'Distance'),
    SortOption('Rating', 'Rating'),
  ];
  @override
  Widget build(BuildContext context) {
    // Filter the item titles based on the search term
    List<String> filteredItems = itemTitles
        .where(
            (title) => title.toLowerCase().contains(searchTerm.toLowerCase()))
        .toList();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 10, right: 14),
        child: Column(
          children: [
            // Header section with back button and title
            Padding(
              padding: const EdgeInsets.only(top: 34.0),
              child: Row(
                children: [
                  SizedBox(
                      height: 48,
                      width: 48,
                      child: Image.asset(
                          'assets/images/icons8-back-button-64.png')),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'For JEE-Mains',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            // Search bar
            TextFormField(
              onChanged: (value) {
                setState(() {
                  searchTerm = value;
                });
              },
              decoration: InputDecoration(
                  hintText: 'Search for UPSC Coaching',
                  suffixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            const SizedBox(
              height: 12,
            ),
            // Row containing filters, sorting options, and other actions
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Filter button
                Items.items(
                    'Filters', 'assets/images/icons8-filter-48.png', () {}),
                // Sort button with popup menu for selecting sorting option
                Items.items('Sort', 'assets/images/icons8-double-down-32.png',
                    () {
                  showMenu(
                      context: context,
                      position: const RelativeRect.fromLTRB(0, 0, 0, 0),
                      items: sortOptions.map((option) {
                        return PopupMenuItem<String>(
                          value: option.value,
                          child: RadioListTile<String>(
                            title: Text(option.label),
                            value: option.value,
                            groupValue: selectedSortOption,
                            onChanged: (value) {
                              setState(() {
                                selectedSortOption = value!;
                              });
                              Navigator.pop(context);
                            },
                          ),
                        );
                      }).toList());
                }),
                // Filter button for distance
                Items.items('<2km', null, () {}),
                // Filter button for JEE
                Items.items('JEE', null, () {}),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            // List of coaching center items
            Expanded(
              child: ListView.builder(
                itemCount: filteredItems.length,
                itemBuilder: (context, index) {
                  return Items.bodyItem(filteredItems[index], rating[index],
                      'assets/images/coaching-class-3.jpg', context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
