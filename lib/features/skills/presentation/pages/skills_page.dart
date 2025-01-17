import 'package:flutter/material.dart';
import '../../../../core/widgets/responsive_wrapper.dart';
import '../widgets/skill_category.dart';
import '../../domain/models/skill.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
      ),
      body: ResponsiveWrapper(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Technical Skills',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 24),
              SkillCategory(
                title: 'Frontend Development',
                skills: [
                  Skill(
                    name: 'Flutter',
                    proficiency: 0.9,
                    category: 'Frontend',
                    iconPath: 'assets/icons/flutter.png',
                  ),
                  Skill(
                    name: 'React',
                    proficiency: 0.85,
                    category: 'Frontend',
                    iconPath: 'assets/icons/react.png',
                  ),
                  Skill(
                    name: 'HTML/CSS',
                    proficiency: 0.9,
                    category: 'Frontend',
                    iconPath: 'assets/icons/html.png',
                  ),
                  Skill(
                    name: 'JavaScript',
                    proficiency: 0.85,
                    category: 'Frontend',
                    iconPath: 'assets/icons/javascript.png',
                  ),
                ],
              ),
              const SizedBox(height: 32),
              SkillCategory(
                title: 'Backend Development',
                skills: [
                  Skill(
                    name: 'Node.js',
                    proficiency: 0.8,
                    category: 'Backend',
                    iconPath: 'assets/icons/nodejs.png',
                  ),
                  Skill(
                    name: 'Python',
                    proficiency: 0.85,
                    category: 'Backend',
                    iconPath: 'assets/icons/python.png',
                  ),
                  Skill(
                    name: 'SQL',
                    proficiency: 0.8,
                    category: 'Backend',
                    iconPath: 'assets/icons/sql.png',
                  ),
                  Skill(
                    name: 'MongoDB',
                    proficiency: 0.75,
                    category: 'Backend',
                    iconPath: 'assets/icons/mongodb.png',
                  ),
                ],
              ),
              const SizedBox(height: 32),
              SkillCategory(
                title: 'Other Skills',
                skills: [
                  Skill(
                    name: 'Git',
                    proficiency: 0.85,
                    category: 'Tools',
                    iconPath: 'assets/icons/git.png',
                  ),
                  Skill(
                    name: 'Docker',
                    proficiency: 0.7,
                    category: 'Tools',
                    iconPath: 'assets/icons/docker.png',
                  ),
                  Skill(
                    name: 'AWS',
                    proficiency: 0.75,
                    category: 'Cloud',
                    iconPath: 'assets/icons/aws.png',
                  ),
                  Skill(
                    name: 'CI/CD',
                    proficiency: 0.75,
                    category: 'DevOps',
                    iconPath: 'assets/icons/cicd.png',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
