// ignore_for_file: file_names

class Y1 {
	int? d;
	double? c;
	num? o;
	double? h;
	double? l;

	Y1({this.d, this.c, this.o, this.h, this.l});

	Y1.fromJson(Map<String, dynamic> json) {
		d = json['d'];
		c = json['c'];
		o = json['o'];
		h = json['h'];
		l = json['l'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['d'] = d;
		data['c'] = c;
		data['o'] = o;
		data['h'] = h;
		data['l'] = l;
		return data;
	}
}