// Dart JS示例
// AntV可视化组件（https://antv.antfin.com/zh-cn/g2/3.x/demo/pie/color-rose.html#）
// Dart JS文档（https://api.dart.cn/stable/2.16.2/dart-js/dart-js-library.html）

import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus = querySelector('#dart-status') as DivElement;
  dartStatus.text = 'Dart is working!';
  dartStatus.style.color = 'green';
  var myData = JsObject.jsify([
    {'type': '新用户', 'value': 0.5},
    {'type': '老用户', 'value': 0.3},
    {'type': '活跃用户', 'value': 0.2}
  ]);

  var chart = context['chart'];
  chart.callMethod('source', [myData]);
  chart.callMethod('render', []);
}
