/*
 * @Author: your name
 * @Date: 2020-09-29 16:11:36
 * @LastEditTime: 2020-09-29 17:25:36
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \flutter-demo\lib\pages\widget_page\radio_page.dart
 */
import 'package:flutter/material.dart';

class FromPage extends StatefulWidget {
  @override
  _FromPage createState() => _FromPage();
}

class _FromPage extends State<FromPage> {
  bool _radioSelected = true;
  bool _checkboxSelected = true;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单组件', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Switch(
            value: _radioSelected,
            activeColor: Colors.green,
            onChanged: (value) {
              print(value);
              setState(() {
                _radioSelected = value;
              });
            },
          ),
          Checkbox(
              value: _checkboxSelected,
              activeColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  _checkboxSelected = value;
                });
              }),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 20),
            child: Column(
              children: [
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                      labelText: '用户名',
                      hintText: '请输入您的用户名称',
                      prefixIcon: Icon(Icons.person)),
                ),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      labelText: '密码',
                      hintText: '请输入您的登录密码',
                      prefixIcon: Icon(Icons.lock)),
                  obscureText: true,
                ),
              ],
            ),
          ),
          RaisedButton(
            child: Text('登录', style: TextStyle(color: Colors.white)),
            color: Color.fromARGB(255, 36, 178, 155),
            onPressed: () {
              final String username = _usernameController.text;
              final String password = _passwordController.text;
              print('姓名是$username,密码是$password');
            },
          ),
          Text('表单'),
          Form(
              key: _formKey,
              autovalidate: true,
              child: Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Column(
                  children: [
                    TextFormField(
                      autofocus: true,
                      controller: _passwordController,
                      decoration: InputDecoration(
                          labelText: '用户名',
                          hintText: '请输入您的登录密码',
                          prefixIcon: Icon(Icons.lock)),
                      validator: (value) {
                        return value.trim().length > 0 ? null : '用户名不能为空';
                      },
                    ),
                    TextFormField(
                        autofocus: true,
                        controller: _usernameController,
                        decoration: InputDecoration(
                            labelText: '密码',
                            hintText: '请输入您的用户名称',
                            prefixIcon: Icon(Icons.person)),
                        //校验密码
                        validator: (value) {
                          return value.trim().length > 5 ? null : "密码不能少于6位";
                        }),
                    // 登录按钮
                    RaisedButton(
                      padding: EdgeInsets.all(15.0),
                      child: Center(child: Text("登录")),
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      onPressed: () {
                        //在这里不能通过此方式获取FormState，context不对
                        //print(Form.of(context));

                        // 通过_formKey.currentState 获取FormState后，
                        // 调用validate()方法校验用户名密码是否合法，校验
                        // 通过后再提交数据。
                        if ((_formKey.currentState as FormState).validate()) {
                          //验证通过提交数据
                          print('验证通过');
                        } else {
                          print('验证失败');
                        }
                      },
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
