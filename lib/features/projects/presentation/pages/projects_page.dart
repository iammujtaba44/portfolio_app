import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            ProjectCard(
              title: 'Project 1',
              description: 'Description of project 1',
              technologies: ['Flutter', 'Dart', 'Firebase'],
              imageUrl: 'assets/images/project1.png', // Add your image
              projectUrl: 'https://github.com/yourusername/project1',
            ),
            const SizedBox(height: 16),
            ProjectCard(
              title: 'Project 2',
              description: 'Description of project 2',
              technologies: ['React', 'Node.js', 'MongoDB'],
              imageUrl: 'assets/images/project2.png', // Add your image
              projectUrl: 'https://github.com/yourusername/project2',
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> technologies;
  final String imageUrl;
  final String projectUrl;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.technologies,
    required this.imageUrl,
    required this.projectUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(description),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: technologies.map((tech) => Chip(label: Text(tech))).toList(),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    // Add URL launcher functionality
                  },
                  child: const Text('View Project'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
