import "package:flutter/cupertino.dart";
import 'story.dart';

class StoryBrain {
  int storyNumber = 0;
  bool isEnd= false;

  final List<Story> _storyData = [
    Story(
      'Bir zamanlar sihrin yasak olduğu bir diyarda kolları uzun bir adam varmış. İnsanlar onu gorudugunde genellikle ona "Su adama bak kolları ne kadar uzun...',
      'Eminim ugradıgı her yerde hırsızlık yapıyordur." derlermiş.',
      'bence cok iyi is yapıyor ve yaptıgı isler sayesıdne buyuk ovgu kazanıyordur" derlermis.',
      1,
      2,
    ),
    Story(
        'Adam bu tarz lafları duydugunda hep cok uzulurmuş ve ne zaman üzülse...',
        'kendını odasına kitler saatlerce aglarmış.',
        'Sahilin kenarına gider ve saatlerce "Tanrım kollarım neden bu kadar uzun!" diye isyan edermiş.',
        3,
        6),
    Story(
        'Bunları söyleyenleri duyunca kendisiyle gurur duyar ve daha yoğun ve sıkı çalışmaya başlarmış. Bir gün yoğun çalışma sırasında...',
        'adamın kolları kırılmış ve haykırmış: "Ahhhhh Tanrım neden bunu bana yaptın? demiş. İsyanına devam etmek için sahilin kenarına gitmiş.',
        'Adamın bu azmini gören kralın yardımcısı krala haber vermiş ve kral adamı huzuruna çağarmış.',
        6,
        4),
    Story(
        'Adam agladikca kollarının kısaldıgını farketmiş. 1 ay sonra dışarı çıktığında insanlar adamın kollarındaki kısalmayı farketmiş',
        've krala haber vermiş. Kral adamı huzuruna davet etmiş.',
        've kolları uzun adama karşı ne kadar büyük bir hata yaptıklarını farketmişler ve adamdan özür dileyip beraberce yaşamışlar. O günden sonra kolları uzun adamı ömrünü sonu boyunca hiç ağlatmamışlar.',
        5,
        -1),
    Story(
        'Kral adama hizmetinden ötürü teşekkur edip sarayda görev almasını emretmiş.',
        'Adam hemen ayağa kalkarak kralın eteklerinden öpmüş ve görevini kabul etmiş.',
        'Adamda teşekkür ederek bu görevi kabul edemeyeceğini krala söylemiş.',
        -1,
        5),
    Story(
        'Kral adama sen nasıl benim emirlerime karşı gelirsin diye adama idam cezası vermiş.',
        'Adam sessizce cezasını kabul etmiş ve idam gününü beklemiş. ',
        'Adam bunu duyunca çok korkmuş ve hemen saraydan kaçmıs. Gidecek yer bulamayınca sahil kenarına gelmiş.',
        -1,
        6),
    Story(
        'Sahilde adamın durumunu gören tanrı,',
        'adamın kollarını uzun yarattığı için pisman olmus ve üzülmüs. Tanrı uzun kollu adamı cennetine kabul etmis.',
        'adamın kaderinden kactıgını ve isyan ettiğini gorünce sinirlenmis ve adamın kollarını tamamen yok etmis.',
        -1,
        -1),
  ];

  String getStory() => _storyData[storyNumber].storyTitle;
  String getChoice1() => _storyData[storyNumber].choice1;
  String getChoice2() => _storyData[storyNumber].choice2;
  int getChoise1NextStep() => _storyData[storyNumber].choice1Step;
  int getChoise2NextStep() => _storyData[storyNumber].choice2Step;
  bool getIsStoryEnd() => isEnd;

  void nextStory(int number) {
    storyNumber = number;
  }

  void setStoryEnd(){
    isEnd = true;
  }

  void resetTheStory(){
    storyNumber = 0;
    isEnd = false;
  }
}
