import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class Globals {
  static int n = 0;
  static Map<String, dynamic> song = {};
  static List<Map<String, dynamic>> music = [
    {
      'Name': 'Aarambh_Hai_Prachand',
      'images': const AssetImage('assets/images/1.jpg'),
      'song': 'assets/audio/123.mp3',
      'singer': 'Piyush Mishra',
      'play': AssetsAudioPlayer(),
      'timer': Duration.zero,
    },
    {
      'Name': 'Ik_Lamha',
      'images': const AssetImage('assets/images/2.jpeg'),
      'song': 'assets/audio/Azaan_Sami_Khan_Ik_Lamha_ft_Maya_Ali_Official_.mp3',
      'singer': 'Azaan sami',
      'play': AssetsAudioPlayer(),
      'timer': Duration.zero,
    },
    {
      'Name': 'Channa_Ve',
      'images': const AssetImage('assets/images/3.jpeg'),
      'song': 'assets/audio/Channa_Ve.mp3',
      'singer': 'Akhil Sachdeva',
      'play': AssetsAudioPlayer(),
      'timer': Duration.zero,
    },
    {
      'Name': 'Deva_Deva',
      'images': const AssetImage('assets/images/4.jpeg'),
      'song':
          'assets/audio/Deva_Deva_Brahmāstra___Amitabh_B___Ranbir_Kapoor.mp3',
      'singer': 'Arjit singh',
      'play': AssetsAudioPlayer(),
      'timer': Duration.zero,
    },
    {
      'Name': 'Gori_Tame_Manda_Lidha_Mohi_Raj',
      'images': const AssetImage('assets/images/5.jpeg'),
      'song':
          'assets/audio/Gori_Tame_Manda_Lidha_Mohi_Raj_Umesh_Barot___Ish.mp3',
      'singer': 'Umesh barot',
      'play': AssetsAudioPlayer(),
      'timer': Duration.zero,
    },
    {
      'Name': 'Hum_Nashe_Mein_Toh_Nahin',
      'images': const AssetImage('assets/images/6.jpeg'),
      'song':
          'assets/audio/Hum_Nashe_Mein_Toh_Nahin_Lyrical_Bhool_Bhulaiyaa.mp3',
      'singer': 'Arjit singh',
      'play': AssetsAudioPlayer(),
      'timer': Duration.zero,
    },
    {
      'Name': 'Kesariya',
      'images': const AssetImage('assets/images/7.jpeg'),
      'song':
          'assets/audio/Kesariya____Brahmastra___Ranbir_Kapoor___Alia_Bhat.mp3',
      'singer': 'Arjit singh',
      'play': AssetsAudioPlayer(),
      'timer': Duration.zero,
    },
    {
      'Name': 'Tu_Aake_Dekhle',
      'images': const AssetImage('assets/images/8.jpeg'),
      'song':
          'assets/audio/King_Tu_Aake_Dekhle___The_Carnival___The_Last_Ri.mp3',
      'singer': 'King',
      'play': AssetsAudioPlayer(),
      'timer': Duration.zero,
    },
    {
      'Name': 'Maan_Meri_Jaan',
      'images': const AssetImage('assets/images/9.jpeg'),
      'song':
          'assets/audio/Maan_Meri_Jaan___Official_Music_Video___Champagne_.mp3',
      'singer': 'King',
      'play': AssetsAudioPlayer(),
      'timer': Duration.zero,
    },
    {
      'Name': 'Maiyya_Mainu',
      'images': const AssetImage('assets/images/10.jpeg'),
      'song':
          'assets/audio/Maiyya_Mainu_Jersey___Shahid_Kapoor_Mrunal_T__S.mp3',
      'singer': 'Sachet tandon',
      'play': AssetsAudioPlayer(),
      'timer': Duration.zero,
    },
    {
      'Name': 'Matkar_Maya_Ko_Ahankar',
      'images': const AssetImage('assets/images/11.jpeg'),
      'song': 'assets/audio/Matkar_Maya_Ko_Ahankar.mp3',
      'singer': 'Neeraj Arya',
      'play': AssetsAudioPlayer(),
      'timer': Duration.zero,
    },
    {
      'Name': 'Mera_Yaar',
      'images': const AssetImage('assets/images/12.jpeg'),
      'song':
          'assets/audio/Mera_Yaar_Lyric_Video_Bhaag_Milkha_Bhaag_Farhan_.mp3',
      'singer': 'Javed Bashir',
      'play': AssetsAudioPlayer(),
      'timer': Duration.zero,
    },
    {
      'Name': 'Ek_Raat',
      'images': const AssetImage('assets/images/13.jpeg'),
      'song': 'assets/audio/Vilen_Ek_Raat_Official_Video_.mp3',
      'singer': 'Vilen',
      'play': AssetsAudioPlayer(),
      'timer': Duration.zero,
    },
    {
      'Name': 'Khali_Salam_Dua',
      'images': const AssetImage('assets/images/14.jpeg'),
      'song': 'assets/audio/Khali_Salam_Dua_Slowed_Reverd_🎧_slowed_lofi_.mp33',
      'singer': 'Mohit Chauhan',
      'play': AssetsAudioPlayer(),
      'timer': Duration.zero,
    },
  ];
}
