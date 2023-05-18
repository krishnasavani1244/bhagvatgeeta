
import 'package:http/http.dart' as http;

import '../models/Chapters_Model.dart';
import '../models/Shloka_Model.dart';

class Methods {
  static const String baseUrl = "bhagavadgitaapi.in";

  static get id => null;

  static get chapter => null;

  static get verse => null;

  static get slok => null;

  static get transliteration => null;

  static get tej => null;

  static get siva => null;

  static get purohit => null;

  static get chinmay => null;

  static get san => null;

  static get gambir => null;

  static get madhav => null;

  static get anand => null;

  static get rams => null;

  static get abhinav => null;

  static get sankar => null;

  static get jaya => null;

  static get vallabh => null;

  static get venkat => null;

  static get puru => null;

  static get neel => null;

  static Future<List<GeetaChapters>> getGeetaChapters() async {
    var url = Uri.parse(
        'https://bhagavadgitaapi.in/chapters?api_key="YOUR_API_KEY"');
    try {
      final response = await http.get(
        url,
      );
      if (200 == response.statusCode) {
        final List<GeetaChapters> users = geetaChaptersFromJson(response.body);
        return users;
      } else {
        return <GeetaChapters>[];
      }
    } catch (e) {
      return <GeetaChapters>[];
    }
  }

  static Future<GeetaShloka> getGeetaShloka(int ch, int sk) async {
    var url = Uri.parse(
        'https://bhagavadgitaapi.in/slok/$ch/$sk?api_key="YOUR_API_KEY"');
    try {
      final response = await http.get(url);
      if (200 == response.statusCode) {
        final GeetaShloka shloka = geetaShlokaFromJson(response.body);
        return shloka;
      } else {
        return GeetaShloka(id: id, chapter: chapter, verse: verse, slok: slok, transliteration: transliteration, tej: tej, siva: siva, purohit: purohit, chinmay: chinmay, san: san, adi: id, gambir: gambir, madhav: madhav, anand: anand, rams: rams, raman: rams, abhinav: abhinav, sankar: sankar, jaya: jaya, vallabh: vallabh, ms: id, srid: id, dhan: san, venkat: venkat, puru: puru, neel: neel);
      }
    } catch (e) {
      return GeetaShloka(id: id, chapter: chapter, verse: verse, slok: slok, transliteration: transliteration, tej: tej, siva: siva, purohit: purohit, chinmay: chinmay, san: san, adi: id, gambir: gambir, madhav: madhav, anand: anand, rams: rams, raman: rams, abhinav: abhinav, sankar: sankar, jaya: jaya, vallabh: vallabh, ms: id, srid: id, dhan: san, venkat: venkat, puru: puru, neel: neel);
  }
}
}