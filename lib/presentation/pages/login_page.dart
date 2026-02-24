import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../core/app_strings.dart';
import '../../core/route/routes.dart';
import '../../core/theme/app_colors.dart';
import '../../core/utils/dimensions.dart';
import '../bloc/auth/auth_bloc.dart';
import '../widgets/text_field_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passController.dispose();
  }

  void loginUser() async {
    context.read<AuthBloc>().add(
      AuthEvent.login(emailController.text, passController.text),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: screenWidth >= webScreenSize
              ? EdgeInsets.symmetric(horizontal: screenWidth * 0.3)
              : const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(flex: 1, child: Container()),
                    SvgPicture.asset(
                      'assets/images/ic_snapmirror.svg',
                      height: 128,
                    ),
                    const SizedBox(height: 64),
                    TextFieldInput(
                      textEditingController: emailController,
                      hintText: AppStrings.enterEmail,
                      textInputType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 24),
                    TextFieldInput(
                      textEditingController: passController,
                      hintText: AppStrings.enterPass,
                      textInputType: TextInputType.emailAddress,
                      isPass: true,
                    ),
                    const SizedBox(height: 24),
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        return state.whenOrNull(
                              unauthenticated: (loading, error) => error != null
                                  ? Container(
                                      height: 24,
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        error,
                                        style: const TextStyle(
                                          color: Colors.red,
                                        ),
                                      ),
                                    )
                                  : const SizedBox.shrink(),
                            ) ??
                            const SizedBox.shrink();
                      },
                    ),
                    InkWell(
                      onTap: loginUser,
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          color: AppColors.blueColor,
                        ),
                        child: const Text(
                          AppStrings.login,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Flexible(flex: 1, child: Container()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: const Text(AppStrings.dontHaveAcc),
                        ),
                        InkWell(
                          onTap: () => context.push(Routes.register),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: const Text(
                              AppStrings.signUp,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                //color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
