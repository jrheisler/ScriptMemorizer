import 'package:flutter/material.dart';

import '../common/constants.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  void initState() {
    //autoLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, dimens) {
      return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: IconButton(
                  tooltip: 'Paste a Script?',
                  icon: const Icon(Icons.open_in_browser_sharp),
                  onPressed: () {},),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      tooltip: 'Full Clock',
                      icon: const Icon(Icons.punch_clock),
                      onPressed: () {
                        //WakelockPlus.enable();
                        //Get.to(() => ClockIt());
                      }),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 12.0),
                  child: IconButton(
                      tooltip: 'Load Last Script',
                      icon: const Icon(Icons.assistant_photo_sharp),
                      color: Colors.red,
                      onPressed: () async {
                        /*String? lastPlay =
                        LocalStorageHelper.getValue('currentPlay');
                        if (lastPlay != null) {
                          print(60);
                          await sendToClipboard(lastPlay);
                          Get.offAll(() => ScriptView('', '', false));
                        }*/
                      }),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 12.0),
                  child: IconButton(
                      tooltip: 'Download the Script Server',
                      icon: const Icon(Icons.download_sharp),
                      onPressed: () {
                        /*LaunchFile.launchUrl(
                            'https://drive.google.com/file/d/1yLzaN_rDjfXsku93zyoKQBU0R37FMb53/view?usp=sharing',
                            'ScriptServer.zip');
                        setState(() {});*/
                      }),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 12.0),
                  child: IconButton(
                    tooltip: 'Login',
                    icon: const Icon(Icons.login_sharp),
                    onPressed: () {}
                    //=> Get.to(() => LoginScreen()),
                  ),
                ),
              ],
              pinned: true,
              collapsedHeight: 80.0,
              expandedHeight: 400.0,
              floating: true,
              flexibleSpace: const FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: Image(
                  image: AssetImage("assets/coverScriptMemorizerDarkMode.jpg"),
                  fit: BoxFit.cover,
                ),
                title: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Script Memorizer II',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                InkWell(
                  onTap: () async {
                    /*if (Auth.to.publicId == '') {
                      await signInWithEmailAndPassword();
                    }
                    Get.to(PublicView());*/
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Container(
                      decoration: newBoxDec(boxColor: kPrimaryColor),
                      height: 200.0,
                      width: MediaQuery.of(context).size.width,
                      //decoration: newBoxDec(
                      //  boxColor: kPrimaryColor(),
                      //),
                      child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Press to Access the Public Library',
                              //style: myTxt(),
                            ),
                          )),
                    ),
                  ),
                ),

                SizedBox(
                  //color: kPrimaryColor(),
                  height: 60.0,
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                      child: Text(
                        'Copyright 2021-24 ALL RIGHTS RESERVED jrheisler@yahoo.com',
                      )),
                ),
              ], addAutomaticKeepAlives: true),
            ),
          ],
        ),
        //backgroundColor: Colors.grey[200],
      );
    });
  }
}

