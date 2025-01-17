import 'package:flutter/material.dart';
import '../../domain/models/skill.dart';
import 'skill_card.dart';

class SkillCategory extends StatelessWidget {
  final String title;
  final List<Skill> skills;

  const SkillCategory({
    super.key,
    required this.title,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: skills.length,
          itemBuilder: (context, index) => SkillCard(skill: skills[index]),
        ),
      ],
    );
  }
}
