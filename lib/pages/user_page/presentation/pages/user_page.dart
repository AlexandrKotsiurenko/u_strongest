import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_strongest/blocs/auth_bloc/auth_bloc.dart';
import 'package:u_strongest/blocs/profile_bloc/profile_bloc.dart';
import 'package:u_strongest/blocs/profile_bloc/profile_events.dart';
import 'package:u_strongest/pages/user_page/presentation/widgets/user_interface/user_interface.dart';
import 'package:u_strongest/pages/user_page/presentation/widgets/user_results/user_results.dart';
import 'package:u_strongest/src/res/ui/app_colors.dart';
import 'package:u_strongest/src/res/widgets/bottom_nav_bar.dart';
import 'package:u_strongest/src/res/widgets/user/user_model.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(null)
        ..add(
          FetchProfileEvent(
              uId: context.read<AuthBloc>().state.user!.user!.uid),
        ),
      child: Scaffold(
        backgroundColor: AppColors.whiteThemeBG,
        body: SingleChildScrollView(
          child: BlocBuilder<ProfileBloc, UserModel?>(
            builder: (context, state) {
              if (state == null) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Container(
                color: AppColors.whiteThemeMain,
                child: Column(
                  children: [
                    //USER INTERFACE
                    UserInterface(state: state),

                    //USER RESULTS
                    UserResults(state: state),
                  ],
                ),
              );
            },
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
