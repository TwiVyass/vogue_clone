import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share/share.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 251, 249, 249),
      title: const Center(
        child: Text(
          'VOGUE',
          style: TextStyle(
            fontFamily: 'Vogue',
            fontSize: 60,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      bottom: const TabBar(
        indicatorColor: Color.fromARGB(255, 5, 0, 0),
        labelColor: Color.fromARGB(255, 8, 0, 0),
        unselectedLabelColor: Color.fromARGB(255, 10, 0, 0),
        tabs: [
          Tab(child: Text('Home', style: TextStyle(fontFamily: 'Vogue'))),
          Tab(child: Text('Trends', style: TextStyle(fontFamily: 'Vogue'))),
          Tab(child: Text('Collections', style: TextStyle(fontFamily: 'Vogue'))),
          Tab(child: Text('Events', style: TextStyle(fontFamily: 'Vogue'))),
          Tab(child: Text('Beauty', style: TextStyle(fontFamily: 'Vogue'))),
          Tab(child: Text('Fashion', style: TextStyle(fontFamily: 'Vogue'))),
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.search, color: Colors.black),
          onPressed: () {
            showSearch(
              context: context,
              delegate: CustomSearchDelegate(),
            );
          },
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.user, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UserProfileScreen()),
            );
          },
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.cog, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SettingsScreen()),
            );
          },
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.bell, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NotificationsScreen()),
            );
          },
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.share, color: Colors.black),
          onPressed: () {
            Share.share('Check out this amazing app!');
          },
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.questionCircle, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HelpScreen()),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(140.0); // Height including TabBar
}

// Custom Search Delegate
class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    // Actions for the app bar, such as clear button
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Leading icon for the search bar, such as back button
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Show search results here
    return ListView(
      children: [
        ListTile(title: Text('Result 1 for "$query"')),
        // Add more results
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Show search suggestions here
    return ListView(
      children: [
        ListTile(
          title: const Text('Suggestion 1'),
          onTap: () {
            query = 'Suggestion 1';
            showResults(context);
          },
        ),
        // Add more suggestions
      ],
    );
  }

  @override
  PreferredSizeWidget? buildBottom(BuildContext context) {
    // Add a bottom section, e.g., a clear button
    return PreferredSize(
      preferredSize: const Size.fromHeight(50.0),
      child: Container(
        color: Colors.grey[200],
        child: Center(
          child: TextButton(
            onPressed: () {
              query = '';
              showSuggestions(context);
            },
            child: const Text('Clear'),
          ),
        ),
      ),
    );
  }
}

// Placeholder screens for navigation
class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Profile')),
      body: const Center(child: Text('User profile content goes here')),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: const Center(child: Text('Settings content goes here')),
    );
  }
}

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notifications')),
      body: const Center(child: Text('Notifications content goes here')),
    );
  }
}

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Help')),
      body: const Center(child: Text('Help content goes here')),
    );
  }
}
