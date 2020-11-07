class Conta {
  String name;
  String inst;
  String ag;
  String cc;
  String cpf;
  bool published;
  int value;
  String id;

  Conta(this.name, this.inst, this.ag, this.cc, this.cpf, this.published);

  Conta.fromJson(Map<String, dynamic> json)
      : name = json['nome'],
        inst = json['inst'],
        ag = json['ag'],
        cc = json['cc'],
        cpf = json['cpf'],
        published = json['published'];

  Map<String, dynamic> toJson() => {
        'nome': name,
        'inst': inst,
        'ag': ag,
        'cc': cc,
        'cpf': cpf,
        'published': published,
      };
}
