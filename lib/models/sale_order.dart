
class SaleOrderModel {
  SaleOrderModel({
    required this.id,
    required this.name,
    required this.partnerId,
    required this.paymentTermId,
    required this.orderDate,
    required this.amountTotal,
    required this.state,
    required this.orderLineIds,
    required this.orderLines,
  });

  int id;
  String name;
  int partnerId;
  int paymentTermId;
  String orderDate;
  String state;
  double amountTotal;
  List orderLineIds;
  List orderLines;


  static fromJson(record){
    print('load from json');
    return SaleOrderModel(
      id: record['id'], 
      name: record['name'], 
      partnerId: (record['partner_id'] is List)?record['partner_id'][0]:0, 
      paymentTermId: (record['payment_term_id'] is List)?record['payment_term_id'][0]:0, 
      orderDate: record['date_order'], 
      amountTotal: record['amount_total'],
      state: record['state'],
      orderLineIds: record['order_line'],
      orderLines: [],
    );
  }

  @override
  String toString() {
    return "{'id': $id, 'name':'$name', 'partnerId':$partnerId, 'paymentTermId':$paymentTermId, 'orderDate':'$orderDate', 'amountTotal':$amountTotal, 'state':'$state', 'orderLines':$orderLines}";
  }

  toJson() {
    return {
      'id': id, 
      'name':name, 
      'partnerId':partnerId, 
      'paymentTermId':paymentTermId, 
      'orderDate':orderDate, 
      'amountTotal': amountTotal, 
      'state':state, 
      'orderLineIds':orderLineIds,
      'orderLines':orderLines
    };

  }  
}

