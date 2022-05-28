// ignore_for_file: file_names

class G1 {
	int? d;
	double? c;
	int? v;
	double? h;
	double? l;
	double? o;

	G1({this.d, this.c, this.v, this.h, this.l, this.o});

	G1.fromJson(Map<String, dynamic> json) {
		d = json['d'];
		c = json['c'];
		v = json['v'];
		h = json['h'];
		l = json['l'];
		o = json['o'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['d'] = d;
		data['c'] = c;
		data['v'] = v;
		data['h'] = h;
		data['l'] = l;
		data['o'] = o;
		return data;
	}
}