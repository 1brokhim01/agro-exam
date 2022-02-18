import 'package:flutter/material.dart';

class Model {
  String? name;
  String? number;
  String? password;
  Model({this.name,this.number, this.password});
}

class UserBlogModel {
  AssetImage? img;
  String? blogNum;
  String? blogComent;
  UserBlogModel({this.img, this.blogNum, this.blogComent});
}
