class Pagination {
  int? countCurrent;
  int? countTotal;
  int? pageCurrent;
  int? pageTotal;
  int? itemsPerPage;

  Pagination(
      {this.countCurrent,
      this.countTotal,
      this.pageCurrent,
      this.pageTotal,
      this.itemsPerPage});

  Pagination.fromJson(Map<String, dynamic> json) {
    countCurrent = json['countCurrent'];
    countTotal = json['countTotal'];
    pageCurrent = json['pageCurrent'];
    pageTotal = json['pageTotal'];
    itemsPerPage = json['itemsPerPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['countCurrent'] = this.countCurrent;
    data['countTotal'] = this.countTotal;
    data['pageCurrent'] = this.pageCurrent;
    data['pageTotal'] = this.pageTotal;
    data['itemsPerPage'] = this.itemsPerPage;
    return data;
  }
}
