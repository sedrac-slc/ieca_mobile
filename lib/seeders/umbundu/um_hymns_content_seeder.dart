import 'package:ieca_mobile/models/_import.dart';
import 'package:ieca_mobile/seeders/_import.dart';

class UmHymnsContentSeeder{

  static List<HymnsContent> items() {
    return [
      ...UmHymnsCallToWorship.list,
      ...UmHymnsPraiseToWorship.list,
      ...UmHymnsBirthOfJesus.list,
      ...UmHymnsTriumphalEntryOfJesusInJerusalem.list,
      ...UmHymnsPassionAndDeathOfJesus.list,
      ...UmHymnsResurrectionOfJesus.list,
      ...UmHymnsHolySpirit.list,
      ...UmHymnsChurch.list,
      ...UmHymnsBaptism.list,
      ...UmHymnsHolyCommunion.list,
      ...UmHymnsChristianHome.list,
      ...UmHymnsMothers.list,
      ...UmHymnsChildren.list,
      ...UmHymnsYouth.list,
      ...UmHymnsInvitationToTheSinner.list,
      ...UmHymnsPrayer.list,
      ...UmHymnsConsecration.list,
      ...UmHymnsFaithAndSecurity.list,
      ...UmHymnsTestimonyAndWork.list,
      ...UmHymnsThanksgivingToGod.list,
      ...UmHymnsPeace.list,
      ...UmHymnsBible.list,
      ...UmHymnsDeathOfTheBeliever.list,
      ...UmHymnsFutureLife.list,
      ...UmHymnsEvening.list,
      ...UmHymnsNewYear.list,
      ...UmHymnsPatriotic.list,
      ...UmHymnsEndOfService.list,
      ...UmHymnsDoxologies.list,
    ];
  }
}