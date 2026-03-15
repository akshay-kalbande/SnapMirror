import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../common/widgets/screen_loader.dart';
import '../../core/app_service.dart';
import '../../core/utils/app_utils.dart';
import '../bloc/edit_profile/edit_profile_bloc.dart';
import '../bloc/profile/profile_bloc.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late final TextEditingController _nameController;
  late final TextEditingController _bioController;

  @override
  void initState() {
    super.initState();
    final user = AppService.instance.user;
    _nameController = TextEditingController(text: user.username);
    _bioController = TextEditingController(text: user.bio);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _bioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        backgroundColor: Colors.black,
      ),
      body: BlocConsumer<EditProfileBloc, EditProfileState>(
        listener: (context, state) {
          if (state.message == null) return;
          if (!state.message!.isError) {
            (context.read<ProfileBloc>() as OwnerProfileBloc).add(
              ProfileEvent.updated(state.user),
            );
            context.pop();
          }
          AppUtils.showNotification(context, state.message!);
        },
        builder: (context, state) {
          return ScreenLoader(
            isLoading: state.isLoading,
            widget: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _bioController,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      labelText: 'Bio',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      // onPressed: state is EditProfileLoading
                      //     ? null
                      //     : () {
                      //         context.read<EditProfileCubit>().updateProfile(
                      //           AppService.instance.user,
                      //           _nameController.text.trim(),
                      //           _bioController.text.trim(),
                      //         );
                      //       },
                      onPressed: () {
                        context.read<EditProfileBloc>().add(
                          EditProfileEvent.saved(
                            name: _nameController.text.trim(),
                            bio: _bioController.text.trim(),
                          ),
                        );
                      },
                      child: const Text('Save Changes'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
