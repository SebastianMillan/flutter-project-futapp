import 'dart:convert';

class Pagination {
	int? countCurrent;
	int? countTotal;
	int? pageCurrent;
	int? pageTotal;
	int? itemsPerPage;

	Pagination({
		this.countCurrent, 
		this.countTotal, 
		this.pageCurrent, 
		this.pageTotal, 
		this.itemsPerPage, 
	});

	factory Pagination.fromMap(Map<String, dynamic> data) => Pagination(
				countCurrent: data['countCurrent'] as int?,
				countTotal: data['countTotal'] as int?,
				pageCurrent: data['pageCurrent'] as int?,
				pageTotal: data['pageTotal'] as int?,
				itemsPerPage: data['itemsPerPage'] as int?,
			);

	Map<String, dynamic> toMap() => {
				'countCurrent': countCurrent,
				'countTotal': countTotal,
				'pageCurrent': pageCurrent,
				'pageTotal': pageTotal,
				'itemsPerPage': itemsPerPage,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Pagination].
	factory Pagination.fromJson(String data) {
		return Pagination.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Pagination] to a JSON string.
	String toJson() => json.encode(toMap());
}
