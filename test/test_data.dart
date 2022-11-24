import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/features/categories/domain/models/item/item.dart';

final List<Category> tCategories = [
  const Category(
    id: 'c1',
    title: 'Film',
    description: 'Films category description',
    items: tItems,
  ),
  const Category(
    id: 'c2',
    title: 'Cats',
    description: 'Cats category description',
    items: [],
  ),
  const Category(
    id: 'c3',
    title: 'Dogs',
    description: 'Dogs category description',
    items: [],
  ),
  const Category(
    id: 'c4',
    title: 'Songs',
    description: 'Songs category description',
    items: [],
  ),
  const Category(
    id: 'c5',
    title: 'Ziom',
    description: 'Zioms category description',
    items: [],
  ),
];

const List<Item> tItems = [
  Item(
    id: 'i1',
    title: 'Knives out',
    url:
        'https://upload.wikimedia.org/wikipedia/en/1/1f/Knives_Out_poster.jpeg',
  ),
  Item(
    id: 'i2',
    title: 'Gladiator',
    url:
        'https://upload.wikimedia.org/wikipedia/en/f/fb/Gladiator_%282000_film_poster%29.png',
  ),
  Item(
    id: 'i3',
    title: 'The Menu',
    url:
        'https://upload.wikimedia.org/wikipedia/en/d/db/The_Menu_%282022_film%29.jpg',
  ),
  Item(
    id: 'i4',
    title: 'Parasite',
    url:
        'https://upload.wikimedia.org/wikipedia/en/5/53/Parasite_%282019_film%29.png',
  )
];
