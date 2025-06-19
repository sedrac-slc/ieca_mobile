import 'package:ieca_mobile/seeders/hymns/_import.dart';
import 'package:ieca_mobile/models/HymnsContent.dart';

class HymnsContentSeeder{

  static List<HymnsContent> items() {
    return [
      ...HymnsCallToWorship.list,
      ...HymnsPraiseToWorship.list,
      ...HymnsBirthOfJesus.list,
      ...HymnsTriumphalEntryOfJesusInJerusalem.list,
      ...HymnsPassionAndDeathOfJesus.list,
      ...HymnsResurrectionOfJesus.list,
      ...HymnsHolySpirit.list,
      ...HymnsChurch.list,
      ...HymnsBaptism.list,
      ...HymnsHolyCommunion.list,
      ...HymnsChristianHome.list,
      ...HymnsMothers.list,
      ...HymnsChildren.list,
      ...HymnsYouth.list,
      ...HymnsInvitationToTheSinner.list,
      ...HymnsPrayer.list,
      ...HymnsConsecration.list,
      ...HymnsFaithAndSecurity.list,
      ...HymnsTestimonyAndWork.list,
      ...HymnsThanksgivingToGod.list,
      ...HymnsPeace.list,
      ...HymnsBible.list,
      ...HymnsDeathOfTheBeliever.list,
      ...HymnsFutureLife.list,
      ...HymnsEvening.list,
      ...HymnsNewYear.list,
      ...HymnsPatriotic.list,
      ...HymnsEndOfService.list,
      ...HymnsDoxologies.list
    ];
  }
}