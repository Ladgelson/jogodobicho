import 'package:flutter/material.dart';
import 'package:jogo_do_bicho/components/color.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  GlobalKey<FormState> _chave = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.devices_other,
        ),
        title: Text(
          "Jogo do bicho",
          style: TextStyle(color: Cores.palavra),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent, //70c0b3
        // botão de reset
      ),
      backgroundColor: Colors.grey[900],
      // rolagem da tela toda
      body: Form(
        key: _chave,
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          // colocar tudo em coluna
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // coluna tem varios filhos
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Image.asset(
                  'icon/icon.png',
                  width: 300.0,
                  height: 300.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    errorStyle: TextStyle(
                      color: Colors.redAccent,
                    ),
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(9.0),
                      ),
                      borderSide: new BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                    ),
                    labelText: "Login",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                  controller: emailController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Informe seu login!";
                    } else {
                      bool _have = false;
                      for(int i=0;i<value.length;++i){
                        if(value[i] == '@')_have = true;
                      }
                      if(!_have) return "Login incorreto!";
                    }
                  },
                ),
              ),
              Divider(
                color: Colors.grey[900],
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  errorStyle: TextStyle(
                    color: Colors.redAccent,
                  ),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(8.0),
                    ),
                    borderSide: new BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                  ),
                  labelText: "Senha",
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20.0),
                controller: senhaController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Informe sua senha!";
                  } else {
                    if(value.length < 6)return "Senha muito curta!";
                  }
                },
              ),
              // da o espaçamento no conteiner do botão principal
              Padding(
                padding: EdgeInsets.only(top: 25.0, bottom: 10.0),
                child: Container(
                    height: 55.0,
                    child: RaisedButton(
                      color: Colors.redAccent,
                      onPressed: () {
                        if (_chave.currentState.validate()){
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => monitoramento(),
                          //     ));
                          // ;
                        }
                      },
                      child: Text("Login",
                          style:
                              TextStyle(color: Colors.white, fontSize: 25.00)),
                    )),
              ),
              Divider(
                color: Colors.grey[900],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
