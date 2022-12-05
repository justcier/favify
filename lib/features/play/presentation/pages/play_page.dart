import 'package:auto_route/auto_route.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/features/play/presentation/cubits/play_cubit.dart';
import 'package:favify/features/play/presentation/cubits/play_state.dart';
import 'package:favify/features/play/presentation/widgets/category_item_tile.dart';
import 'package:favify/services/injection_service.dart';
import 'package:favify/services/navigation_service.dart';
import 'package:favify/style/dimensions.dart';
import 'package:favify/style/text_style_tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayPage extends StatefulWidget {
  final Category category;

  const PlayPage({required this.category, Key? key}) : super(key: key);

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  final PlayCubit playCubit = getIt.get<PlayCubit>();

  @override
  void initState() {
    super.initState();
    playCubit.updateAndSortCategory(widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.title),
      ),
      body: Center(
        child: BlocConsumer<PlayCubit, PlayState>(
          bloc: playCubit,
          listener: (context, state) {
            if (state.isWinnerDetermined) {
              context.router.replace(
                WinnerRoute(
                  winnerItem: state.category!.items.first,
                  unmodifiedCategory: state.unmodifiedCategory!,
                ),
              );
            }
          },
          builder: (context, state) {
            if (state.category!.items.length == 1) {
              return const SizedBox.shrink();
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryItemTile(
                  item: playCubit.state.category!.items.first,
                  onTap: () => playCubit
                      .chooseWinner(playCubit.state.category!.items.first),
                ),
                const SizedBox(height: Dimensions.sizeM),
                const Text(
                  'VS',
                  style: TextStyleTokens.mainTitle,
                ),
                const SizedBox(height: Dimensions.sizeM),
                CategoryItemTile(
                  item: playCubit.state.category!.items[1],
                  onTap: () => playCubit
                      .chooseWinner(playCubit.state.category!.items[1]),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
