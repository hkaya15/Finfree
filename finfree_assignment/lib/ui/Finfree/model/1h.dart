// ignore_for_file: file_names

class H1 {
	int? d;
	double? c;
	double? o;
	double? h;
	num? l;

	H1({this.d, this.c, this.o, this.h, this.l});

	H1.fromJson(Map<String, dynamic> json) {
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