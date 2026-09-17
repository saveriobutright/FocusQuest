import 'package:flutter_test/flutter_test.dart';
import 'package:focus_quest/models/user_model.dart';

void main() {
  group('UserModel', () {
    test('calculates the XP required for the next level', () {
      final user = UserModel(
        name: 'Saverio',
        level: 3,
        currentXp: 500,
      );

      expect(user.xpToNextLevel, 3000);
    });

    test('creates a user correctly from database data', () {
      final user = UserModel.fromMap({
        'name': 'Saverio',
        'level': 2,
        'current_xp': 750,
        'goalLevel5Reached': 0,
        'goalRitualUsed': 1,
        'avatar': 'person',
      });

      expect(user.name, 'Saverio');
      expect(user.level, 2);
      expect(user.currentXp, 750);
      expect(user.goalLevel5Reached, isFalse);
      expect(user.goalRitualUsed, isTrue);
      expect(user.avatar, 'person');
    });

    test('copyWith changes only the selected properties', () {
      final original = UserModel(
        name: 'Saverio',
        level: 2,
        currentXp: 750,
        goalRitualUsed: true,
      );

      final updated = original.copyWith(
        level: 3,
        currentXp: 100,
      );

      expect(updated.name, original.name);
      expect(updated.level, 3);
      expect(updated.currentXp, 100);
      expect(updated.goalRitualUsed, isTrue);
      expect(updated.avatar, original.avatar);
    });
  });
}