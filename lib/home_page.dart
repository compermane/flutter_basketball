import 'package:flutter/material.dart';

import 'l10n/app_localizations.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int timeAScore      = 0;
  int lastAScore      = 0;
  bool voltarAEnabled = false;

  int timeBScore      = 0;
  int lastBScore      = 0;
  bool voltarBEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.title),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Time A
            ElevatedButton(
              onPressed: () {
                setState(() {
                  timeAScore    += 1;
                  lastAScore     = 1;
                  voltarAEnabled = true;
                });
              },
              child: Text(AppLocalizations.of(context)!.free_throw),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  timeAScore    += 2;
                  lastAScore     = 2;
                  voltarAEnabled = true;
                });
              },
              child: Text(AppLocalizations.of(context)!.two_points),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  timeAScore    += 3;
                  lastAScore     = 3;
                  voltarAEnabled = true;
                });
              },
              child: Text(AppLocalizations.of(context)!.three_points),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: voltarAEnabled ? () {
                setState(() {
                  timeAScore -= lastAScore;
                  voltarAEnabled = false;
                });
              } : null,
              child: Text(AppLocalizations.of(context)!.revert_points),
            ),
            Text(
              timeAScore.toString(),
              style: const TextStyle(fontSize: 45),
            ),

            const SizedBox(height: 40),

            // Time B
            Text(
              timeBScore.toString(),
              style: const TextStyle(fontSize: 45),
            ),
            ElevatedButton(
              onPressed: voltarBEnabled ? () {
                setState(() {
                  timeBScore -= lastBScore;
                  voltarBEnabled = false;
                });
              } : null,
              child: Text(AppLocalizations.of(context)!.revert_points),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  timeBScore    += 3;
                  lastBScore     = 3;
                  voltarBEnabled = true;
                });
              },
              child: Text(AppLocalizations.of(context)!.three_points),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  timeBScore    += 2;
                  lastBScore     = 2;
                  voltarBEnabled = true;
                });
              },
              child: Text(AppLocalizations.of(context)!.two_points),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  timeBScore += 1;
                  lastBScore = 1;
                  voltarBEnabled = true;
                });
              },
              child: Text(AppLocalizations.of(context)!.free_throw),
            ),
          ],
        ),
      ),
    );
  }
}