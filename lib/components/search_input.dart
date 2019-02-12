/*
 * @Author: Li Chunqiang
 * @Date: 2019-02-11 15:58:03
 * @Last Modified by: Li Chunqiang
 * @Last Modified time: 2019-02-12 16:55:42
 */
import 'package:flutter/material.dart';

class MaterialSearchInput<T> extends StatefulWidget {
  MaterialSearchInput({
    this.placeholder
  });

  final String placeholder;

  @override
  createState() => new _MaterialSearchInputState<T>();
}

class _MaterialSearchInputState<T> extends State<MaterialSearchInput<T>> {
  _showMaterialSearch(BuildContext context) {
    print('onTap');
  }

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () => _showMaterialSearch(context),
      child: new FormField<T>(
        builder: (FormFieldState<T> field) {
          return new InputDecorator(
            isEmpty: false,
            decoration: new InputDecoration(
              labelText: widget.placeholder,
              labelStyle: TextStyle(
                fontSize: 20.0,
                color: Color(0xAAFFFFFF)
              ),
              errorText: field.errorText
            ),
          );
        },
      )
    );
  }
}

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: Color(0xFFFFFFFF)
        ),
        borderRadius: new BorderRadius.all(
          const Radius.circular(20.0)
        )
      ),
      height: 40.0,
      child: new Row(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.only(right: 10.0, top: 3.0, left: 10.0),
            child: new Icon(Icons.search, size: 24.0, color: Theme.of(context).accentColor)
          ),
          new Expanded(
            child: new MaterialSearchInput(
              placeholder: '搜索歌曲',
            ),
          )
        ],
      )
    );
  }
}