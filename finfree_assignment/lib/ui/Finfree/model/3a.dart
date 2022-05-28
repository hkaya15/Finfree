// ignore_for_file: file_names

class A3 {
	int? d;
	num? c;
	num? o;
	num? h;
	num? l;

	A3({this.d, this.c, this.o, this.h, this.l});

	A3.fromJson(Map<String, dynamic> json) {
		d = json['d'];
		c = json['c'];
		o = json['o'];
		h = json['h'];
		l = json['l'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data =<String, dynamic>{};
		data['d'] = d;
		data['c'] = c;
		data['o'] = o;
		data['h'] = h;
		data['l'] = l;
		return data;
	}
}