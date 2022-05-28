// ignore_for_file: file_names
import 'dart:core';


import 'package:finfree_assignment/ui/Finfree/model/1g.dart';
import 'package:finfree_assignment/ui/Finfree/model/1h.dart';

import '1a.dart';
import '1y.dart';
import '3a.dart';
import '5y.dart';

class PriceEntryInfo {
	List<G1>? l1G;
	List<H1>? l1H;
	List<A1>? l1A;
	List<A3>? l3A;
	List<Y1>? l1Y;
	List<Y5>? l5Y;
	String? symbol;

	PriceEntryInfo({this.l1G, this.l1H, this.l1A, this.l3A, this.l1Y, this.l5Y, this.symbol});

	PriceEntryInfo.fromJson(Map<String, dynamic> json) {
		if (json['1G'] != null) {
			l1G = <G1>[];
			json['1G'].forEach((v) { l1G!.add(G1.fromJson(v)); });
		}
		if (json['1H'] != null) {
			l1H = <H1>[];
			json['1H'].forEach((v) { l1H!.add(H1.fromJson(v)); });
		}
		if (json['1A'] != null) {
			l1A = <A1>[];
			json['1A'].forEach((v) { l1A!.add(A1.fromJson(v)); });
		}
		if (json['3A'] != null) {
			l3A = <A3>[];
			json['3A'].forEach((v) { l3A!.add(A3.fromJson(v)); });
		}
		if (json['1Y'] != null) {
			l1Y = <Y1>[];
			json['1Y'].forEach((v) { l1Y!.add(Y1.fromJson(v)); });
		}
		if (json['5Y'] != null) {
			l5Y = <Y5>[];
			json['5Y'].forEach((v) { l5Y!.add(Y5.fromJson(v)); });
		}
		symbol = json['symbol'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		if (l1G != null) {
      data['1G'] = l1G!.map((v) => v.toJson()).toList();
    }
		if (l1H != null) {
      data['1H'] = l1H!.map((v) => v.toJson()).toList();
    }
		if (l1A != null) {
      data['1A'] = l1A!.map((v) => v.toJson()).toList();
    }
		if (l3A != null) {
      data['3A'] = l3A!.map((v) => v.toJson()).toList();
    }
		if (l1Y != null) {
      data['1Y'] = l1Y!.map((v) => v.toJson()).toList();
    }
		if (l5Y != null) {
      data['5Y'] = l5Y!.map((v) => v.toJson()).toList();
    }
		data['symbol'] =symbol;
		return data;
	}
}