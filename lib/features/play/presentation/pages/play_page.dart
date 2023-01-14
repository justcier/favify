import 'package:auto_route/auto_route.dart';
import 'package:favify/common/widgets/common_scaffold.dart';
import 'package:favify/core/strings.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/features/categories/domain/models/item/item.dart';
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
  void dispose() {
    playCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: widget.category.title,
      body: Center(
        child: BlocConsumer<PlayCubit, PlayState>(
          bloc: playCubit,
          listener: (context, PlayState state) {
            if (state.isWinnerDetermined) {
              context.router.replace(
                WinnerRoute(
                  winnerItem: state.category!.items.first,
                  unmodifiedCategory: state.unmodifiedCategory!,
                ),
              );
            }
          },
          builder: (_, PlayState state) {
            final List<Item> items = state.category!.items;
            if (items.length == 1) {
              return const SizedBox.shrink();
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryItemTile(
                  item: items.first,
                  onTap: () => playCubit.chooseWinner(items.first),
                ),
                const SizedBox(height: Dimensions.sizeM),
                Text(
                  Strings.versus,
                  style: TextStyleTokens.mainTitle,
                ),
                const SizedBox(height: Dimensions.sizeM),
                CategoryItemTile(
                  item: items[1],
                  onTap: () => playCubit.chooseWinner(items[1]),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
