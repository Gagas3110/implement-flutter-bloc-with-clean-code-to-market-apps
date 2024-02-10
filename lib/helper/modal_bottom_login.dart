import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/helper/custom_button.dart';
import 'package:news_app/helper/custom_textfield.dart';
import 'package:news_app/helper/extension.dart';
import 'package:news_app/model/login.dart';
import 'package:news_app/bloc/login/login_bloc.dart';
import 'package:news_app/bloc/login/login_event.dart';
import 'package:news_app/bloc/login/login_state.dart';
import 'package:news_app/ui/home/home_provider/home_provider.dart';


class NeedLogin extends StatefulWidget {
  final String? mode;
  const NeedLogin({super.key, this.mode});

  @override
  State<NeedLogin> createState() => _NeedLoginState();
}

class _NeedLoginState extends State<NeedLogin> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(),
        ),
      ],
      child: ModContain(mode: widget.mode),
    );
  }
}

class ModContain extends StatefulWidget {
  final String? mode;
  const ModContain({super.key, this.mode});

  @override
  State<ModContain> createState() => _ModContainState();
}

class _ModContainState extends State<ModContain> {
  TextEditingController usernameCo = TextEditingController();
  TextEditingController passwordCo = TextEditingController();
  bool obsecure = true;
  int count = 2;
  final key = GlobalKey<FormState>();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bloc(CheckLogin());
    });
    super.initState();
  }

  bloc(dynamic event) {
    BlocProvider.of<LoginBloc>(context).add(event);
  }

  bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(p);

    return regExp.hasMatch(em);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LoginBloc, LoginState>(
          listener: (context, state) async {
            if (state is IsLoginState) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeUi()),
              );
            }
            if (state is LoginSuccess) {
              context.succesSnackBar('Berhasil Login');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeUi()),
              );
            }
            if (state is LoginFailed) {
              context.failSnackbar(state.error!);
              Navigator.pop(context);
            }
          },
        ),
      ],
      child: Form(
        key: key,
        child: Container(
          padding: EdgeInsets.only(
              left: context.deviceWidth(0.0555555555555556),
              right: context.deviceWidth(0.0555555555555556),
              top: context.deviceHeight(0.02)),
          height: context.deviceHeight(0.7),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: context.deviceHeight(0.045),
                ),
                Center(
                    child: Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: context.deviceHeight(0.045),
                ),
                CustomFormTextField(
                  hint: 'Username',
                  enabled: true,
                  controller: usernameCo,
                  maxLength: 30,
                  inputType: TextInputType.emailAddress,
                  validator: (value) =>
                      (value!.isEmpty) ? "Silahkan isi username" : null,
                ),
                SizedBox(
                  height: context.deviceHeight(0.0125),
                ),
                Visibility(
                  visible: widget.mode == 'SIGNIN',
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade300,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                obsecure = !obsecure;
                              });
                            },
                            child: Icon(
                              obsecure
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey,
                            ),
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular((4)),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular((4)),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                        obscureText: obsecure,
                        controller: passwordCo,
                        validator: (value) =>
                            (value!.isEmpty) ? "Silahkan isi password" : null,
                      ),
                      //SizedBox(height: context.deviceHeight(0.058)),
                    ],
                  ),
                ),
                SizedBox(height: context.deviceHeight(0.058)),
                Center(
                  child: Column(
                    children: [
                      confirmMarconSignIn(),
                      widget.mode == 'SIGNIN'
                          ? SizedBox(
                              height: context.deviceHeight(0.0175),
                            )
                          : SizedBox(
                              height: context.deviceHeight(0.0275),
                            ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget confirmMarconSignIn() {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        if (state is LoginInProgress) {
          return Center(
              child: CircularProgressIndicator(
            color: Colors.blue,
          ));
        } else {
          return CustomButtonWithFreeColor(
            widthrectang: 2.0,
            colorRectang: Colors.black,
            buttonHeight: context.deviceHeight(0.0625),
            buttonWidth: context.deviceWidth(0.2777777777777778),
            radius: 10,
            fontWeight: FontWeight.w700,
            title: widget.mode == 'SIGNIN' ? 'Sign in' : 'Submit',
            fontSizel: context.scaleFont(14),
            color: Colors.grey.shade200,
            textColor: Colors.black,
            onTap: () {
              if (key.currentState!.validate()) {
                if (widget.mode == 'SIGNIN') {
                  LoginReq body = LoginReq();
                  body.username = usernameCo.text;
                  body.password = passwordCo.text;

                  bloc(LoginSubmitted(body));
                } else {
                  null;
                }
              }
            },
          );
        }
      },
    );
  }
}
