import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventory_management/ui/components/choose_one_form.dart';
import 'package:inventory_management/ui/components/error_pop_up.dart';
import 'package:inventory_management/ui/components/input_field.dart';
import 'package:inventory_management/ui/components_new/rounded_button.dart';
import 'package:inventory_management/ui/login_page/controller/login_page_controller.dart';
import 'package:provider/provider.dart';

enum UserType {
  worker,
  owner,
}

extension Type on UserType {
  int get number {
    switch (this) {
      case UserType.worker:
        return 1;

      case UserType.owner:
        return 0;
    }
    return -1;
  }
}

class SignUpPage extends StatefulWidget {
  static const routeName = '/loginPage';
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginPageController>(
          lazy: false,
          create: (context) => LoginPageController(
              onError: (val) async {
                print('kkk');
                print(val);
                await ErrorDialog.show(
                  context,
                  onTap: () {},
                  list: val,
                );
              },
              accountRepository: context.read(),
              appNavigator: context.read()),
        )
      ],
      child: SignUpPage(),
    );
  }

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>
    with AutomaticKeepAliveClientMixin {
  static final _formKey = GlobalKey<FormState>();
  bool animate = false;

  @override
  void initState() {
    super.initState();

    Future<int>.delayed(const Duration(milliseconds: 500)).then(
      (_) => setState(
        () {
          animate = true;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final controller = context.watch<LoginPageController>();
    final vm = controller.value;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfff2f3f7),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.topRight,
                radius: 1.5,
                colors: <Color>[
                  Color(0xff33CEFF),
                  Color(0xff30AAFF),
                ],
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.22,
              width: MediaQuery.of(context).size.width * 0.36,
              child: SvgPicture.asset(
                'images/analytics.svg',
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _NextButtonAndAgreement(
              onTap: vm.valid ? controller.login : null,
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            bottom: animate ? 56 * 2.0 : -56 * 8.0,
            left: 16,
            right: 16,
            child: Container(
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 9,
                    blurRadius: 8,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom / 2.4),
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: CustomScrollView(
                      slivers: [
                        SliverList(
                          delegate: SliverChildListDelegate(
                            [
                              BuildInputField(
                                initialString: vm?.userName ?? '',
                                label: 'username',
                                icon: const Icon(Icons.person),
                                validator: controller.validationMessageUserName,
                                onChanged: controller.usernameChanged,
                              ),
                              BuildInputField(
                                  label: 'Email',
                                  initialString: vm?.email ?? "",
                                  icon: const Icon(Icons.email),
                                  onChanged: controller.emailChanged,
                                  validator: controller.validationMessageEmail),
                              BuildInputField(
                                label: 'phoneNumber',
                                initialString:
                                    vm?.contactNumber?.toString() ?? "",
                                type: TextInputType.number,
                                icon: const Icon(Icons.phone),
                                onChanged: controller.phoneNumberChanged,
                                validator:
                                    controller.validationMessageContactNumber,
                              ),
                              BuildInputField(
                                  label: 'password',
                                  initialString: vm?.password?.toString() ?? "",
                                  icon: const Icon(Icons.remove_red_eye),
                                  onChanged: controller.passwordChanged,
                                  validator:
                                      controller.validationMessagePassword),
                              BuildInputField(
                                initialString:
                                    vm?.confirmPassword?.toString() ?? "",
                                label: 'confirm password',
                                icon: const Icon(Icons.remove_red_eye),
                                onChanged: controller.confirmPasswordChanged,
                                validator:
                                    controller.validationMessageConfirmPassword,
                              ),
                              BuildOneChooser(
                                options: const [
                                  'What primary school did you attend?',
                                  'What were the last four digits of your childhood telephone number?',
                                  'In what town or city did your parents meet?',
                                  'What time of the day was your first child born?',
                                  'What was the house number and street name you lived in as a child?',
                                  'What were the last four digits of your childhood telephone number?'
                                ],
                                label: 'Recovery Question',
                                chooseTitle: 'Recovery Question',
                                value: controller.recoveryQuestionChanged,
                              ),
                              BuildInputField(
                                label: 'recovery_answer',
                                icon: const Icon(Icons.remove_red_eye),
                                onChanged: controller.recoveryAnswerChanged,
                                validator:
                                    controller.validationMessageRecoveryAnswer,
                              ),
                              BuildOneChooser(
                                options: const ['Owner', 'Worker'],
                                label: 'User type',
                                chooseTitle: 'Choose one',
                                value: (value) {
                                  setState(
                                    () {
                                      if (value.compareTo('Owner') == 0) {
                                        controller.userTypeChanged(0);
                                      } else if (value.compareTo('Worker') ==
                                          0) {
                                        controller.userTypeChanged(1);
                                      }
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        const SliverPadding(
                          padding: EdgeInsets.all(
                            16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (vm.loading)
            const Center(
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _NextButtonAndAgreement extends StatelessWidget {
  const _NextButtonAndAgreement({Key key, @required this.onTap})
      : super(key: key);
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const _BottomCheckBox(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:28.0),
            child: RoundedButton(onTap: onTap, title: 'Sign up'),
          )
        ],
      ),
    );
  }
}


class _BottomCheckBox extends StatelessWidget {
  const _BottomCheckBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Checkbox(
          activeColor: Theme.of(context).accentColor,
          value: false,
          onChanged: (bool value) {},
        ),
        const Text(
          'I agree to the T&C and Privacy Policy',
        ),
      ],
    );
  }
}


