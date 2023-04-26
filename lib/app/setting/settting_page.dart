import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:termproject/config/app_style.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _notificationEnabled = false;
  bool _darkModeEnabled = false;
  bool _autoSaveEnabled = false;
  bool _syncEnabled = false;
  SharedPreferences? prefs;

  @override
  void initState() {
    super.initState();
    getSetting();
  }

  Future getSetting() async {
    prefs = await SharedPreferences.getInstance();
    _notificationEnabled = prefs!.getBool('setting_notificationEnabled') ?? false;
    _darkModeEnabled = prefs!.getBool('setting_darkModeEnabled') ?? false;
    _autoSaveEnabled = prefs!.getBool('setting_autoSaveEnabled') ?? false;
    _syncEnabled = prefs!.getBool('setting_syncEnabled') ?? false;
    print('_notificationEnabled : $_notificationEnabled');
    print('_darkModeEnabled : $_darkModeEnabled');
    print('_autoSaveEnabled : $_autoSaveEnabled');
    print('_syncEnabled : $_syncEnabled');

    setState(() {});
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.yellow),
          useMaterial3: true,
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              '세팅하기',
            ),
          ),
          body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            children: [
              ..._buildSettingTitle(context),
              SwitchListTile(
                  title: Text('알림 가능'),
                  value: _notificationEnabled,
                  onChanged: (value) {
                    setState(() {
                      _notificationEnabled = value;
                      print('is null : ${prefs == null}');
                      prefs!.setBool('setting_notificationEnabled', value);
                    });
                  }),
              SwitchListTile(
                  title: Text('다크모드 가능'),
                  value: _darkModeEnabled,
                  onChanged: (value) {
                    setState(() {
                      _darkModeEnabled = value;
                      prefs!.setBool('setting_darkModeEnabled', value);
                    });
                  }),
              SwitchListTile(
                  title: Text('자동저장 가능'),
                  value: _autoSaveEnabled,
                  onChanged: (value) {
                    setState(() {
                      _autoSaveEnabled = value;
                      prefs?.setBool('setting_autoSaveEnabled', value);
                    });
                  }),
              _divider,
              SwitchListTile(
                  title: Text('동기화 가능'),
                  value: _syncEnabled,
                  onChanged: (value) {
                    setState(() {
                      _syncEnabled = value;
                      prefs?.setBool('setting_syncEnabled', value);
                    });
                  }),
            ],
          ),
        ));
  }
}

List<Widget> _buildSettingTitle(BuildContext context) => [
      Text(
        'Your App Settings',
        style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.green, fontWeight: FontWeight.w700),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        '여러분의 앱 세팅을 설정해보세요.',
        style: AppTextStyles.body1.copyWith(color: Colors.grey),
      ),
      SizedBox(
        height: 20,
      ),
      _divider
    ];

Divider _divider = Divider(
  height: 2,
  thickness: 2,
  color: Colors.grey,
);
