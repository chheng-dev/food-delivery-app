import 'package:flutter/material.dart';

class PromosItems extends StatelessWidget {
  final String logo;
  final String title;
  final String status;
  final String titleHeading;
  final String description;

  const PromosItems({
    super.key,
    required this.logo,
    required this.title,
    required this.status,
    required this.titleHeading,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.white,
                    width: 30,
                    child: Image.asset(logo),
                  ),
                  SizedBox(width: 10),
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  Text(
                    status,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.redAccent,
                    ),
                  )
                ],
              ),
              SizedBox(height: 5),
              ExpansionTile(
                title: Text(
                  titleHeading,
                  style: Theme.of(context).textTheme.headline1?.copyWith(
                        fontSize: 16,
                        color: Colors.black.withOpacity(.6),
                      ),
                ),
                subtitle: Text(
                  'view all',
                  style: Theme.of(context).textTheme.headline2,
                ),
                children: [
                  ListTile(
                    title: Text(description),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
