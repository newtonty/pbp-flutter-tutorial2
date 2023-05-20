import 'dart:convert';

TransactionRecord transactionRecordFromJson(String str) => TransactionRecord.fromJson(json.decode(str));

String transactionRecordToJson(TransactionRecord data) => json.encode(data.toJson());

class TransactionRecord {
    List<TypeChoice> typeChoices;
    TransactionRecordClass transactionRecord;

    TransactionRecord({
        required this.typeChoices,
        required this.transactionRecord,
    });

    factory TransactionRecord.fromJson(Map<String, dynamic> json) => TransactionRecord(
        typeChoices: List<TypeChoice>.from(json["TYPE_CHOICES"].map((x) => TypeChoice.fromJson(x))),
        transactionRecord: TransactionRecordClass.fromJson(json["TransactionRecord"]),
    );

    Map<String, dynamic> toJson() => {
        "TYPE_CHOICES": List<dynamic>.from(typeChoices.map((x) => x.toJson())),
        "TransactionRecord": transactionRecord.toJson(),
    };
}

class TransactionRecordClass {
    String name;
    String type;
    String amount;
    String date;
    String description;

    TransactionRecordClass({
        required this.name,
        required this.type,
        required this.amount,
        required this.date,
        required this.description,
    });

    factory TransactionRecordClass.fromJson(Map<String, dynamic> json) => TransactionRecordClass(
        name: json["name"],
        type: json["type"],
        amount: json["amount"],
        date: json["date"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "amount": amount,
        "date": date,
        "description": description,
    };
}

class TypeChoice {
    String value;
    String label;

    TypeChoice({
        required this.value,
        required this.label,
    });

    factory TypeChoice.fromJson(Map<String, dynamic> json) => TypeChoice(
        value: json["value"],
        label: json["label"],
    );

    Map<String, dynamic> toJson() => {
        "value": value,
        "label": label,
    };
}