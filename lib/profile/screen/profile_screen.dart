import 'package:eunice_repository/repository.dart';
import 'package:eunice_template/profile/bloc/cubit/profile_cubit.dart';
import 'package:eunice_template/profile/widget/animated_background.dart';
import 'package:eunice_template/profile/widget/profile_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProfileCubit(
        profileRepository: GetIt.I<ProfileRepository>(),
      ),
      child: Scaffold(
        body: Stack(
          children: const [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: AnimatedBackground(),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: ProfileContent(),
            )
          ],
        ),
      ),
    );
  }
}
