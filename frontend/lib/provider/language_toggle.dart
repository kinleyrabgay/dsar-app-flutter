import 'package:frontend/provider/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

class LanguageToggle extends StatefulWidget {
  const LanguageToggle({super.key});

  @override
  State<LanguageToggle> createState() => _LanguageToggleState();
}

class _LanguageToggleState extends State<LanguageToggle> {
  @override
  Widget build(BuildContext context) {
    return Consumer<EnglishState>(
      builder: (_, englishState, __) {
        return FlutterSwitch(
          width: 62.0,
          height: 26.0,
          valueFontSize: 14.0,
          value: englishState.isEnglishSelected,
          borderRadius: 30.0,
          activeText: 'ENG',
          activeTextColor: Colors.white,
          activeColor: const Color.fromARGB(255, 80, 79, 79).withOpacity(0.5),
          inactiveText: 'DZO',
          inactiveColor: Colors.orange,
          inactiveTextColor: Colors.white,
          padding: 1.5,
          showOnOff: true,
          onToggle: (val) {
            englishState.toggleLanguage();
          },
        );
      },
    );
  }
}
