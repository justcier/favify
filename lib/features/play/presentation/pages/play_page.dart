import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/features/categories/domain/models/item/item.dart';
import 'package:favify/features/play/presentation/cubits/play_cubit.dart';
import 'package:favify/services/injection_service.dart';
import 'package:favify/style/color_tokens.dart';
import 'package:favify/style/dimensions.dart';
import 'package:flutter/material.dart';

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
    print(playCubit.state.category);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _CategoryItemTile(
              item: playCubit.state.category!.items[0],
              onTap: () {
                playCubit.addWinnerToWinnerList(
                  playCubit.state.category!.items[0],
                );
                playCubit.deleteFirstAndSecondItem();
              },
            ),
            const SizedBox(height: Dimensions.sizeM),
            const Text(
              'VS',
              style: TextStyle(
                color: ColorTokens.secondaryColor,
                fontSize: Dimensions.sizeXXL,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: Dimensions.sizeM),
            _CategoryItemTile(
              item: playCubit.state.category!.items[1],
              onTap: () {
                playCubit.addWinnerToWinnerList(
                  playCubit.state.category!.items[1],
                );
                playCubit.deleteFirstAndSecondItem();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryItemTile extends StatelessWidget {
  final Item item;
  final VoidCallback onTap;

  const _CategoryItemTile({
    required this.item,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: ColorTokens.secondaryColor),
          borderRadius: BorderRadius.circular(15),
        ),
        width: 300,
        height: 250,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                item.url,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: Dimensions.sizeL,
              child: Container(
                width: 300,
                color: ColorTokens.secondaryColor.withOpacity(0.7),
                padding: const EdgeInsets.symmetric(
                  vertical: Dimensions.sizeM,
                  horizontal: Dimensions.sizeXXL,
                ),
                child: Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: Dimensions.sizeXXL,
                    color: ColorTokens.mainFontColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
