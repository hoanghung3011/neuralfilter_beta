import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import './Original.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';
import 'package:image/image.dart' as img;
import 'package:progress_dialog/progress_dialog.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

class UploadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Upload(),
    );
  }
}

class Upload extends StatefulWidget {
  Upload({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Upload createState() => _Upload();
}

File image;
List<dynamic> dataImg = [
  'https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Flag_of_None_%28square%29.svg/768px-Flag_of_None_%28square%29.svg.png'
];
int index = 0;

class _Upload extends State<Upload> {
  var now = new DateTime.now();

  void _uploadImage() async {
    // var now = new DateTime.now();
    ImagePicker picker = ImagePicker();
    PickedFile pickedImage = await picker.getImage(source: ImageSource.gallery);

    File originalImage = File(pickedImage.path);

    setState(() {
      image = originalImage;
      dataImg = [
        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Flag_of_None_%28square%29.svg/768px-Flag_of_None_%28square%29.svg.png'
      ];
      uploadToServer();
    });
  }

  Future uploadToServer() async {
    ProgressDialog pr;
    pr = new ProgressDialog(context, isDismissible: false);
    pr.style(
        message: 'Waiting for processing ...',
        borderRadius: 5.0,
        backgroundColor: Colors.white,
        progressWidget: CircularProgressIndicator(strokeWidth: 3.0),
        elevation: 10.0,
        insetAnimCurve: Curves.easeInOut,
        progress: 0.0,
        maxProgress: 100.0,
        progressTextStyle: TextStyle(
            color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w400),
        messageTextStyle: TextStyle(
            color: Colors.black, fontSize: 19.0, fontWeight: FontWeight.w600));

    pr.show();

    if (image == null) return;
    img.Image imageTemp = img.decodeImage(image.readAsBytesSync());
    img.Image resizeImg = img.copyResize(imageTemp, width: 600);
    var thumb = img.encodeJpg(resizeImg);
    String base64Image = base64.encode(thumb);
    String fileName = image.path.split("/").last;
    String dateFormat = DateFormat("yyyy-MM-dd_HH:mm:ss").format(now);

    Response response = await Dio()
        .post('http://service.mmlab.uit.edu.vn/receipt/task3/send', data: {
      "image-name": dateFormat + fileName,
      "base64": base64Image,
    });

    Response response_1 = await Dio()
        .post('http://service.mmlab.uit.edu.vn/receipt/task3/result', data: {
      "image-name": dateFormat + fileName,
      "filter-id": [0, 1, 2],
    });
    var jsonData_1 = response_1.data;
    var jsonFix_1 = jsonData_1.replaceAll("'", '"');
    var myData_1 = json.decode(jsonFix_1);
    print(myData_1);
    dataImg.addAll(myData_1);

    Response response_2 = await Dio()
        .post('http://service.mmlab.uit.edu.vn/receipt/task3/result', data: {
      "image-name": dateFormat + fileName,
      "filter-id": [3, 4, 5],
    });

    var jsonData_2 = response_2.data;
    var jsonFix_2 = jsonData_2.replaceAll("'", '"');
    var myData_2 = json.decode(jsonFix_2);
    print(myData_2);
    dataImg.addAll(myData_2);

    Response response_3 = await Dio()
        .post('http://service.mmlab.uit.edu.vn/receipt/task3/result', data: {
      "image-name": dateFormat + fileName,
      "filter-id": [6, 7, 8],
    });

    var jsonData_3 = response_3.data;
    var jsonFix_3 = jsonData_3.replaceAll("'", '"');
    var myData_3 = json.decode(jsonFix_3);
    print(myData_3);
    dataImg.addAll(myData_3);

    Response response_4 = await Dio()
        .post('http://service.mmlab.uit.edu.vn/receipt/task3/result', data: {
      "image-name": dateFormat + fileName,
      "filter-id": [9, 10, 11],
    });

    var jsonData_4 = response_4.data;
    var jsonFix_4 = jsonData_4.replaceAll("'", '"');
    var myData_4 = json.decode(jsonFix_4);
    print(myData_4);
    dataImg.addAll(myData_4);

    Response response_5 = await Dio()
        .post('http://service.mmlab.uit.edu.vn/receipt/task3/result', data: {
      "image-name": dateFormat + fileName,
      "filter-id": [12],
    });

    var jsonData_5 = response_5.data;
    var jsonFix_5 = jsonData_5.replaceAll("'", '"');
    var myData_5 = json.decode(jsonFix_5);
    print(myData_5[0]);
    dataImg.addAll(myData_5[0]);

    Response response_6 = await Dio()
        .post('http://service.mmlab.uit.edu.vn/receipt/task3/result', data: {
      "image-name": dateFormat + fileName,
      "filter-id": [13],
    });

    var jsonData_6 = response_6.data;
    var jsonFix_6 = jsonData_6.replaceAll("'", '"');
    var myData_6 = json.decode(jsonFix_6);
    print(myData_6);
    dataImg.addAll(myData_6);

    pr.hide();

    if (response_6.statusCode == 200) {
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => AlertDialog(
          title: Text('Notifications'),
          content: Text('Success'),
        ),
      );
    } else {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => AlertDialog(
                title: Text('Notifications'),
                content: Text('Error'),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            width: 412.3,
            height: 870.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/bgr2.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(117.1, 93.7),
            child: SizedBox(
              width: 178.0,
              height: 61.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 178.2, 32.1),
                    size: Size(178.2, 61.4),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 29.7, 31.3),
                          size: Size(178.2, 32.1),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_7gclze,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(36.4, 0.0, 22.1, 31.3),
                          size: Size(178.2, 32.1),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_o3zjn5,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(64.0, 0.0, 26.4, 32.1),
                          size: Size(178.2, 32.1),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_cvtjq1,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(96.8, 0.0, 25.2, 31.3),
                          size: Size(178.2, 32.1),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_gjj1kk,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(122.2, 0.0, 32.9, 31.3),
                          size: Size(178.2, 32.1),
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_p2lasp,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(158.6, 0.0, 19.7, 31.3),
                          size: Size(178.2, 32.1),
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_6jsxez,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(84.2, 36.6, 94.0, 24.8),
                    size: Size(178.2, 61.4),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 12.0, 24.4),
                          size: Size(94.0, 24.8),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_uswxj3,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(12.9, 1.3, 5.6, 23.1),
                          size: Size(94.0, 24.8),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_t4i9oa,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(21.5, 0.4, 4.8, 24.0),
                          size: Size(94.0, 24.8),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_73yjom,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(28.2, 4.4, 12.0, 20.4),
                          size: Size(94.0, 24.8),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_rb98xh,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(42.2, 8.5, 15.8, 16.2),
                          size: Size(94.0, 24.8),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_u4y95e,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(60.9, 8.5, 10.9, 15.8),
                          size: Size(94.0, 24.8),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_tt5kdh,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(73.0, 8.5, 13.2, 16.2),
                          size: Size(94.0, 24.8),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_xbyrvj,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(88.5, 19.1, 5.5, 5.5),
                          size: Size(94.0, 24.8),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_9o67zx,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(68.2, 438.7),
            child: SizedBox(
              width: 290.0,
              height: 80.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 290.0, 80.0),
                    size: Size(290.0, 80.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: BlendMask(
                      blendMode: BlendMode.multiply,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                const AssetImage('assets/images/shadow1.png'),
                            fit: BoxFit.fill,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.75),
                                BlendMode.dstIn),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(8.6, 8.0, 258.9, 50.0),
                    size: Size(290.0, 80.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 258.9, 50.0),
                          size: Size(258.9, 50.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.42),
                              gradient: LinearGradient(
                                begin: Alignment(-1.0, 0.0),
                                end: Alignment(1.0, 0.0),
                                colors: [
                                  const Color(0xffff8e7b),
                                  const Color(0xffff0000)
                                ],
                                stops: [0.0, 1.0],
                              ),
                            ),
                          ),
                        ),
                        FlatButton(
                          height: 50,
                          minWidth: 258.9,
                          onPressed: _uploadImage,
                          child: Text(''),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(86.6, 462.7),
            child: SizedBox(
              width: 239.0,
              height: 16.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 13.9, 16.1),
                    size: Size(238.9, 16.1),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_gb8g2c,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(15.7, 0.4, 13.4, 15.4),
                    size: Size(238.9, 16.1),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_70kc3t,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(31.4, 0.0, 16.6, 16.1),
                    size: Size(238.9, 16.1),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_kv7azu,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(49.4, 0.0, 16.6, 16.1),
                    size: Size(238.9, 16.1),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_nw9xlp,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(67.2, 0.0, 11.1, 16.1),
                    size: Size(238.9, 16.1),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_i3hcz4,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(80.9, 0.4, 10.8, 15.4),
                    size: Size(238.9, 16.1),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_za9klf,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(98.1, 0.4, 15.0, 15.4),
                    size: Size(238.9, 16.1),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_v8ss1n,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(113.3, 0.0, 16.6, 16.1),
                    size: Size(238.9, 16.1),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_ib5gg9,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(132.2, 0.4, 13.0, 15.8),
                    size: Size(238.9, 16.1),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_h0xolg,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(148.3, 0.4, 12.3, 15.4),
                    size: Size(238.9, 16.1),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_kjci6b,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(167.9, 0.4, 3.4, 15.4),
                    size: Size(238.9, 16.1),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_zebodh,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(174.4, 0.4, 17.4, 15.4),
                    size: Size(238.9, 16.1),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_9utnoq,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(193.4, 0.4, 16.1, 15.4),
                    size: Size(238.9, 16.1),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_pzfcfl,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(210.2, 0.0, 14.8, 16.1),
                    size: Size(238.9, 16.1),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_v1mq6s,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(228.1, 0.4, 10.8, 15.4),
                    size: Size(238.9, 16.1),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_dbjzt6,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(153.4, 821.4),
            child: SizedBox(
              width: 106.0,
              height: 13.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 3.4, 5.8, 6.7),
                    size: Size(106.2, 13.1),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_hsx4u0,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(6.6, 3.4, 4.5, 6.6),
                    size: Size(106.2, 13.1),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_8lr9s6,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(11.5, 3.4, 6.6, 6.7),
                    size: Size(106.2, 13.1),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_uoy7al,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(18.9, 3.4, 6.2, 6.7),
                    size: Size(106.2, 13.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_m6doym,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(25.7, 1.7, 5.0, 8.5),
                    size: Size(106.2, 13.1),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_xqqmu8,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(31.5, 3.4, 6.6, 6.7),
                    size: Size(106.2, 13.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_77d8li,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(39.1, 0.0, 7.0, 10.1),
                    size: Size(106.2, 13.1),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_m46rnf,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(51.2, 0.0, 7.0, 10.1),
                    size: Size(106.2, 13.1),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_pdopcj,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(58.6, 3.5, 7.3, 9.6),
                    size: Size(106.2, 13.1),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_bgs37m,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(70.3, 0.6, 8.1, 9.3),
                    size: Size(106.2, 13.1),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_o6m18d,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(80.3, 0.6, 8.1, 9.3),
                    size: Size(106.2, 13.1),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_21shag,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(90.4, 0.6, 5.9, 9.3),
                    size: Size(106.2, 13.1),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_rtiqx6,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(97.5, 0.6, 8.7, 9.3),
                    size: Size(106.2, 13.1),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_yxwjv5,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(170.0, 538.8),
            child: Transform.rotate(
              angle: 3.1416,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.SlideDown,
                    ease: Curves.bounceIn,
                    duration: 0.1,
                    pageBuilder: () => Original(),
                  ),
                ],
                child: SizedBox(
                  width: 72.0,
                  height: 72.0,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 71.8, 71.8),
                        size: Size(71.8, 71.8),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            gradient: LinearGradient(
                              begin: Alignment(-1.0, 0.0),
                              end: Alignment(1.0, 0.0),
                              colors: [
                                const Color(0xffff8e7b),
                                const Color(0xffff8170),
                                const Color(0xffff5348),
                                const Color(0xffff2f28),
                                const Color(0xffff1512),
                                const Color(0xffff0504),
                                const Color(0xffff0000)
                              ],
                              stops: [
                                0.0,
                                0.053,
                                0.275,
                                0.487,
                                0.684,
                                0.861,
                                1.0
                              ],
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(19.1, 13.9, 25.7, 44.0),
                        size: Size(71.8, 71.8),
                        pinTop: true,
                        pinBottom: true,
                        fixedWidth: true,
                        child: SvgPicture.string(
                          _svg_h7esjg,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_7gclze =
    '<svg viewBox="549.1 93.7 29.7 31.3" ><path  d="M 549.1199951171875 93.74299621582031 L 558.5070190429688 93.74299621582031 L 571.864990234375 115.5250015258789 L 571.9249877929688 115.5250015258789 L 571.9249877929688 93.74299621582031 L 578.844970703125 93.74299621582031 L 578.844970703125 125.0920028686523 L 569.8189697265625 125.0920028686523 L 556.0999755859375 102.7679977416992 L 556.0399780273438 102.7679977416992 L 556.0399780273438 125.0920028686523 L 549.1199951171875 125.0920028686523 L 549.1199951171875 93.74299621582031 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_o3zjn5 =
    '<svg viewBox="585.5 93.7 22.1 31.3" ><path  d="M 585.5239868164063 93.74299621582031 L 606.823974609375 93.74299621582031 L 606.823974609375 100.1210021972656 L 592.3829956054688 100.1210021972656 L 592.3829956054688 105.9570007324219 L 605.9819946289063 105.9570007324219 L 605.9819946289063 112.3359985351563 L 592.3829956054688 112.3359985351563 L 592.3829956054688 118.713996887207 L 607.6069946289063 118.713996887207 L 607.6069946289063 125.0920028686523 L 585.5239868164063 125.0920028686523 L 585.5239868164063 93.74299621582031 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_cvtjq1 =
    '<svg viewBox="613.1 93.7 26.4 32.1" ><path  d="M 639.4979858398438 112.9980010986328 C 639.4979858398438 114.8840026855469 639.2169799804688 116.6080017089844 638.655029296875 118.1719970703125 C 638.093017578125 119.7369995117188 637.260986328125 121.0910034179688 636.1580200195313 122.234001159668 C 635.0549926757813 123.3769989013672 633.6810302734375 124.2710037231445 632.0360107421875 124.9120025634766 C 630.3909912109375 125.5530014038086 628.4860229492188 125.8740005493164 626.3200073242188 125.8740005493164 C 624.1539916992188 125.8740005493164 622.2379760742188 125.5530014038086 620.573974609375 124.9120025634766 C 618.9089965820313 124.2710037231445 617.5250244140625 123.3769989013672 616.4219970703125 122.234001159668 C 615.3179931640625 121.0910034179688 614.4860229492188 119.7369995117188 613.9249877929688 118.1719970703125 C 613.3619995117188 116.6080017089844 613.0819702148438 114.8840026855469 613.0819702148438 112.9980010986328 L 613.0819702148438 93.74299621582031 L 620.0020141601563 93.74299621582031 L 620.0020141601563 112.7570037841797 C 620.0020141601563 114.681999206543 620.593994140625 116.2870025634766 621.7769775390625 117.5709991455078 C 622.9600219726563 118.8550033569336 624.4739990234375 119.4960021972656 626.3200073242188 119.4960021972656 C 628.125 119.4960021972656 629.6300048828125 118.8550033569336 630.8330078125 117.5709991455078 C 632.0360107421875 116.2870025634766 632.6380004882813 114.681999206543 632.6380004882813 112.7570037841797 L 632.6380004882813 93.74299621582031 L 639.4979858398438 93.74299621582031 L 639.4979858398438 112.9980010986328 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_gjj1kk =
    '<svg viewBox="645.9 93.7 25.2 31.3" ><path  d="M 645.8759765625 93.74299621582031 L 658.031005859375 93.74299621582031 C 659.635009765625 93.74299621582031 661.1489868164063 93.89299774169922 662.572998046875 94.19400024414063 C 663.9970092773438 94.49500274658203 665.2509765625 95.01599884033203 666.333984375 95.75800323486328 C 667.4169921875 96.50099945068359 668.2689819335938 97.48400115966797 668.8920288085938 98.70700073242188 C 669.5130004882813 99.93099975585938 669.823974609375 101.4449996948242 669.823974609375 103.25 C 669.823974609375 105.4560012817383 669.2529907226563 107.3320007324219 668.1090087890625 108.8759994506836 C 666.9660034179688 110.4209976196289 665.291015625 111.4130020141602 663.0850219726563 111.8539962768555 L 671.0280151367188 125.0920028686523 L 662.7239990234375 125.0920028686523 L 656.2249755859375 112.5759963989258 L 652.7960205078125 112.5759963989258 L 652.7960205078125 125.0920028686523 L 645.8759765625 125.0920028686523 L 645.8759765625 93.74299621582031 Z M 652.7960205078125 106.7399978637695 L 656.8870239257813 106.7399978637695 C 657.5280151367188 106.7399978637695 658.1900024414063 106.7200012207031 658.8729858398438 106.6800003051758 C 659.5549926757813 106.6399993896484 660.176025390625 106.4990005493164 660.7379760742188 106.2580032348633 C 661.2999877929688 106.0179977416992 661.760986328125 105.6569976806641 662.1220092773438 105.1750030517578 C 662.4829711914063 104.6940002441406 662.6640014648438 104.0319976806641 662.6640014648438 103.1890029907227 C 662.6640014648438 102.4280014038086 662.5029907226563 101.8059997558594 662.1820068359375 101.3239974975586 C 661.8610229492188 100.8430023193359 661.4400024414063 100.4720001220703 660.9190063476563 100.2109985351563 C 660.39697265625 99.95099639892578 659.8250122070313 99.78099822998047 659.2039794921875 99.69999694824219 C 658.5809936523438 99.62000274658203 657.9500122070313 99.57900238037109 657.3090209960938 99.57900238037109 L 652.7960205078125 99.57900238037109 L 652.7960205078125 106.7399978637695 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_p2lasp =
    '<svg viewBox="671.3 93.7 32.9 31.3" ><path  d="M 684.927001953125 93.74299621582031 L 690.5830078125 93.74299621582031 L 704.2420043945313 125.0920028686523 L 696.47998046875 125.0920028686523 L 693.77197265625 118.4729995727539 L 681.5570068359375 118.4729995727539 L 678.969970703125 125.0920028686523 L 671.3280029296875 125.0920028686523 L 684.927001953125 93.74299621582031 Z M 687.5750122070313 102.8889999389648 L 683.7239990234375 112.6370010375977 L 691.4249877929688 112.6370010375977 L 687.5750122070313 102.8889999389648 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_6jsxez =
    '<svg viewBox="707.7 93.7 19.7 31.3" ><path  d="M 707.6719970703125 93.74299621582031 L 714.531005859375 93.74299621582031 L 714.531005859375 118.713996887207 L 727.3480224609375 118.713996887207 L 727.3480224609375 125.0920028686523 L 707.6719970703125 125.0920028686523 L 707.6719970703125 93.74299621582031 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_uswxj3 =
    '<svg viewBox="633.3 130.4 12.0 24.4" ><path  d="M 636.4719848632813 143.1450042724609 L 633.3200073242188 143.1450042724609 L 633.3200073242188 139.3029937744141 L 636.4719848632813 139.3029937744141 L 636.4719848632813 136.5829925537109 C 636.4719848632813 135.7489929199219 636.5430297851563 134.9499969482422 636.68701171875 134.1869964599609 C 636.8309936523438 133.4250030517578 637.1190185546875 132.7630004882813 637.551025390625 132.2010040283203 C 637.9819946289063 131.6399993896484 638.593994140625 131.1940002441406 639.385986328125 130.8630065917969 C 640.177001953125 130.5319976806641 641.219970703125 130.3670043945313 642.5159912109375 130.3670043945313 C 643.0050048828125 130.3670043945313 643.47998046875 130.3809967041016 643.9400024414063 130.4089965820313 C 644.4010009765625 130.4389953613281 644.8610229492188 130.5110015869141 645.322021484375 130.625 L 645.06298828125 134.6840057373047 C 644.6309814453125 134.4830017089844 644.1270141601563 134.3820037841797 643.552001953125 134.3820037841797 C 642.7750244140625 134.3820037841797 642.198974609375 134.5480041503906 641.8250122070313 134.8780059814453 C 641.4509887695313 135.2089996337891 641.2639770507813 135.8780059814453 641.2639770507813 136.8860015869141 L 641.2639770507813 139.3029937744141 L 644.760986328125 139.3029937744141 L 644.760986328125 143.1450042724609 L 641.2639770507813 143.1450042724609 L 641.2639770507813 154.7590026855469 L 636.4719848632813 154.7590026855469 L 636.4719848632813 143.1450042724609 Z" fill="#ff8e7b" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_t4i9oa =
    '<svg viewBox="646.2 131.7 5.6 23.1" ><path  d="M 646.22802734375 134.4680023193359 C 646.22802734375 133.6909942626953 646.5009765625 133.0359954833984 647.0479736328125 132.5030059814453 C 647.594970703125 131.9709930419922 648.2420043945313 131.7050018310547 648.9910278320313 131.7050018310547 C 649.7680053710938 131.7050018310547 650.4299926757813 131.9709930419922 650.9769897460938 132.5030059814453 C 651.5230102539063 133.0359954833984 651.7969970703125 133.6909942626953 651.7969970703125 134.4680023193359 C 651.7969970703125 135.2169952392578 651.5230102539063 135.8639984130859 650.9769897460938 136.4109954833984 C 650.4299926757813 136.9579925537109 649.7680053710938 137.2310028076172 648.9910278320313 137.2310028076172 C 648.2420043945313 137.2310028076172 647.594970703125 136.9579925537109 647.0479736328125 136.4109954833984 C 646.5009765625 135.8639984130859 646.22802734375 135.2169952392578 646.22802734375 134.4680023193359 Z M 646.6170043945313 139.3029937744141 L 651.4089965820313 139.3029937744141 L 651.4089965820313 154.7590026855469 L 646.6170043945313 154.7590026855469 L 646.6170043945313 139.3029937744141 Z" fill="#ff8e7b" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_73yjom =
    '<svg viewBox="654.9 130.8 4.8 24.0" ><path  d="M 654.8619995117188 130.7550048828125 L 659.6539916992188 130.7550048828125 L 659.6539916992188 154.7590026855469 L 654.8619995117188 154.7590026855469 L 654.8619995117188 130.7550048828125 Z" fill="#ff8e7b" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_rb98xh =
    '<svg viewBox="661.6 134.8 12.0 20.4" ><path  d="M 673.5989990234375 143.1450042724609 L 669.4110107421875 143.1450042724609 L 669.4110107421875 148.2830047607422 C 669.4110107421875 148.7149963378906 669.4329833984375 149.1029968261719 669.4760131835938 149.4490051269531 C 669.5189819335938 149.7940063476563 669.6119995117188 150.0899963378906 669.7570190429688 150.3339996337891 C 669.9000244140625 150.5789947509766 670.1160278320313 150.7729949951172 670.4039916992188 150.9170074462891 C 670.6920166015625 151.0610046386719 671.094970703125 151.1320037841797 671.6129760742188 151.1320037841797 C 671.9010009765625 151.1320037841797 672.2459716796875 151.1109924316406 672.6489868164063 151.0679931640625 C 673.052001953125 151.0240020751953 673.3679809570313 150.9019927978516 673.5989990234375 150.7010040283203 L 673.5989990234375 154.6730041503906 C 673.0809936523438 154.8450012207031 672.5339965820313 154.9669952392578 671.958984375 155.0399932861328 C 671.3820190429688 155.1109924316406 670.8070068359375 155.1470031738281 670.2310180664063 155.1470031738281 C 669.4539794921875 155.1470031738281 668.719970703125 155.0610046386719 668.030029296875 154.8880004882813 C 667.3389892578125 154.7160034179688 666.7410278320313 154.4429931640625 666.2379760742188 154.0679931640625 C 665.7340087890625 153.6940002441406 665.3380126953125 153.2120056152344 665.051025390625 152.6219940185547 C 664.7630004882813 152.0319976806641 664.6190185546875 151.3200073242188 664.6190185546875 150.4850006103516 L 664.6190185546875 143.1450042724609 L 661.5540161132813 143.1450042724609 L 661.5540161132813 139.3029937744141 L 664.6190185546875 139.3029937744141 L 664.6190185546875 134.7700042724609 L 669.4110107421875 134.7700042724609 L 669.4110107421875 139.3029937744141 L 673.5989990234375 139.3029937744141 L 673.5989990234375 143.1450042724609 Z" fill="#ff8e7b" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_u4y95e =
    '<svg viewBox="675.5 138.9 15.8 16.2" ><path  d="M 690.6519775390625 152.0820007324219 C 689.875 153.0610046386719 688.9030151367188 153.8159942626953 687.7379760742188 154.3489990234375 C 686.572021484375 154.8809967041016 685.3699951171875 155.1470031738281 684.1329956054688 155.1470031738281 C 682.9240112304688 155.1470031738281 681.802001953125 154.9530029296875 680.7650146484375 154.5650024414063 C 679.72900390625 154.1759948730469 678.822998046875 153.6300048828125 678.0449829101563 152.9239959716797 C 677.2680053710938 152.218994140625 676.656005859375 151.3699951171875 676.2100219726563 150.3769989013672 C 675.7639770507813 149.3840026855469 675.541015625 148.2689971923828 675.541015625 147.031005859375 C 675.541015625 145.7940063476563 675.7639770507813 144.6779937744141 676.2100219726563 143.6849975585938 C 676.656005859375 142.6920013427734 677.2680053710938 141.8430023193359 678.0449829101563 141.1380004882813 C 678.822998046875 140.4329986572266 679.72900390625 139.8860015869141 680.7650146484375 139.4969940185547 C 681.802001953125 139.1089935302734 682.9240112304688 138.9149932861328 684.1329956054688 138.9149932861328 C 686.3779907226563 138.9149932861328 688.1400146484375 139.6419982910156 689.4210205078125 141.0950012207031 C 690.7020263671875 142.5489959716797 691.3419799804688 144.5269927978516 691.3419799804688 147.031005859375 L 691.3419799804688 148.5420074462891 L 680.2899780273438 148.5420074462891 C 680.4910278320313 149.4640045166016 680.9089965820313 150.1900024414063 681.5419921875 150.7220001220703 C 682.1749877929688 151.2550048828125 682.9520263671875 151.52099609375 683.8740234375 151.52099609375 C 684.6510009765625 151.52099609375 685.31298828125 151.3480072021484 685.8599853515625 151.0030059814453 C 686.406005859375 150.6580047607422 686.8809814453125 150.2120056152344 687.2839965820313 149.6640014648438 L 690.6519775390625 152.0820007324219 Z M 686.593017578125 145.2610015869141 C 686.6220092773438 144.4839935302734 686.3560180664063 143.8079986572266 685.7949829101563 143.2319946289063 C 685.2329711914063 142.6569976806641 684.52099609375 142.3690032958984 683.6580200195313 142.3690032958984 C 682.6220092773438 142.3690032958984 681.8150024414063 142.6640014648438 681.239990234375 143.2539978027344 C 680.6640014648438 143.843994140625 680.3480224609375 144.5130004882813 680.2899780273438 145.2610015869141 L 686.593017578125 145.2610015869141 Z" fill="#ff8e7b" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tt5kdh =
    '<svg viewBox="694.2 138.9 10.9 15.8" ><path  d="M 694.2349853515625 139.3029937744141 L 698.9840087890625 139.3029937744141 L 698.9840087890625 141.8070068359375 L 699.0700073242188 141.8070068359375 C 699.5880126953125 140.8569946289063 700.1929931640625 140.1380004882813 700.8839721679688 139.6490020751953 C 701.573974609375 139.1589965820313 702.4520263671875 138.9149932861328 703.5170288085938 138.9149932861328 C 703.7760009765625 138.9149932861328 704.0490112304688 138.9290008544922 704.3369750976563 138.9579925537109 C 704.625 138.9869995117188 704.8839721679688 139.0299987792969 705.114990234375 139.0870056152344 L 705.114990234375 143.447998046875 C 704.7689819335938 143.3609924316406 704.4310302734375 143.2899932861328 704.0999755859375 143.2319946289063 C 703.7689819335938 143.1739959716797 703.4310302734375 143.1450042724609 703.0859985351563 143.1450042724609 C 702.1640014648438 143.1450042724609 701.43798828125 143.2680053710938 700.905029296875 143.5130004882813 C 700.3720092773438 143.7570037841797 699.9619750976563 144.1100006103516 699.6749877929688 144.5700073242188 C 699.3870239257813 145.031005859375 699.2000122070313 145.5780029296875 699.114013671875 146.2109985351563 C 699.0269775390625 146.843994140625 698.9840087890625 147.5489959716797 698.9840087890625 148.3260040283203 L 698.9840087890625 154.7590026855469 L 694.2349853515625 154.7590026855469 L 694.2349853515625 139.3029937744141 Z" fill="#ff8e7b" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_xbyrvj =
    '<svg viewBox="706.3 138.9 13.2 16.2" ><path  d="M 715.906982421875 143.8789978027344 C 715.18798828125 142.9880065917969 714.2670288085938 142.5410003662109 713.1439819335938 142.5410003662109 C 712.7410278320313 142.5410003662109 712.3519897460938 142.6349945068359 711.97900390625 142.8220062255859 C 711.60400390625 143.0090026855469 711.4169921875 143.3470001220703 711.4169921875 143.8359985351563 C 711.4169921875 144.2109985351563 711.6190185546875 144.4909973144531 712.02197265625 144.6779937744141 C 712.4240112304688 144.8659973144531 712.9210205078125 145.0240020751953 713.510986328125 145.1529998779297 C 714.1010131835938 145.2830047607422 714.7420043945313 145.427001953125 715.4320068359375 145.5850067138672 C 716.1229858398438 145.7429962158203 716.7630004882813 145.9880065917969 717.35400390625 146.3190002441406 C 717.9429931640625 146.6499938964844 718.4400024414063 147.1109924316406 718.843017578125 147.6999969482422 C 719.2459716796875 148.2910003662109 719.447998046875 149.0749969482422 719.447998046875 150.0529937744141 C 719.447998046875 151.0610046386719 719.2319946289063 151.8880004882813 718.7999877929688 152.5359954833984 C 718.3679809570313 153.1829986572266 717.8140258789063 153.7010040283203 717.1380004882813 154.0899963378906 C 716.4609985351563 154.4779968261719 715.697998046875 154.7519989013672 714.8499755859375 154.9100036621094 C 714 155.0679931640625 713.1580200195313 155.1470031738281 712.323974609375 155.1470031738281 C 711.22998046875 155.1470031738281 710.135986328125 154.9889984130859 709.0430297851563 154.6730041503906 C 707.948974609375 154.3560028076172 707.0280151367188 153.8090057373047 706.280029296875 153.0319976806641 L 709.1290283203125 149.8370056152344 C 709.5889892578125 150.3840026855469 710.0859985351563 150.802001953125 710.6190185546875 151.0890045166016 C 711.1510009765625 151.3769989013672 711.791015625 151.52099609375 712.5399780273438 151.52099609375 C 713.0859985351563 151.52099609375 713.5759887695313 151.4349975585938 714.0079956054688 151.2619934082031 C 714.4400024414063 151.0890045166016 714.655029296875 150.802001953125 714.655029296875 150.3979949951172 C 714.655029296875 149.9960021972656 714.4530029296875 149.6940002441406 714.051025390625 149.4920043945313 C 713.6480102539063 149.2910003662109 713.1510009765625 149.125 712.5609741210938 148.9949951171875 C 711.9710083007813 148.8659973144531 711.3309936523438 148.7220001220703 710.6400146484375 148.5639953613281 C 709.9500122070313 148.406005859375 709.3090209960938 148.1609954833984 708.718994140625 147.8300018310547 C 708.1290283203125 147.4989929199219 707.6320190429688 147.0460052490234 707.22998046875 146.4700012207031 C 706.8259887695313 145.8939971923828 706.625 145.1170043945313 706.625 144.1390075683594 C 706.625 143.2469940185547 706.81201171875 142.4700012207031 707.18701171875 141.8070068359375 C 707.5599975585938 141.1450042724609 708.0570068359375 140.5980072021484 708.676025390625 140.1670074462891 C 709.2940063476563 139.7350006103516 709.9929809570313 139.4190063476563 710.77001953125 139.2169952392578 C 711.5469970703125 139.0160064697266 712.3380126953125 138.9149932861328 713.1439819335938 138.9149932861328 C 714.1519775390625 138.9149932861328 715.1729736328125 139.0659942626953 716.2100219726563 139.3679962158203 C 717.2459716796875 139.6699981689453 718.1229858398438 140.2100067138672 718.843017578125 140.9869995117188 L 715.906982421875 143.8789978027344 Z" fill="#ff8e7b" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_9o67zx =
    '<svg viewBox="721.9 149.4 5.5 5.5" ><path  d="M 721.864990234375 152.2120056152344 C 721.864990234375 151.4349975585938 722.1309814453125 150.7799987792969 722.6640014648438 150.2469940185547 C 723.1959838867188 149.7149963378906 723.8359985351563 149.4490051269531 724.5850219726563 149.4490051269531 C 725.3619995117188 149.4490051269531 726.0159912109375 149.7149963378906 726.5490112304688 150.2469940185547 C 727.0809936523438 150.7799987792969 727.3480224609375 151.4349975585938 727.3480224609375 152.2120056152344 C 727.3480224609375 152.9600067138672 727.0809936523438 153.6009979248047 726.5490112304688 154.1329956054688 C 726.0159912109375 154.6660003662109 725.3619995117188 154.9320068359375 724.5850219726563 154.9320068359375 C 723.8359985351563 154.9320068359375 723.1959838867188 154.6660003662109 722.6640014648438 154.1329956054688 C 722.1309814453125 153.6009979248047 721.864990234375 152.9600067138672 721.864990234375 152.2120056152344 Z" fill="#ff8e7b" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_gb8g2c =
    '<svg viewBox="518.6 462.7 13.9 16.1" ><path  d="M 529.4650268554688 467.0710144042969 C 528.7570190429688 466.2449951171875 527.7830200195313 465.8320007324219 526.5440063476563 465.8320007324219 C 525.8939819335938 465.8320007324219 525.2979736328125 465.9549865722656 524.7570190429688 466.2000122070313 C 524.2150268554688 466.4469909667969 523.7490234375 466.7909851074219 523.35498046875 467.2330017089844 C 522.9619750976563 467.6759948730469 522.6510009765625 468.197998046875 522.4249877929688 468.7980041503906 C 522.198974609375 469.3989868164063 522.0859985351563 470.06298828125 522.0859985351563 470.7909851074219 C 522.0859985351563 471.5 522.198974609375 472.1589965820313 522.4249877929688 472.7690124511719 C 522.6510009765625 473.3789978027344 522.9569702148438 473.9010009765625 523.3400268554688 474.3340148925781 C 523.7239990234375 474.7669982910156 524.1810302734375 475.1059875488281 524.7130126953125 475.3519897460938 C 525.2449951171875 475.5979919433594 525.8150024414063 475.7210083007813 526.4249877929688 475.7210083007813 C 527.114013671875 475.7210083007813 527.72900390625 475.5780029296875 528.27001953125 475.2929992675781 C 528.8109741210938 475.0079956054688 529.2589721679688 474.6090087890625 529.614013671875 474.0969848632813 L 532.447998046875 476.1929931640625 C 531.7979736328125 477.1380004882813 530.9710083007813 477.8169860839844 529.9669799804688 478.2300109863281 C 528.9639892578125 478.6440124511719 527.9299926757813 478.8500061035156 526.8679809570313 478.8500061035156 C 525.6680297851563 478.8500061035156 524.5599975585938 478.6629943847656 523.5469970703125 478.2890014648438 C 522.5330200195313 477.9159851074219 521.6580200195313 477.3789978027344 520.9199829101563 476.6799926757813 C 520.1810302734375 475.9819946289063 519.6060180664063 475.135986328125 519.1929931640625 474.1419982910156 C 518.7789916992188 473.1480102539063 518.572998046875 472.031005859375 518.572998046875 470.7909851074219 C 518.572998046875 469.5509948730469 518.7789916992188 468.4339904785156 519.1929931640625 467.4400024414063 C 519.6060180664063 466.4469909667969 520.1810302734375 465.5950012207031 520.9199829101563 464.8869934082031 C 521.6580200195313 464.1780090332031 522.5330200195313 463.6369934082031 523.5469970703125 463.2630004882813 C 524.5599975585938 462.8900146484375 525.6680297851563 462.7019958496094 526.8679809570313 462.7019958496094 C 527.7540283203125 462.7019958496094 528.6729736328125 462.8699951171875 529.6290283203125 463.2040100097656 C 530.5830078125 463.5390014648438 531.3939819335938 464.1189880371094 532.0640258789063 464.9460144042969 L 529.4650268554688 467.0710144042969 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_70kc3t =
    '<svg viewBox="534.3 463.1 13.4 15.4" ><path  d="M 534.2780151367188 463.0859985351563 L 537.6729736328125 463.0859985351563 L 537.6729736328125 468.81298828125 L 544.2570190429688 468.81298828125 L 544.2570190429688 463.0859985351563 L 547.6510009765625 463.0859985351563 L 547.6510009765625 478.4660034179688 L 544.2570190429688 478.4660034179688 L 544.2570190429688 471.8240051269531 L 537.6729736328125 471.8240051269531 L 537.6729736328125 478.4660034179688 L 534.2780151367188 478.4660034179688 L 534.2780151367188 463.0859985351563 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_kv7azu =
    '<svg viewBox="550.0 462.7 16.6 16.1" ><path  d="M 549.9539794921875 470.7909851074219 C 549.9539794921875 469.5509948730469 550.1599731445313 468.4339904785156 550.573974609375 467.4400024414063 C 550.9869995117188 466.4469909667969 551.56201171875 465.5950012207031 552.2999877929688 464.8869934082031 C 553.0390014648438 464.1780090332031 553.9140014648438 463.6369934082031 554.927001953125 463.2630004882813 C 555.9409790039063 462.8900146484375 557.0479736328125 462.7019958496094 558.2490234375 462.7019958496094 C 559.448974609375 462.7019958496094 560.5609741210938 462.8900146484375 561.5850219726563 463.2630004882813 C 562.6079711914063 463.6369934082031 563.489013671875 464.1780090332031 564.2269897460938 464.8869934082031 C 564.9650268554688 465.5950012207031 565.541015625 466.4469909667969 565.9539794921875 467.4400024414063 C 566.3670043945313 468.4339904785156 566.573974609375 469.5509948730469 566.573974609375 470.7909851074219 C 566.573974609375 472.031005859375 566.3670043945313 473.1480102539063 565.9539794921875 474.1419982910156 C 565.541015625 475.135986328125 564.9650268554688 475.9819946289063 564.2269897460938 476.6799926757813 C 563.489013671875 477.3789978027344 562.6079711914063 477.9159851074219 561.5850219726563 478.2890014648438 C 560.5609741210938 478.6629943847656 559.448974609375 478.8500061035156 558.2490234375 478.8500061035156 C 557.0479736328125 478.8500061035156 555.9409790039063 478.6629943847656 554.927001953125 478.2890014648438 C 553.9140014648438 477.9159851074219 553.0390014648438 477.3789978027344 552.2999877929688 476.6799926757813 C 551.56201171875 475.9819946289063 550.9869995117188 475.135986328125 550.573974609375 474.1419982910156 C 550.1599731445313 473.1480102539063 549.9539794921875 472.031005859375 549.9539794921875 470.7909851074219 Z M 553.4660034179688 470.7909851074219 C 553.4660034179688 471.5 553.5800170898438 472.1589965820313 553.8060302734375 472.7690124511719 C 554.031982421875 473.3789978027344 554.3519897460938 473.9010009765625 554.7650146484375 474.3340148925781 C 555.177978515625 474.7669982910156 555.6799926757813 475.1059875488281 556.27099609375 475.3519897460938 C 556.8610229492188 475.5979919433594 557.52001953125 475.7210083007813 558.2490234375 475.7210083007813 C 558.9769897460938 475.7210083007813 559.635986328125 475.5979919433594 560.2269897460938 475.3519897460938 C 560.8170166015625 475.1059875488281 561.3189697265625 474.7669982910156 561.7319946289063 474.3340148925781 C 562.14501953125 473.9010009765625 562.4650268554688 473.3789978027344 562.6920166015625 472.7690124511719 C 562.9180297851563 472.1589965820313 563.031005859375 471.5 563.031005859375 470.7909851074219 C 563.031005859375 470.06298828125 562.9180297851563 469.3989868164063 562.6920166015625 468.7980041503906 C 562.4650268554688 468.197998046875 562.14501953125 467.6759948730469 561.7319946289063 467.2330017089844 C 561.3189697265625 466.7909851074219 560.8170166015625 466.4469909667969 560.2269897460938 466.2000122070313 C 559.635986328125 465.9549865722656 558.9769897460938 465.8320007324219 558.2490234375 465.8320007324219 C 557.52001953125 465.8320007324219 556.8610229492188 465.9549865722656 556.27099609375 466.2000122070313 C 555.6799926757813 466.4469909667969 555.177978515625 466.7909851074219 554.7650146484375 467.2330017089844 C 554.3519897460938 467.6759948730469 554.031982421875 468.197998046875 553.8060302734375 468.7980041503906 C 553.5800170898438 469.3989868164063 553.4660034179688 470.06298828125 553.4660034179688 470.7909851074219 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_nw9xlp =
    '<svg viewBox="568.0 462.7 16.6 16.1" ><path  d="M 568.02001953125 470.7909851074219 C 568.02001953125 469.5509948730469 568.2260131835938 468.4339904785156 568.6400146484375 467.4400024414063 C 569.052978515625 466.4469909667969 569.6290283203125 465.5950012207031 570.3670043945313 464.8869934082031 C 571.10498046875 464.1780090332031 571.97998046875 463.6369934082031 572.9940185546875 463.2630004882813 C 574.0070190429688 462.8900146484375 575.114990234375 462.7019958496094 576.3150024414063 462.7019958496094 C 577.5150146484375 462.7019958496094 578.6279907226563 462.8900146484375 579.6510009765625 463.2630004882813 C 580.6740112304688 463.6369934082031 581.5549926757813 464.1780090332031 582.2940063476563 464.8869934082031 C 583.031005859375 465.5950012207031 583.6069946289063 466.4469909667969 584.02001953125 467.4400024414063 C 584.4329833984375 468.4339904785156 584.6400146484375 469.5509948730469 584.6400146484375 470.7909851074219 C 584.6400146484375 472.031005859375 584.4329833984375 473.1480102539063 584.02001953125 474.1419982910156 C 583.6069946289063 475.135986328125 583.031005859375 475.9819946289063 582.2940063476563 476.6799926757813 C 581.5549926757813 477.3789978027344 580.6740112304688 477.9159851074219 579.6510009765625 478.2890014648438 C 578.6279907226563 478.6629943847656 577.5150146484375 478.8500061035156 576.3150024414063 478.8500061035156 C 575.114990234375 478.8500061035156 574.0070190429688 478.6629943847656 572.9940185546875 478.2890014648438 C 571.97998046875 477.9159851074219 571.10498046875 477.3789978027344 570.3670043945313 476.6799926757813 C 569.6290283203125 475.9819946289063 569.052978515625 475.135986328125 568.6400146484375 474.1419982910156 C 568.2260131835938 473.1480102539063 568.02001953125 472.031005859375 568.02001953125 470.7909851074219 Z M 571.5330200195313 470.7909851074219 C 571.5330200195313 471.5 571.64599609375 472.1589965820313 571.8729858398438 472.7690124511719 C 572.0980224609375 473.3789978027344 572.4190063476563 473.9010009765625 572.8319702148438 474.3340148925781 C 573.2449951171875 474.7669982910156 573.7470092773438 475.1059875488281 574.3380126953125 475.3519897460938 C 574.927001953125 475.5979919433594 575.5869750976563 475.7210083007813 576.3150024414063 475.7210083007813 C 577.0440063476563 475.7210083007813 577.7030029296875 475.5979919433594 578.2940063476563 475.3519897460938 C 578.8829956054688 475.1059875488281 579.385009765625 474.7669982910156 579.7979736328125 474.3340148925781 C 580.2119750976563 473.9010009765625 580.531982421875 473.3789978027344 580.7579956054688 472.7690124511719 C 580.9840087890625 472.1589965820313 581.0969848632813 471.5 581.0969848632813 470.7909851074219 C 581.0969848632813 470.06298828125 580.9840087890625 469.3989868164063 580.7579956054688 468.7980041503906 C 580.531982421875 468.197998046875 580.2119750976563 467.6759948730469 579.7979736328125 467.2330017089844 C 579.385009765625 466.7909851074219 578.8829956054688 466.4469909667969 578.2940063476563 466.2000122070313 C 577.7030029296875 465.9549865722656 577.0440063476563 465.8320007324219 576.3150024414063 465.8320007324219 C 575.5869750976563 465.8320007324219 574.927001953125 465.9549865722656 574.3380126953125 466.2000122070313 C 573.7470092773438 466.4469909667969 573.2449951171875 466.7909851074219 572.8319702148438 467.2330017089844 C 572.4190063476563 467.6759948730469 572.0980224609375 468.197998046875 571.8729858398438 468.7980041503906 C 571.64599609375 469.3989868164063 571.5330200195313 470.06298828125 571.5330200195313 470.7909851074219 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_i3hcz4 =
    '<svg viewBox="585.8 462.7 11.1 16.1" ><path  d="M 594.5 466.8349914550781 C 594.2239990234375 466.5010070800781 593.8499755859375 466.25 593.3779907226563 466.0830078125 C 592.906005859375 465.9159851074219 592.4630126953125 465.8320007324219 592.0490112304688 465.8320007324219 C 591.81298828125 465.8320007324219 591.56201171875 465.8609924316406 591.2969970703125 465.9200134277344 C 591.031005859375 465.97900390625 590.7849731445313 466.072998046875 590.5579833984375 466.2000122070313 C 590.3330078125 466.3290100097656 590.14501953125 466.4909973144531 589.9979858398438 466.68798828125 C 589.8499755859375 466.8840026855469 589.7760009765625 467.1300048828125 589.7760009765625 467.4249877929688 C 589.7760009765625 467.8980102539063 589.9539794921875 468.2569885253906 590.3079833984375 468.5029907226563 C 590.6619873046875 468.75 591.0999755859375 468.9599914550781 591.6220092773438 469.1380004882813 C 592.1420288085938 469.3150024414063 592.708984375 469.4869995117188 593.3189697265625 469.6539916992188 C 593.927978515625 469.8219909667969 594.4949951171875 470.06298828125 595.0159912109375 470.3770141601563 C 595.5380249023438 470.6929931640625 595.9760131835938 471.1210021972656 596.3300170898438 471.6619873046875 C 596.6840209960938 472.2030029296875 596.8610229492188 472.9169921875 596.8610229492188 473.802001953125 C 596.8610229492188 474.6679992675781 596.698974609375 475.4159851074219 596.375 476.0450134277344 C 596.0490112304688 476.6759948730469 595.6170043945313 477.1969909667969 595.0759887695313 477.6099853515625 C 594.5339965820313 478.0230102539063 593.9039916992188 478.3340148925781 593.1859741210938 478.5400085449219 C 592.4669799804688 478.7470092773438 591.7150268554688 478.8500061035156 590.927001953125 478.8500061035156 C 589.9240112304688 478.8500061035156 588.9940185546875 478.7030029296875 588.1380004882813 478.4070129394531 C 587.281982421875 478.1119995117188 586.489990234375 477.6199951171875 585.760986328125 476.9309997558594 L 588.1530151367188 474.2739868164063 C 588.5070190429688 474.7279968261719 588.9500122070313 475.0820007324219 589.4810180664063 475.3370056152344 C 590.0120239257813 475.5929870605469 590.56298828125 475.7210083007813 591.1339721679688 475.7210083007813 C 591.4099731445313 475.7210083007813 591.6849975585938 475.6910095214844 591.9609985351563 475.6319885253906 C 592.2360229492188 475.572998046875 592.4869995117188 475.4750061035156 592.7139892578125 475.3370056152344 C 592.9400024414063 475.2000122070313 593.1220092773438 475.0320129394531 593.2589721679688 474.8349914550781 C 593.39697265625 474.6390075683594 593.4660034179688 474.4020080566406 593.4660034179688 474.1270141601563 C 593.4660034179688 473.6539916992188 593.2899780273438 473.2860107421875 592.9349975585938 473.0199890136719 C 592.5809936523438 472.7539978027344 592.1380004882813 472.5280151367188 591.6069946289063 472.3410034179688 C 591.0750122070313 472.1539916992188 590.4949951171875 471.9670104980469 589.864990234375 471.7799987792969 C 589.2349853515625 471.5929870605469 588.655029296875 471.3370056152344 588.1240234375 471.0119934082031 C 587.5910034179688 470.68798828125 587.1489868164063 470.2699890136719 586.7949829101563 469.7579956054688 C 586.4400024414063 469.2460021972656 586.2630004882813 468.5580139160156 586.2630004882813 467.6910095214844 C 586.2630004882813 466.864990234375 586.4249877929688 466.1419982910156 586.7509765625 465.5220031738281 C 587.0750122070313 464.9010009765625 587.5130004882813 464.385009765625 588.0640258789063 463.9719848632813 C 588.614990234375 463.5580139160156 589.239990234375 463.2439880371094 589.9390258789063 463.0270080566406 C 590.6370239257813 462.8110046386719 591.3709716796875 462.7019958496094 592.1380004882813 462.7019958496094 C 593.0239868164063 462.7019958496094 593.864990234375 462.8250122070313 594.6619873046875 463.0710144042969 C 595.4600219726563 463.3169860839844 596.1820068359375 463.7260131835938 596.8319702148438 464.2959899902344 L 594.5 466.8349914550781 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_za9klf =
    '<svg viewBox="599.5 463.1 10.8 15.4" ><path  d="M 599.5180053710938 463.0859985351563 L 609.968017578125 463.0859985351563 L 609.968017578125 466.2149963378906 L 602.8829956054688 466.2149963378906 L 602.8829956054688 469.0790100097656 L 609.5549926757813 469.0790100097656 L 609.5549926757813 472.2080078125 L 602.8829956054688 472.2080078125 L 602.8829956054688 475.3370056152344 L 610.3519897460938 475.3370056152344 L 610.3519897460938 478.4660034179688 L 599.5180053710938 478.4660034179688 L 599.5180053710938 463.0859985351563 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_v8ss1n =
    '<svg viewBox="616.6 463.1 15.0 15.4" ><path  d="M 622.426025390625 471.9129943847656 L 616.6400146484375 463.0859985351563 L 620.8610229492188 463.0859985351563 L 624.1380004882813 468.8420104980469 L 627.56201171875 463.0859985351563 L 631.6069946289063 463.0859985351563 L 625.8209838867188 471.9129943847656 L 625.8209838867188 478.4660034179688 L 622.426025390625 478.4660034179688 L 622.426025390625 471.9129943847656 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ib5gg9 =
    '<svg viewBox="631.9 462.7 16.6 16.1" ><path  d="M 631.9019775390625 470.7909851074219 C 631.9019775390625 469.5509948730469 632.1079711914063 468.4339904785156 632.52197265625 467.4400024414063 C 632.9349975585938 466.4469909667969 633.510009765625 465.5950012207031 634.2490234375 464.8869934082031 C 634.9869995117188 464.1780090332031 635.8619995117188 463.6369934082031 636.8759765625 463.2630004882813 C 637.8889770507813 462.8900146484375 638.9970092773438 462.7019958496094 640.197021484375 462.7019958496094 C 641.39697265625 462.7019958496094 642.5089721679688 462.8900146484375 643.5330200195313 463.2630004882813 C 644.5560302734375 463.6369934082031 645.43701171875 464.1780090332031 646.1749877929688 464.8869934082031 C 646.9130249023438 465.5950012207031 647.489013671875 466.4469909667969 647.9019775390625 467.4400024414063 C 648.3150024414063 468.4339904785156 648.52197265625 469.5509948730469 648.52197265625 470.7909851074219 C 648.52197265625 472.031005859375 648.3150024414063 473.1480102539063 647.9019775390625 474.1419982910156 C 647.489013671875 475.135986328125 646.9130249023438 475.9819946289063 646.1749877929688 476.6799926757813 C 645.43701171875 477.3789978027344 644.5560302734375 477.9159851074219 643.5330200195313 478.2890014648438 C 642.5089721679688 478.6629943847656 641.39697265625 478.8500061035156 640.197021484375 478.8500061035156 C 638.9970092773438 478.8500061035156 637.8889770507813 478.6629943847656 636.8759765625 478.2890014648438 C 635.8619995117188 477.9159851074219 634.9869995117188 477.3789978027344 634.2490234375 476.6799926757813 C 633.510009765625 475.9819946289063 632.9349975585938 475.135986328125 632.52197265625 474.1419982910156 C 632.1079711914063 473.1480102539063 631.9019775390625 472.031005859375 631.9019775390625 470.7909851074219 Z M 635.4149780273438 470.7909851074219 C 635.4149780273438 471.5 635.5280151367188 472.1589965820313 635.7550048828125 472.7690124511719 C 635.97998046875 473.3789978027344 636.2999877929688 473.9010009765625 636.7139892578125 474.3340148925781 C 637.1270141601563 474.7669982910156 637.6290283203125 475.1059875488281 638.218994140625 475.3519897460938 C 638.8090209960938 475.5979919433594 639.468017578125 475.7210083007813 640.197021484375 475.7210083007813 C 640.9249877929688 475.7210083007813 641.5850219726563 475.5979919433594 642.1749877929688 475.3519897460938 C 642.7650146484375 475.1059875488281 643.2670288085938 474.7669982910156 643.6799926757813 474.3340148925781 C 644.093017578125 473.9010009765625 644.4140014648438 473.3789978027344 644.6400146484375 472.7690124511719 C 644.8660278320313 472.1589965820313 644.97900390625 471.5 644.97900390625 470.7909851074219 C 644.97900390625 470.06298828125 644.8660278320313 469.3989868164063 644.6400146484375 468.7980041503906 C 644.4140014648438 468.197998046875 644.093017578125 467.6759948730469 643.6799926757813 467.2330017089844 C 643.2670288085938 466.7909851074219 642.7650146484375 466.4469909667969 642.1749877929688 466.2000122070313 C 641.5850219726563 465.9549865722656 640.9249877929688 465.8320007324219 640.197021484375 465.8320007324219 C 639.468017578125 465.8320007324219 638.8090209960938 465.9549865722656 638.218994140625 466.2000122070313 C 637.6290283203125 466.4469909667969 637.1270141601563 466.7909851074219 636.7139892578125 467.2330017089844 C 636.2999877929688 467.6759948730469 635.97998046875 468.197998046875 635.7550048828125 468.7980041503906 C 635.5280151367188 469.3989868164063 635.4149780273438 470.06298828125 635.4149780273438 470.7909851074219 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_h0xolg =
    '<svg viewBox="650.8 463.1 13.0 15.8" ><path  d="M 663.7550048828125 472.5329895019531 C 663.7550048828125 473.4580078125 663.6170043945313 474.3039855957031 663.3410034179688 475.0710144042969 C 663.0650024414063 475.8389892578125 662.656982421875 476.5029907226563 662.1160278320313 477.0639953613281 C 661.5750122070313 477.625 660.9010009765625 478.06298828125 660.093017578125 478.3779907226563 C 659.2869873046875 478.6919860839844 658.3519897460938 478.8500061035156 657.2899780273438 478.8500061035156 C 656.2260131835938 478.8500061035156 655.2869873046875 478.6919860839844 654.469970703125 478.3779907226563 C 653.6530151367188 478.06298828125 652.9739990234375 477.625 652.4329833984375 477.0639953613281 C 651.8909912109375 476.5029907226563 651.4829711914063 475.8389892578125 651.2080078125 475.0710144042969 C 650.9320068359375 474.3039855957031 650.7949829101563 473.4580078125 650.7949829101563 472.5329895019531 L 650.7949829101563 463.0859985351563 L 654.1900024414063 463.0859985351563 L 654.1900024414063 472.4150085449219 C 654.1900024414063 473.3590087890625 654.47998046875 474.1470031738281 655.0599975585938 474.7760009765625 C 655.6400146484375 475.406005859375 656.3829956054688 475.7210083007813 657.2899780273438 475.7210083007813 C 658.1740112304688 475.7210083007813 658.9130249023438 475.406005859375 659.5040283203125 474.7760009765625 C 660.093017578125 474.1470031738281 660.3889770507813 473.3590087890625 660.3889770507813 472.4150085449219 L 660.3889770507813 463.0859985351563 L 663.7550048828125 463.0859985351563 L 663.7550048828125 472.5329895019531 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_kjci6b =
    '<svg viewBox="666.9 463.1 12.3 15.4" ><path  d="M 666.8829956054688 463.0859985351563 L 672.8460083007813 463.0859985351563 C 673.6329956054688 463.0859985351563 674.3770141601563 463.1600036621094 675.0759887695313 463.3070068359375 C 675.7739868164063 463.4549865722656 676.3889770507813 463.7109985351563 676.9210205078125 464.0750122070313 C 677.4520263671875 464.4389953613281 677.8699951171875 464.9209899902344 678.1749877929688 465.5220031738281 C 678.47998046875 466.1220092773438 678.6320190429688 466.864990234375 678.6320190429688 467.7510070800781 C 678.6320190429688 468.8330078125 678.3519897460938 469.7529907226563 677.7919921875 470.510009765625 C 677.2310180664063 471.2680053710938 676.4089965820313 471.7550048828125 675.3270263671875 471.9719848632813 L 679.2230224609375 478.4660034179688 L 675.1489868164063 478.4660034179688 L 671.9619750976563 472.3259887695313 L 670.2789916992188 472.3259887695313 L 670.2789916992188 478.4660034179688 L 666.8829956054688 478.4660034179688 L 666.8829956054688 463.0859985351563 Z M 670.2789916992188 469.4620056152344 L 672.2860107421875 469.4620056152344 C 672.5999755859375 469.4620056152344 672.9249877929688 469.4530029296875 673.260009765625 469.4330139160156 C 673.593994140625 469.4140014648438 673.8989868164063 469.343994140625 674.1749877929688 469.2260131835938 C 674.4509887695313 469.1080017089844 674.677001953125 468.9309997558594 674.85400390625 468.6950073242188 C 675.031005859375 468.4590148925781 675.1199951171875 468.1340026855469 675.1199951171875 467.7210083007813 C 675.1199951171875 467.3469848632813 675.041015625 467.0419921875 674.8829956054688 466.8059997558594 C 674.7260131835938 466.5690002441406 674.5189819335938 466.3880004882813 674.2630004882813 466.2590026855469 C 674.0070190429688 466.1319885253906 673.7269897460938 466.0480041503906 673.4229736328125 466.0079956054688 C 673.1170043945313 465.968994140625 672.8070068359375 465.9500122070313 672.4929809570313 465.9500122070313 L 670.2789916992188 465.9500122070313 L 670.2789916992188 469.4620056152344 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_zebodh =
    '<svg viewBox="686.5 463.1 3.4 15.4" ><path  d="M 686.5139770507813 463.0859985351563 L 689.9089965820313 463.0859985351563 L 689.9089965820313 478.4660034179688 L 686.5139770507813 478.4660034179688 L 686.5139770507813 463.0859985351563 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_9utnoq =
    '<svg viewBox="693.0 463.1 17.4 15.4" ><path  d="M 693.0079956054688 463.0859985351563 L 698.14501953125 463.0859985351563 L 701.68798828125 473.1229858398438 L 701.7169799804688 473.1229858398438 L 705.2899780273438 463.0859985351563 L 710.39599609375 463.0859985351563 L 710.39599609375 478.4660034179688 L 707.0020141601563 478.4660034179688 L 707.0020141601563 466.68798828125 L 706.9420166015625 466.68798828125 L 702.8980102539063 478.4660034179688 L 700.3300170898438 478.4660034179688 L 696.4329833984375 466.68798828125 L 696.4039916992188 466.68798828125 L 696.4039916992188 478.4660034179688 L 693.0079956054688 478.4660034179688 L 693.0079956054688 463.0859985351563 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_pzfcfl =
    '<svg viewBox="711.9 463.1 16.1 15.4" ><path  d="M 718.60302734375 463.0859985351563 L 721.3779907226563 463.0859985351563 L 728.0789794921875 478.4660034179688 L 724.27099609375 478.4660034179688 L 722.9420166015625 475.218994140625 L 716.9500122070313 475.218994140625 L 715.6799926757813 478.4660034179688 L 711.9310302734375 478.4660034179688 L 718.60302734375 463.0859985351563 Z M 719.9019775390625 467.572998046875 L 718.0120239257813 472.3550109863281 L 721.791015625 472.3550109863281 L 719.9019775390625 467.572998046875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_v1mq6s =
    '<svg viewBox="728.8 462.7 14.8 16.1" ><path  d="M 743.5479736328125 477.4030151367188 C 742.5449829101563 477.9159851074219 741.5009765625 478.2850036621094 740.4190063476563 478.510986328125 C 739.3369750976563 478.7369995117188 738.2239990234375 478.8500061035156 737.0830078125 478.8500061035156 C 735.8820190429688 478.8500061035156 734.7750244140625 478.6629943847656 733.760986328125 478.2890014648438 C 732.7479858398438 477.9159851074219 731.8729858398438 477.3789978027344 731.1339721679688 476.6799926757813 C 730.39599609375 475.9819946289063 729.8209838867188 475.135986328125 729.4080200195313 474.1419982910156 C 728.9940185546875 473.1480102539063 728.7880249023438 472.031005859375 728.7880249023438 470.7909851074219 C 728.7880249023438 469.5509948730469 728.9940185546875 468.4339904785156 729.4080200195313 467.4400024414063 C 729.8209838867188 466.4469909667969 730.39599609375 465.5950012207031 731.1339721679688 464.8869934082031 C 731.8729858398438 464.1780090332031 732.7479858398438 463.6369934082031 733.760986328125 463.2630004882813 C 734.7750244140625 462.8900146484375 735.8820190429688 462.7019958496094 737.0830078125 462.7019958496094 C 738.322998046875 462.7019958496094 739.4600219726563 462.8500061035156 740.4929809570313 463.1449890136719 C 741.5260009765625 463.4400024414063 742.4359741210938 463.9519958496094 743.2230224609375 464.6799926757813 L 740.8319702148438 467.2780151367188 C 740.3790283203125 466.7860107421875 739.8619995117188 466.4219970703125 739.281982421875 466.1860046386719 C 738.7020263671875 465.9500122070313 737.968017578125 465.8320007324219 737.0830078125 465.8320007324219 C 736.35400390625 465.8320007324219 735.6950073242188 465.9549865722656 735.10498046875 466.2000122070313 C 734.5139770507813 466.4469909667969 734.0120239257813 466.7909851074219 733.5989990234375 467.2330017089844 C 733.1859741210938 467.6759948730469 732.8660278320313 468.197998046875 732.6400146484375 468.7980041503906 C 732.4140014648438 469.3989868164063 732.2999877929688 470.06298828125 732.2999877929688 470.7909851074219 C 732.2999877929688 471.5 732.4140014648438 472.1589965820313 732.6400146484375 472.7690124511719 C 732.8660278320313 473.3789978027344 733.1859741210938 473.9010009765625 733.5989990234375 474.3340148925781 C 734.0120239257813 474.7669982910156 734.5139770507813 475.1059875488281 735.10498046875 475.3519897460938 C 735.6950073242188 475.5979919433594 736.35400390625 475.7210083007813 737.0830078125 475.7210083007813 C 737.8309936523438 475.7210083007813 738.469970703125 475.6369934082031 739.0020141601563 475.4700012207031 C 739.5330200195313 475.3030090332031 739.9559936523438 475.1409912109375 740.27099609375 474.9830017089844 L 740.27099609375 472.4739990234375 L 737.5260009765625 472.4739990234375 L 737.5260009765625 469.343994140625 L 743.5479736328125 469.343994140625 L 743.5479736328125 477.4030151367188 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_dbjzt6 =
    '<svg viewBox="746.7 463.1 10.8 15.4" ><path  d="M 746.676025390625 463.0859985351563 L 757.1270141601563 463.0859985351563 L 757.1270141601563 466.2149963378906 L 750.0419921875 466.2149963378906 L 750.0419921875 469.0790100097656 L 756.7139892578125 469.0790100097656 L 756.7139892578125 472.2080078125 L 750.0419921875 472.2080078125 L 750.0419921875 475.3370056152344 L 757.510009765625 475.3370056152344 L 757.510009765625 478.4660034179688 L 746.676025390625 478.4660034179688 L 746.676025390625 463.0859985351563 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_hsx4u0 =
    '<svg viewBox="585.4 824.8 5.8 6.7" ><path  d="M 589.9080200195313 827.0330200195313 C 589.81201171875 826.9019775390625 589.677001953125 826.7890014648438 589.5050048828125 826.6929931640625 C 589.3319702148438 826.5969848632813 589.1430053710938 826.5490112304688 588.9400024414063 826.5490112304688 C 588.43798828125 826.5490112304688 588.0479736328125 826.698974609375 587.7659912109375 826.9979858398438 C 587.4860229492188 827.2960205078125 587.344970703125 827.6849975585938 587.344970703125 828.1619873046875 C 587.344970703125 828.6640014648438 587.4860229492188 829.0609741210938 587.7659912109375 829.35400390625 C 588.0479736328125 829.64697265625 588.43798828125 829.7930297851563 588.9400024414063 829.7930297851563 C 589.155029296875 829.7930297851563 589.343017578125 829.7420043945313 589.5050048828125 829.6409912109375 C 589.666015625 829.5390014648438 589.7999877929688 829.4229736328125 589.9080200195313 829.291015625 L 591.2160034179688 830.6710205078125 C 590.905029296875 830.9810180664063 590.5440063476563 831.2030029296875 590.1320190429688 831.333984375 C 589.718994140625 831.4650268554688 589.322998046875 831.531005859375 588.9400024414063 831.531005859375 C 588.43798828125 831.531005859375 587.9719848632813 831.4500122070313 587.5430297851563 831.2890014648438 C 587.1129760742188 831.1279907226563 586.7360229492188 830.9010009765625 586.4140014648438 830.6079711914063 C 586.0910034179688 830.3150024414063 585.8380126953125 829.9630126953125 585.6519775390625 829.551025390625 C 585.4660034179688 829.1389770507813 585.375 828.676025390625 585.375 828.1619873046875 C 585.375 827.6480102539063 585.4660034179688 827.1859741210938 585.6519775390625 826.7730102539063 C 585.8380126953125 826.3610229492188 586.0910034179688 826.0089721679688 586.4140014648438 825.7160034179688 C 586.7360229492188 825.4240112304688 587.1129760742188 825.197021484375 587.5430297851563 825.0349731445313 C 587.9719848632813 824.8740234375 588.43798828125 824.7930297851563 588.9400024414063 824.7930297851563 C 589.322998046875 824.7930297851563 589.718994140625 824.8590087890625 590.1320190429688 824.9910278320313 C 590.5440063476563 825.1220092773438 590.905029296875 825.343017578125 591.2160034179688 825.6530151367188 L 589.9080200195313 827.0330200195313 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_8lr9s6 =
    '<svg viewBox="591.9 824.8 4.5 6.6" ><path  d="M 591.9329833984375 824.9550170898438 L 593.9039916992188 824.9550170898438 L 593.9039916992188 825.9940185546875 L 593.9400024414063 825.9940185546875 C 594.155029296875 825.5999755859375 594.406005859375 825.301025390625 594.6920166015625 825.0980224609375 C 594.97900390625 824.89501953125 595.343017578125 824.7930297851563 595.7860107421875 824.7930297851563 C 595.8930053710938 824.7930297851563 596.0070190429688 824.7999877929688 596.1259765625 824.81201171875 C 596.2449951171875 824.822998046875 596.3519897460938 824.8410034179688 596.448974609375 824.864990234375 L 596.448974609375 826.6749877929688 C 596.3049926757813 826.6389770507813 596.1649780273438 826.6090087890625 596.0269775390625 826.5850219726563 C 595.8900146484375 826.56201171875 595.75 826.5490112304688 595.6060180664063 826.5490112304688 C 595.2230224609375 826.5490112304688 594.9229736328125 826.6010131835938 594.7020263671875 826.7020263671875 C 594.47998046875 826.802978515625 594.3099975585938 826.9500122070313 594.1909790039063 827.1409912109375 C 594.0709838867188 827.3319702148438 593.9940185546875 827.5590209960938 593.9580078125 827.822021484375 C 593.9219970703125 828.0850219726563 593.9039916992188 828.3770141601563 593.9039916992188 828.7000122070313 L 593.9039916992188 831.3699951171875 L 591.9329833984375 831.3699951171875 L 591.9329833984375 824.9550170898438 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_uoy7al =
    '<svg viewBox="596.9 824.8 6.6 6.7" ><path  d="M 603.1500244140625 830.2589721679688 C 602.8280029296875 830.6649780273438 602.4240112304688 830.97900390625 601.9400024414063 831.198974609375 C 601.4569702148438 831.4199829101563 600.9580078125 831.531005859375 600.4439697265625 831.531005859375 C 599.9420166015625 831.531005859375 599.4760131835938 831.4500122070313 599.0469970703125 831.2890014648438 C 598.6170043945313 831.1279907226563 598.239990234375 830.9010009765625 597.9180297851563 830.6079711914063 C 597.594970703125 830.3150024414063 597.3410034179688 829.9630126953125 597.156005859375 829.551025390625 C 596.969970703125 829.1389770507813 596.8790283203125 828.676025390625 596.8790283203125 828.1619873046875 C 596.8790283203125 827.6480102539063 596.969970703125 827.1859741210938 597.156005859375 826.7730102539063 C 597.3410034179688 826.3610229492188 597.594970703125 826.0089721679688 597.9180297851563 825.7160034179688 C 598.239990234375 825.4240112304688 598.6170043945313 825.197021484375 599.0469970703125 825.0349731445313 C 599.4760131835938 824.8740234375 599.9420166015625 824.7930297851563 600.4439697265625 824.7930297851563 C 601.3759765625 824.7930297851563 602.1069946289063 825.094970703125 602.6389770507813 825.697998046875 C 603.1710205078125 826.302001953125 603.4359741210938 827.1229858398438 603.4359741210938 828.1619873046875 L 603.4359741210938 828.7899780273438 L 598.8489990234375 828.7899780273438 C 598.9329833984375 829.1719970703125 599.1060180664063 829.4730224609375 599.3690185546875 829.6939697265625 C 599.6320190429688 829.916015625 599.9539794921875 830.0260009765625 600.3369750976563 830.0260009765625 C 600.6589965820313 830.0260009765625 600.9340209960938 829.9539794921875 601.1610107421875 829.8109741210938 C 601.3870239257813 829.6680297851563 601.5850219726563 829.4819946289063 601.7529907226563 829.2550048828125 L 603.1500244140625 830.2589721679688 Z M 601.4650268554688 827.427001953125 C 601.4769897460938 827.10498046875 601.3670043945313 826.823974609375 601.1339721679688 826.5850219726563 C 600.9010009765625 826.3469848632813 600.60498046875 826.2269897460938 600.2470092773438 826.2269897460938 C 599.8170166015625 826.2269897460938 599.4819946289063 826.3499755859375 599.2440185546875 826.593994140625 C 599.0050048828125 826.8389892578125 598.8740234375 827.1170043945313 598.8489990234375 827.427001953125 L 601.4650268554688 827.427001953125 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_m6doym =
    '<svg viewBox="604.3 824.8 6.2 6.7" ><path  d="M 608.6690063476563 830.5640258789063 L 608.6320190429688 830.5640258789063 C 608.406005859375 830.9099731445313 608.1099853515625 831.1580200195313 607.7459716796875 831.3070068359375 C 607.3820190429688 831.4559936523438 606.9959716796875 831.531005859375 606.5900268554688 831.531005859375 C 606.2919921875 831.531005859375 606.0050048828125 831.489013671875 605.72998046875 831.405029296875 C 605.4550170898438 831.322021484375 605.2139892578125 831.197021484375 605.0050048828125 831.0289916992188 C 604.7960205078125 830.8619995117188 604.6279907226563 830.6530151367188 604.5029907226563 830.4019775390625 C 604.3779907226563 830.1510009765625 604.3140258789063 829.864013671875 604.3140258789063 829.5419921875 C 604.3140258789063 828.9929809570313 604.4639892578125 828.5650024414063 604.7620239257813 828.260986328125 C 605.0609741210938 827.9559936523438 605.4310302734375 827.7319946289063 605.8740234375 827.5889892578125 C 606.3150024414063 827.4450073242188 606.7869873046875 827.3619995117188 607.2890014648438 827.3380126953125 C 607.791015625 827.3140258789063 608.2509765625 827.302001953125 608.6690063476563 827.302001953125 C 608.6690063476563 826.9559936523438 608.5440063476563 826.677978515625 608.2930297851563 826.468994140625 C 608.0419921875 826.260009765625 607.7429809570313 826.155029296875 607.39599609375 826.155029296875 C 606.7630004882813 826.155029296875 606.2249755859375 826.406005859375 605.7839965820313 826.9080200195313 L 604.7260131835938 825.8330078125 C 605.0850219726563 825.4860229492188 605.5120239257813 825.2269897460938 606.0070190429688 825.052978515625 C 606.5040283203125 824.8800048828125 607.02001953125 824.7930297851563 607.5570068359375 824.7930297851563 C 608.1320190429688 824.7930297851563 608.6060180664063 824.864990234375 608.9819946289063 825.0079956054688 C 609.3590087890625 825.1519775390625 609.656982421875 825.364013671875 609.8790283203125 825.64501953125 C 610.0989990234375 825.9249877929688 610.2550048828125 826.27197265625 610.343994140625 826.6840209960938 C 610.4329833984375 827.0960083007813 610.47802734375 827.5709838867188 610.47802734375 828.1079711914063 L 610.47802734375 831.3699951171875 L 608.6690063476563 831.3699951171875 L 608.6690063476563 830.5640258789063 Z M 608.1669921875 828.5560302734375 C 608.010986328125 828.5560302734375 607.823974609375 828.56298828125 607.6019897460938 828.573974609375 C 607.3820190429688 828.5859985351563 607.1669921875 828.6259765625 606.9580078125 828.6909790039063 C 606.7490234375 828.7559814453125 606.572021484375 828.8519897460938 606.427978515625 828.97802734375 C 606.2860107421875 829.10302734375 606.2139892578125 829.2730102539063 606.2139892578125 829.4879760742188 C 606.2139892578125 829.7269897460938 606.3179931640625 829.9030151367188 606.5269775390625 830.0170288085938 C 606.7360229492188 830.1300048828125 606.948974609375 830.18701171875 607.1640014648438 830.18701171875 C 607.5460205078125 830.18701171875 607.8920288085938 830.0850219726563 608.2030029296875 829.8820190429688 C 608.5130004882813 829.6790161132813 608.6690063476563 829.3809814453125 608.6690063476563 828.9860229492188 L 608.6690063476563 828.5560302734375 L 608.1669921875 828.5560302734375 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_xqqmu8 =
    '<svg viewBox="611.1 823.1 5.0 8.5" ><path  d="M 616.10498046875 826.5490112304688 L 614.3670043945313 826.5490112304688 L 614.3670043945313 828.6820068359375 C 614.3670043945313 828.8610229492188 614.3759765625 829.02197265625 614.3930053710938 829.166015625 C 614.4119873046875 829.3090209960938 614.4500122070313 829.4320068359375 614.510009765625 829.5330200195313 C 614.5700073242188 829.635009765625 614.6589965820313 829.7150268554688 614.7789916992188 829.7750244140625 C 614.8980102539063 829.8350219726563 615.0650024414063 829.864013671875 615.281005859375 829.864013671875 C 615.4000244140625 829.864013671875 615.5440063476563 829.85498046875 615.7109985351563 829.8369750976563 C 615.8779907226563 829.8200073242188 616.0089721679688 829.7689819335938 616.10498046875 829.6849975585938 L 616.10498046875 831.333984375 C 615.8900146484375 831.405029296875 615.6630249023438 831.4559936523438 615.4229736328125 831.4860229492188 C 615.1849975585938 831.5159912109375 614.9459838867188 831.531005859375 614.7080078125 831.531005859375 C 614.3839721679688 831.531005859375 614.0800170898438 831.4949951171875 613.7940063476563 831.4229736328125 C 613.5070190429688 831.3519897460938 613.2579956054688 831.2379760742188 613.0490112304688 831.0830078125 C 612.8400268554688 830.927978515625 612.676025390625 830.72802734375 612.5570068359375 830.4819946289063 C 612.43701171875 830.2379760742188 612.3779907226563 829.9420166015625 612.3779907226563 829.5960083007813 L 612.3779907226563 826.5490112304688 L 611.10498046875 826.5490112304688 L 611.10498046875 824.9550170898438 L 612.3779907226563 824.9550170898438 L 612.3779907226563 823.072998046875 L 614.3670043945313 823.072998046875 L 614.3670043945313 824.9550170898438 L 616.10498046875 824.9550170898438 L 616.10498046875 826.5490112304688 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_77d8li =
    '<svg viewBox="616.9 824.8 6.6 6.7" ><path  d="M 623.1820068359375 830.2589721679688 C 622.8599853515625 830.6649780273438 622.4569702148438 830.97900390625 621.9719848632813 831.198974609375 C 621.489013671875 831.4199829101563 620.989990234375 831.531005859375 620.4760131835938 831.531005859375 C 619.9739990234375 831.531005859375 619.5079956054688 831.4500122070313 619.0789794921875 831.2890014648438 C 618.6489868164063 831.1279907226563 618.27197265625 830.9010009765625 617.9500122070313 830.6079711914063 C 617.6279907226563 830.3150024414063 617.3740234375 829.9630126953125 617.18798828125 829.551025390625 C 617.0029907226563 829.1389770507813 616.9110107421875 828.676025390625 616.9110107421875 828.1619873046875 C 616.9110107421875 827.6480102539063 617.0029907226563 827.1859741210938 617.18798828125 826.7730102539063 C 617.3740234375 826.3610229492188 617.6279907226563 826.0089721679688 617.9500122070313 825.7160034179688 C 618.27197265625 825.4240112304688 618.6489868164063 825.197021484375 619.0789794921875 825.0349731445313 C 619.5079956054688 824.8740234375 619.9739990234375 824.7930297851563 620.4760131835938 824.7930297851563 C 621.4080200195313 824.7930297851563 622.1389770507813 825.094970703125 622.6719970703125 825.697998046875 C 623.2030029296875 826.302001953125 623.468017578125 827.1229858398438 623.468017578125 828.1619873046875 L 623.468017578125 828.7899780273438 L 618.8820190429688 828.7899780273438 C 618.9650268554688 829.1719970703125 619.1380004882813 829.4730224609375 619.4010009765625 829.6939697265625 C 619.6640014648438 829.916015625 619.9860229492188 830.0260009765625 620.3690185546875 830.0260009765625 C 620.6909790039063 830.0260009765625 620.9660034179688 829.9539794921875 621.1929931640625 829.8109741210938 C 621.4199829101563 829.6680297851563 621.6170043945313 829.4819946289063 621.7849731445313 829.2550048828125 L 623.1820068359375 830.2589721679688 Z M 621.4979858398438 827.427001953125 C 621.5089721679688 827.10498046875 621.3989868164063 826.823974609375 621.1669921875 826.5850219726563 C 620.9329833984375 826.3469848632813 620.6370239257813 826.2269897460938 620.2789916992188 826.2269897460938 C 619.8489990234375 826.2269897460938 619.5139770507813 826.3499755859375 619.2760009765625 826.593994140625 C 619.0369873046875 826.8389892578125 618.906005859375 827.1170043945313 618.8820190429688 827.427001953125 L 621.4979858398438 827.427001953125 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_m46rnf =
    '<svg viewBox="624.4 821.4 7.0 10.1" ><path  d="M 631.3880004882813 831.3699951171875 L 629.5789794921875 831.3699951171875 L 629.5789794921875 830.5269775390625 L 629.5430297851563 830.5269775390625 C 629.3870239257813 830.7670288085938 629.135986328125 830.9929809570313 628.791015625 831.208984375 C 628.4439697265625 831.4229736328125 628.0440063476563 831.531005859375 627.5900268554688 831.531005859375 C 627.1119995117188 831.531005859375 626.6790161132813 831.4500122070313 626.291015625 831.2890014648438 C 625.9030151367188 831.1279907226563 625.5709838867188 830.8980102539063 625.2969970703125 830.5989990234375 C 625.02099609375 830.301025390625 624.8090209960938 829.9509887695313 624.6599731445313 829.551025390625 C 624.510009765625 829.1510009765625 624.4359741210938 828.7059936523438 624.4359741210938 828.2160034179688 C 624.4359741210938 827.7739868164063 624.5050048828125 827.3469848632813 624.6420288085938 826.9349975585938 C 624.780029296875 826.52197265625 624.9739990234375 826.1580200195313 625.2239990234375 825.8419799804688 C 625.4749755859375 825.5250244140625 625.780029296875 825.27197265625 626.1380004882813 825.0800170898438 C 626.4970092773438 824.8889770507813 626.9030151367188 824.7930297851563 627.3569946289063 824.7930297851563 C 627.7750244140625 824.7930297851563 628.1640014648438 824.8590087890625 628.52197265625 824.9910278320313 C 628.8809814453125 825.1220092773438 629.1729736328125 825.343017578125 629.4000244140625 825.6530151367188 L 629.4180297851563 825.6530151367188 L 629.4180297851563 821.406982421875 L 631.3880004882813 821.406982421875 L 631.3880004882813 831.3699951171875 Z M 629.5789794921875 828.1619873046875 C 629.5789794921875 827.6849975585938 629.4409790039063 827.2960205078125 629.1669921875 826.9979858398438 C 628.8920288085938 826.698974609375 628.5040283203125 826.5490112304688 628.0020141601563 826.5490112304688 C 627.5009765625 826.5490112304688 627.1090087890625 826.698974609375 626.8289794921875 826.9979858398438 C 626.5479736328125 827.2960205078125 626.406982421875 827.6849975585938 626.406982421875 828.1619873046875 C 626.406982421875 828.6640014648438 626.5479736328125 829.0609741210938 626.8289794921875 829.35400390625 C 627.1090087890625 829.64697265625 627.5009765625 829.7930297851563 628.0020141601563 829.7930297851563 C 628.5040283203125 829.7930297851563 628.8920288085938 829.64697265625 629.1669921875 829.35400390625 C 629.4409790039063 829.0609741210938 629.5789794921875 828.6640014648438 629.5789794921875 828.1619873046875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_pdopcj =
    '<svg viewBox="636.5 821.4 7.0 10.1" ><path  d="M 636.5479736328125 821.406982421875 L 638.5380249023438 821.406982421875 L 638.5380249023438 825.6530151367188 L 638.5549926757813 825.6530151367188 C 638.781982421875 825.343017578125 639.0750122070313 825.1220092773438 639.4329833984375 824.9910278320313 C 639.7919921875 824.8590087890625 640.1799926757813 824.7930297851563 640.5980224609375 824.7930297851563 C 641.0399780273438 824.7930297851563 641.4429931640625 824.8889770507813 641.8070068359375 825.0800170898438 C 642.1719970703125 825.27197265625 642.47998046875 825.5250244140625 642.72998046875 825.8419799804688 C 642.9810180664063 826.1580200195313 643.1749877929688 826.52197265625 643.31298828125 826.9349975585938 C 643.4500122070313 827.3469848632813 643.5189819335938 827.7739868164063 643.5189819335938 828.2160034179688 C 643.5189819335938 828.7059936523438 643.4439697265625 829.1510009765625 643.2949829101563 829.551025390625 C 643.14501953125 829.9509887695313 642.9329833984375 830.301025390625 642.6589965820313 830.5989990234375 C 642.3839721679688 830.8980102539063 642.052001953125 831.1279907226563 641.6649780273438 831.2890014648438 C 641.2760009765625 831.4500122070313 640.843017578125 831.531005859375 640.364990234375 831.531005859375 C 639.9110107421875 831.531005859375 639.5079956054688 831.4229736328125 639.156005859375 831.208984375 C 638.802978515625 830.9929809570313 638.5490112304688 830.7670288085938 638.3939819335938 830.5269775390625 L 638.3770141601563 830.5269775390625 L 638.3770141601563 831.3699951171875 L 636.5479736328125 831.3699951171875 L 636.5479736328125 821.406982421875 Z M 638.3770141601563 828.1619873046875 C 638.3770141601563 828.6640014648438 638.5130004882813 829.0609741210938 638.7890014648438 829.35400390625 C 639.06298828125 829.64697265625 639.4520263671875 829.7930297851563 639.9530029296875 829.7930297851563 C 640.4550170898438 829.7930297851563 640.8460083007813 829.64697265625 641.1270141601563 829.35400390625 C 641.4080200195313 829.0609741210938 641.5479736328125 828.6640014648438 641.5479736328125 828.1619873046875 C 641.5479736328125 827.6849975585938 641.4080200195313 827.2960205078125 641.1270141601563 826.9979858398438 C 640.8460083007813 826.698974609375 640.4550170898438 826.5490112304688 639.9530029296875 826.5490112304688 C 639.4520263671875 826.5490112304688 639.06298828125 826.698974609375 638.7890014648438 826.9979858398438 C 638.5130004882813 827.2960205078125 638.3770141601563 827.6849975585938 638.3770141601563 828.1619873046875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_bgs37m =
    '<svg viewBox="644.0 825.0 7.3 9.6" ><path  d="M 648.3560180664063 832.4089965820313 C 648.2249755859375 832.7550048828125 648.0960083007813 833.0599975585938 647.9710083007813 833.322998046875 C 647.8460083007813 833.5850219726563 647.6900024414063 833.8070068359375 647.5059814453125 833.9860229492188 C 647.3200073242188 834.1649780273438 647.0780029296875 834.302001953125 646.780029296875 834.3980102539063 C 646.4810180664063 834.4929809570313 646.0989990234375 834.5419921875 645.6320190429688 834.5419921875 C 645.177978515625 834.5419921875 644.6890258789063 834.4580078125 644.1640014648438 834.291015625 L 644.4320068359375 832.677978515625 C 644.5880126953125 832.7369995117188 644.7369995117188 832.7849731445313 644.8809814453125 832.8209838867188 C 645.0239868164063 832.8569946289063 645.177978515625 832.875 645.3460083007813 832.875 C 645.572998046875 832.875 645.7559814453125 832.8510131835938 645.8930053710938 832.802978515625 C 646.030029296875 832.7550048828125 646.1430053710938 832.68701171875 646.2329711914063 832.5969848632813 C 646.322998046875 832.5070190429688 646.4000244140625 832.39697265625 646.4660034179688 832.2659912109375 C 646.531982421875 832.1339721679688 646.5999755859375 831.97900390625 646.6729736328125 831.7999877929688 L 646.8150024414063 831.4229736328125 L 644.0029907226563 824.9550170898438 L 646.1530151367188 824.9550170898438 L 647.7830200195313 829.1840209960938 L 647.8189697265625 829.1840209960938 L 649.2349853515625 824.9550170898438 L 651.2589721679688 824.9550170898438 L 648.3560180664063 832.4089965820313 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_o6m18d =
    '<svg viewBox="655.6 822.0 8.1 9.3" ><path  d="M 655.6489868164063 822.0339965820313 L 657.7109985351563 822.0339965820313 L 657.7109985351563 825.510009765625 L 661.7059936523438 825.510009765625 L 661.7059936523438 822.0339965820313 L 663.7670288085938 822.0339965820313 L 663.7670288085938 831.3699951171875 L 661.7059936523438 831.3699951171875 L 661.7059936523438 827.3380126953125 L 657.7109985351563 827.3380126953125 L 657.7109985351563 831.3699951171875 L 655.6489868164063 831.3699951171875 L 655.6489868164063 822.0339965820313 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_21shag =
    '<svg viewBox="665.7 822.0 8.1 9.3" ><path  d="M 665.666015625 822.0339965820313 L 667.7269897460938 822.0339965820313 L 667.7269897460938 825.510009765625 L 671.7219848632813 825.510009765625 L 671.7219848632813 822.0339965820313 L 673.7839965820313 822.0339965820313 L 673.7839965820313 831.3699951171875 L 671.7219848632813 831.3699951171875 L 671.7219848632813 827.3380126953125 L 667.7269897460938 827.3380126953125 L 667.7269897460938 831.3699951171875 L 665.666015625 831.3699951171875 L 665.666015625 822.0339965820313 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_rtiqx6 =
    '<svg viewBox="675.8 822.0 5.9 9.3" ><path  d="M 675.77197265625 822.0339965820313 L 677.8150024414063 822.0339965820313 L 677.8150024414063 829.469970703125 L 681.6320190429688 829.469970703125 L 681.6320190429688 831.3699951171875 L 675.77197265625 831.3699951171875 L 675.77197265625 822.0339965820313 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_yxwjv5 =
    '<svg viewBox="682.9 822.0 8.7 9.3" ><path  d="M 682.8679809570313 822.0339965820313 L 684.9110107421875 822.0339965820313 L 684.9110107421875 825.9039916992188 L 688.530029296875 822.0339965820313 L 691.2360229492188 822.0339965820313 L 687.0789794921875 826.3699951171875 L 691.593994140625 831.3699951171875 L 688.7100219726563 831.3699951171875 L 684.9110107421875 826.9439697265625 L 684.9110107421875 831.3699951171875 L 682.8679809570313 831.3699951171875 L 682.8679809570313 822.0339965820313 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_h7esjg =
    '<svg viewBox="38.1 1038.7 25.7 44.0" ><path transform="translate(10.92, 7.94)" d="M 51.76345825195313 1068.505981445313 C 53.19823455810547 1069.940795898438 53.19823455810547 1072.255981445313 51.76345825195313 1073.688598632813 C 51.04840087890625 1074.403686523438 50.11207580566406 1074.764282226563 49.17341613769531 1074.764282226563 C 48.23475646972656 1074.764282226563 47.29609680175781 1074.403686523438 46.58103942871094 1073.688598632813 L 28.25508117675781 1055.362426757813 C 26.82263946533203 1053.930053710938 26.82263946533203 1051.612426757813 28.25508117675781 1050.180053710938 L 46.58103942871094 1031.854125976563 C 48.01348114013672 1030.419311523438 50.33100891113281 1030.419311523438 51.76345825195313 1031.854125976563 C 53.19823455810547 1033.286499023438 53.19823455810547 1035.601684570313 51.76345825195313 1037.036499023438 L 36.02986907958984 1052.772338867188 L 51.76345825195313 1068.505981445313 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
