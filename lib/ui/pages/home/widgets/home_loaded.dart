import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pimp_my_code/state/like/like_cubit.dart';
import 'package:pimp_my_code/state/retrieve_content/retrieve_content_cubit.dart';
import 'package:pimp_my_code/ui/pages/home/widgets/publications_loaded.dart';

import '../../../../domain/entities/content/content.dart';
import '../../../../ioc_container.dart';

class HomeLoaded extends StatelessWidget {
  final List<Content> publications;

  const HomeLoaded({
    Key? key,
    required this.publications,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Flexible(
            child: BlocProvider(
              create: (context) => LikeCubit(
                sl(),
                context.read<RetrieveContentCubit>(),
                null,
                sl(),
              ),
              child: PublicationsLoaded(publications: publications)
            ),
          ),
        ],
      ),
    );
  }
}
