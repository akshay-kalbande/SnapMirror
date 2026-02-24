import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/app_strings.dart';
import '../../core/failures/failure.dart';
import '../../core/theme/app_colors.dart';
import '../../core/utils/utils.dart';
import '../../domain/entities/file_upload_result_entity.dart';
import '../../domain/entities/registration_status_entity.dart';
import '../../domain/entities/user_entity.dart';
import '../../core/utils/dimensions.dart';
import '../bloc/auth/auth_bloc.dart';
import '../bloc/register/register_bloc.dart';
import '../widgets/text_field_input.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController bioController = TextEditingController();

  bool isLoading = false;
  bool sign_up_error = false;
  String res = '';

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passController.dispose();
    usernameController.dispose();
    bioController.dispose();
  }

  void selectImage() async {
    final im = await pickImageFile(ImageSource.gallery, context);
    if (im != null) {
      context.read<RegisterBloc>().add(RegisterEvent.imageChanged(im));
    }
  }

  Future<void> signUp() async {
    context.read<RegisterBloc>().add(
      RegisterEvent.submitted(
        username: usernameController.text,
        email: emailController.text,
        bio: bioController.text,
        password: passController.text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    final bloc = context.read<RegisterBloc>();
    return Scaffold(
      body: BlocConsumer<RegisterBloc, RegisterState>(
        listener: (context, state) async {
          if (state.regStatus != null) {
            state.regStatus!.whenOrNull(
              savedProfile: (user) async {
                await Future.delayed(const Duration(milliseconds: 300));
                context.read<AuthBloc>().add(AuthEvent.statusChecked(user.uid));
                // context.go('/');
              },
            );
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Stack(
              children: [
                Container(
                  padding: screenWidth >= webScreenSize
                      ? EdgeInsets.symmetric(horizontal: screenWidth * 0.3)
                      : const EdgeInsets.symmetric(horizontal: 32),
                  width: double.infinity,
                  child: CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    slivers: [
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Form(
                          key: state.formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 1,
                                fit: FlexFit.loose,
                                child: Container(),
                              ),
                              SvgPicture.asset(
                                'assets/images/ic_snapmirror.svg',
                                height: 120,
                              ),
                              const SizedBox(height: 12),
                              InkWell(
                                onTap: selectImage,
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                child: Stack(
                                  children: [
                                    state.photo.value == null
                                        ? const CircleAvatar(
                                            radius: 64,
                                            backgroundImage: AssetImage(
                                              'assets/images/default_profile.png',
                                            ),
                                            backgroundColor: Colors.transparent,
                                          )
                                        : CircleAvatar(
                                            radius: 64,
                                            backgroundImage: MemoryImage(
                                              state.photo.value!.bytes,
                                            ),
                                            backgroundColor: Colors.transparent,
                                          ),
                                    Positioned(
                                      bottom: -10,
                                      right: -10,
                                      child: IconButton(
                                        onPressed: null,
                                        icon: const Icon(
                                          Icons.add_a_photo,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (state.photo.displayError != null)
                                const Text(
                                  'Please select a profile photo',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),

                              // CircleAvatar(
                              //   child: SvgPicture.asset("assets/images/profile.svg"),
                              //   ),
                              const SizedBox(height: 24),

                              TextFieldInput(
                                textEditingController: usernameController,
                                hintText: AppStrings.enterUsername,
                                textInputType: TextInputType.text,
                                onChanged: (value) => bloc.add(
                                  RegisterEvent.usernameChanged(value),
                                ),
                                validator: (value) => state.username
                                    .validator(value ?? '')
                                    ?.message,
                              ),

                              const SizedBox(height: 24),
                              TextFieldInput(
                                textEditingController: emailController,
                                hintText: AppStrings.enterEmail,
                                textInputType: TextInputType.emailAddress,
                                onChanged: (value) =>
                                    bloc.add(RegisterEvent.emailChanged(value)),
                                validator: (value) =>
                                    state.email.validator(value ?? '')?.message,
                              ),
                              const SizedBox(height: 24),
                              TextFieldInput(
                                textEditingController: passController,
                                hintText: AppStrings.enterPass,
                                textInputType: TextInputType.emailAddress,
                                onChanged: (value) => bloc.add(
                                  RegisterEvent.passwordChanged(value),
                                ),
                                isPass: true,
                                validator: (value) => state.password
                                    .validator(value ?? '')
                                    ?.message,
                              ),
                              const SizedBox(height: 24),
                              TextFieldInput(
                                textEditingController: bioController,
                                hintText: AppStrings.enterBio,
                                textInputType: TextInputType.text,
                                onChanged: (value) =>
                                    bloc.add(RegisterEvent.bioChanged(value)),
                                validator: (value) =>
                                    state.bio.validator(value ?? '')?.message,
                              ),
                              const SizedBox(height: 24),

                              Container(
                                height: sign_up_error ? 24 : 0,
                                alignment: Alignment.topRight,
                                child: Text(
                                  res.toString(),
                                  style: const TextStyle(color: Colors.red),
                                ),
                              ),

                              InkWell(
                                onTap: signUp,
                                child: Container(
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 12,
                                  ),
                                  decoration: const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4),
                                      ),
                                    ),
                                    color: AppColors.blueColor,
                                  ),
                                  child: isLoading
                                      ? const CircularProgressIndicator(
                                          color: Colors.white,
                                          // backgroundColor: Colors.white,
                                        )
                                      : const Text(
                                          AppStrings.signUp,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                ),
                              ),

                              const SizedBox(height: 12),

                              Flexible(
                                flex: 1,
                                fit: FlexFit.loose,
                                child: Container(),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8,
                                    ),
                                    child: const Text(
                                      AppStrings.alreadyHaveAcc,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => context.pop(),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 8,
                                      ),
                                      child: const Text(
                                        AppStrings.login,
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
                      ),
                    ],
                  ),
                ),
                // if (state.status == FormzSubmissionStatus.inProgress) ...[
                //   ModalBarrier(dismissible: false, color: Colors.black45),
                //   Center(child: const CircularProgressIndicator()),
                // ] else
                if (state.regStatus != null)
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                    child: Container(
                      color: Colors.black.withOpacity(0.3),
                      child: Center(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width / 2,
                          padding: EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(
                              0.05,
                            ), // Subtle surface
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white10),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            spacing: 8,
                            children: [
                              // ModalBarrier(
                              //   dismissible: false,
                              //   color: Colors.black45,
                              // ),
                              const CircularProgressIndicator(),
                              Center(
                                child: state.regStatus!.when(
                                  creatingProfile: () =>
                                      Text('Creating Account ...'),
                                  profileCreated: () {
                                    return Text('Account created!...');
                                  },
                                  fileUpload: (FileUploadResultEntity fileUpload) {
                                    return fileUpload.when(
                                      started: () =>
                                          Text('Uploading profile picture'),
                                      progress: (progress) => Text(
                                        'Uploading profile picture ${(progress * 100).toInt()} %',
                                      ),
                                      success: (path) => Text(
                                        'Updated profile picture. Saving User Info',
                                      ),
                                    );
                                  },
                                  savedProfile: (UserEntity user) {
                                    return Text(
                                      'User ${user.username} registered successfully!',
                                    );
                                  },
                                  error: (Failure failure) {
                                    return Text(
                                      'Something went wrong while creating profile. ${failure.message}',
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
