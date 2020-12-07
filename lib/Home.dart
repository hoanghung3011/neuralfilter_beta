import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Upload.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  Home({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            width: 412.0,
            height: 870.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/brg1.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(76.1, 740.8),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.SlideLeft,
                  ease: Curves.easeInOutExpo,
                  duration: 0.3,
                  pageBuilder: () => Upload(),
                ),
              ],
              child: SizedBox(
                width: 259.0,
                height: 50.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 258.9, 50.0),
                      size: Size(258.9, 50.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
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
                                  begin: Alignment(-0.97, 0.0),
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
                        ],
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(45.7, 15.5, 167.4, 19.0),
                      size: Size(258.9, 50.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 17.3, 19.0),
                            size: Size(167.4, 19.0),
                            pinLeft: true,
                            pinTop: true,
                            pinBottom: true,
                            fixedWidth: true,
                            child: SvgPicture.string(
                              _svg_sfms3i,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(21.0, 0.5, 12.7, 18.1),
                            size: Size(167.4, 19.0),
                            pinLeft: true,
                            pinTop: true,
                            pinBottom: true,
                            fixedWidth: true,
                            child: SvgPicture.string(
                              _svg_btg7hw,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(35.2, 0.5, 14.3, 18.1),
                            size: Size(167.4, 19.0),
                            pinTop: true,
                            pinBottom: true,
                            fixedWidth: true,
                            child: SvgPicture.string(
                              _svg_eplh6l,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(56.8, 0.0, 13.0, 19.0),
                            size: Size(167.4, 19.0),
                            pinTop: true,
                            pinBottom: true,
                            fixedWidth: true,
                            child: SvgPicture.string(
                              _svg_ulyjwy,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(71.1, 0.5, 14.3, 18.1),
                            size: Size(167.4, 19.0),
                            pinTop: true,
                            pinBottom: true,
                            fixedWidth: true,
                            child: SvgPicture.string(
                              _svg_d2di8d,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(83.2, 0.5, 19.0, 18.1),
                            size: Size(167.4, 19.0),
                            pinTop: true,
                            pinBottom: true,
                            fixedWidth: true,
                            child: SvgPicture.string(
                              _svg_8kbwyf,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(103.9, 0.5, 14.5, 18.1),
                            size: Size(167.4, 19.0),
                            pinTop: true,
                            pinBottom: true,
                            fixedWidth: true,
                            child: SvgPicture.string(
                              _svg_mhrcn,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(118.4, 0.5, 14.3, 18.1),
                            size: Size(167.4, 19.0),
                            pinTop: true,
                            pinBottom: true,
                            fixedWidth: true,
                            child: SvgPicture.string(
                              _svg_horgua,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(134.8, 0.5, 12.7, 18.1),
                            size: Size(167.4, 19.0),
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            fixedWidth: true,
                            child: SvgPicture.string(
                              _svg_y50rte,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(150.7, 0.5, 16.7, 18.1),
                            size: Size(167.4, 19.0),
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            fixedWidth: true,
                            child: SvgPicture.string(
                              _svg_1wqnjt,
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
          ),
          Transform.translate(
            offset: Offset(58.6, 397.5),
            child: SizedBox(
              width: 294.0,
              height: 101.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 293.7, 53.0),
                    size: Size(293.7, 101.2),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 49.0, 51.7),
                          size: Size(293.7, 53.0),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_zcw9l1,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(60.0, 0.0, 36.4, 51.7),
                          size: Size(293.7, 53.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_6xu4yd,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(105.4, 0.0, 43.5, 53.0),
                          size: Size(293.7, 53.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_74vk1c,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(159.4, 0.0, 41.4, 51.7),
                          size: Size(293.7, 53.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_hqw8t2,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(201.4, 0.0, 54.2, 51.7),
                          size: Size(293.7, 53.0),
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_ei3csa,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(261.3, 0.0, 32.4, 51.7),
                          size: Size(293.7, 53.0),
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_fhhrz,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(138.8, 60.4, 155.0, 40.8),
                    size: Size(293.7, 101.2),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 19.8, 40.2),
                          size: Size(155.0, 40.8),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_c3wlqz,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(21.3, 2.2, 9.2, 38.0),
                          size: Size(155.0, 40.8),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_8ik3mk,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(35.5, 0.6, 7.9, 39.6),
                          size: Size(155.0, 40.8),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_hkeaf2,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(46.5, 7.3, 19.8, 33.6),
                          size: Size(155.0, 40.8),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_tqtrya,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(69.6, 14.1, 26.0, 26.8),
                          size: Size(155.0, 40.8),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_z3ovlb,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(100.4, 14.1, 17.9, 26.1),
                          size: Size(155.0, 40.8),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_x31ywf,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(120.2, 14.1, 21.7, 26.8),
                          size: Size(155.0, 40.8),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_k1plti,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(145.9, 31.4, 9.0, 9.0),
                          size: Size(155.0, 40.8),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_tx0uw,
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
            offset: Offset(152.4, 720.2),
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
                      _svg_9vl1to,
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
                      _svg_iezhae,
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
                      _svg_hbjc7p,
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
                      _svg_nvtqvc,
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
                      _svg_c6uck2,
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
                      _svg_4pu2ze,
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
                      _svg_sd807q,
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
                      _svg_uaaz8h,
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
                      _svg_qelrvc,
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
                      _svg_92gdfo,
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
                      _svg_lsvw24,
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
                      _svg_4lhn8q,
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
                      _svg_62og37,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_sfms3i =
    '<svg viewBox="121.8 756.3 17.3 19.0" ><path  d="M 139.1510009765625 773.6119995117188 C 137.9720001220703 774.2130126953125 136.7460021972656 774.64697265625 135.4750061035156 774.9119873046875 C 134.2030029296875 775.177978515625 132.8970031738281 775.3109741210938 131.5559997558594 775.3109741210938 C 130.14599609375 775.3109741210938 128.8450012207031 775.0910034179688 127.6549987792969 774.6519775390625 C 126.463996887207 774.2130126953125 125.4349975585938 773.5830078125 124.568000793457 772.7620239257813 C 123.7009963989258 771.9420166015625 123.0250015258789 770.947998046875 122.5390014648438 769.780029296875 C 122.0540008544922 768.6129760742188 121.8109970092773 767.2999877929688 121.8109970092773 765.843994140625 C 121.8109970092773 764.3870239257813 122.0540008544922 763.0750122070313 122.5390014648438 761.9080200195313 C 123.0250015258789 760.739990234375 123.7009963989258 759.739990234375 124.568000793457 758.9080200195313 C 125.4349975585938 758.0750122070313 126.463996887207 757.4400024414063 127.6549987792969 757 C 128.8450012207031 756.5609741210938 130.14599609375 756.3410034179688 131.5559997558594 756.3410034179688 C 133.0130004882813 756.3410034179688 134.3480072021484 756.5139770507813 135.5619964599609 756.8619995117188 C 136.7749938964844 757.2080078125 137.8450012207031 757.8099975585938 138.7689971923828 758.6649780273438 L 135.9600067138672 761.7169799804688 C 135.4290008544922 761.1389770507813 134.8220062255859 760.7109985351563 134.1399993896484 760.4329833984375 C 133.4570007324219 760.156005859375 132.5970001220703 760.0170288085938 131.5559997558594 760.0170288085938 C 130.7010040283203 760.0170288085938 129.9259948730469 760.1619873046875 129.2330017089844 760.4509887695313 C 128.5390014648438 760.739990234375 127.9499969482422 761.1439819335938 127.463996887207 761.6640014648438 C 126.9779968261719 762.1849975585938 126.6019973754883 762.7979736328125 126.3369979858398 763.5029907226563 C 126.0709991455078 764.2080078125 125.9380035400391 764.989013671875 125.9380035400391 765.843994140625 C 125.9380035400391 766.676025390625 126.0709991455078 767.4509887695313 126.3369979858398 768.1669921875 C 126.6019973754883 768.8839721679688 126.9779968261719 769.4970092773438 127.463996887207 770.0050048828125 C 127.9499969482422 770.5139770507813 128.5390014648438 770.9119873046875 129.2330017089844 771.2009887695313 C 129.9259948730469 771.4910278320313 130.7010040283203 771.635009765625 131.5559997558594 771.635009765625 C 132.4340057373047 771.635009765625 133.1860046386719 771.5369873046875 133.8099975585938 771.3400268554688 C 134.4340057373047 771.1439819335938 134.9320068359375 770.9530029296875 135.302001953125 770.7680053710938 L 135.302001953125 767.8200073242188 L 132.0769958496094 767.8200073242188 L 132.0769958496094 764.1439819335938 L 139.1510009765625 764.1439819335938 L 139.1510009765625 773.6119995117188 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_btg7hw =
    '<svg viewBox="142.8 756.8 12.7 18.1" ><path  d="M 142.8269958496094 756.7919921875 L 155.1029968261719 756.7919921875 L 155.1029968261719 760.468017578125 L 146.7799987792969 760.468017578125 L 146.7799987792969 763.8319702148438 L 154.6179962158203 763.8319702148438 L 154.6179962158203 767.5079956054688 L 146.7799987792969 767.5079956054688 L 146.7799987792969 771.1840209960938 L 155.5540008544922 771.1840209960938 L 155.5540008544922 774.8599853515625 L 142.8269958496094 774.8599853515625 L 142.8269958496094 756.7919921875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_eplh6l =
    '<svg viewBox="157.0 756.8 14.3 18.1" ><path  d="M 162.2129974365234 760.3289794921875 L 157.0449981689453 760.3289794921875 L 157.0449981689453 756.7919921875 L 171.3329925537109 756.7919921875 L 171.3329925537109 760.3289794921875 L 166.2010040283203 760.3289794921875 L 166.2010040283203 774.8599853515625 L 162.2129974365234 774.8599853515625 L 162.2129974365234 760.3289794921875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ulyjwy =
    '<svg viewBox="178.6 756.3 13.0 19.0" ><path  d="M 188.8459930419922 761.197021484375 C 188.5220031738281 760.8040161132813 188.0829925537109 760.5089721679688 187.5279998779297 760.31201171875 C 186.9739990234375 760.1160278320313 186.4539947509766 760.0170288085938 185.9680023193359 760.0170288085938 C 185.6900024414063 760.0170288085938 185.39599609375 760.052001953125 185.0829925537109 760.1209716796875 C 184.77099609375 760.1909790039063 184.4819946289063 760.301025390625 184.2169952392578 760.4509887695313 C 183.9510040283203 760.6010131835938 183.7310028076172 760.7919921875 183.5579986572266 761.0230102539063 C 183.3840026855469 761.2540283203125 183.2980041503906 761.5430297851563 183.2980041503906 761.8900146484375 C 183.2980041503906 762.4450073242188 183.5059967041016 762.8670043945313 183.9219970703125 763.156005859375 C 184.3379974365234 763.4450073242188 184.8520050048828 763.6929931640625 185.4649963378906 763.9010009765625 C 186.0780029296875 764.1099853515625 186.7420043945313 764.31201171875 187.4589996337891 764.5079956054688 C 188.1759948730469 764.7050170898438 188.8399963378906 764.989013671875 189.4530029296875 765.3579711914063 C 190.0650024414063 765.72802734375 190.5800018310547 766.2310180664063 190.9960021972656 766.8670043945313 C 191.4120025634766 767.5029907226563 191.6210021972656 768.3410034179688 191.6210021972656 769.3809814453125 C 191.6210021972656 770.3980102539063 191.4299926757813 771.2769775390625 191.0480041503906 772.0159912109375 C 190.6670074462891 772.7570190429688 190.1580047607422 773.3690185546875 189.5220031738281 773.85400390625 C 188.8860015869141 774.3400268554688 188.1470031738281 774.7039794921875 187.3029937744141 774.947021484375 C 186.4589996337891 775.1900024414063 185.5749969482422 775.3109741210938 184.6499938964844 775.3109741210938 C 183.4709930419922 775.3109741210938 182.3780059814453 775.1380004882813 181.3730010986328 774.791015625 C 180.3670043945313 774.4439697265625 179.4360046386719 773.8670043945313 178.5809936523438 773.0570068359375 L 181.3899993896484 769.9359741210938 C 181.8070068359375 770.468017578125 182.3269958496094 770.8839721679688 182.9510040283203 771.1840209960938 C 183.5749969482422 771.4849853515625 184.2220001220703 771.635009765625 184.8930053710938 771.635009765625 C 185.2160034179688 771.635009765625 185.5399932861328 771.5999755859375 185.8639984130859 771.531005859375 C 186.1869964599609 771.4619750976563 186.4819946289063 771.3460083007813 186.7480010986328 771.1840209960938 C 187.0140075683594 771.0230102539063 187.2279968261719 770.8259887695313 187.3899993896484 770.594970703125 C 187.5509948730469 770.364013671875 187.6329956054688 770.0859985351563 187.6329956054688 769.7630004882813 C 187.6329956054688 769.2069702148438 187.4239959716797 768.7739868164063 187.0079956054688 768.4619750976563 C 186.5919952392578 768.1500244140625 186.0720062255859 767.8839721679688 185.447998046875 767.6640014648438 C 184.8240051269531 767.4450073242188 184.1410064697266 767.2249755859375 183.4019927978516 767.0050048828125 C 182.6620025634766 766.7860107421875 181.9799957275391 766.4849853515625 181.3549957275391 766.10302734375 C 180.7310028076172 765.7219848632813 180.2109985351563 765.2310180664063 179.7949981689453 764.6300048828125 C 179.3789978027344 764.0289916992188 179.1710052490234 763.219970703125 179.1710052490234 762.2020263671875 C 179.1710052490234 761.2310180664063 179.3609924316406 760.3820190429688 179.7429962158203 759.6530151367188 C 180.1239929199219 758.9249877929688 180.6390075683594 758.3179931640625 181.2859954833984 757.8319702148438 C 181.9329986572266 757.3469848632813 182.6670074462891 756.9769897460938 183.4880065917969 756.7230224609375 C 184.3079986572266 756.468994140625 185.1699981689453 756.3410034179688 186.0720062255859 756.3410034179688 C 187.1119995117188 756.3410034179688 188.1000061035156 756.4860229492188 189.0370025634766 756.7750244140625 C 189.9739990234375 757.0640258789063 190.822998046875 757.5440063476563 191.5859985351563 758.2139892578125 L 188.8459930419922 761.197021484375 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_d2di8d =
    '<svg viewBox="192.9 756.8 14.3 18.1" ><path  d="M 198.0709991455078 760.3289794921875 L 192.9040069580078 760.3289794921875 L 192.9040069580078 756.7919921875 L 207.1920013427734 756.7919921875 L 207.1920013427734 760.3289794921875 L 202.0590057373047 760.3289794921875 L 202.0590057373047 774.8599853515625 L 198.0709991455078 774.8599853515625 L 198.0709991455078 760.3289794921875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_8kbwyf =
    '<svg viewBox="205.0 756.8 19.0 18.1" ><path  d="M 212.8099975585938 756.7919921875 L 216.0700073242188 756.7919921875 L 223.9420013427734 774.8599853515625 L 219.468994140625 774.8599853515625 L 217.9080047607422 771.0449829101563 L 210.8679962158203 771.0449829101563 L 209.3769989013672 774.8599853515625 L 204.9730072021484 774.8599853515625 L 212.8099975585938 756.7919921875 Z M 214.3359985351563 762.06298828125 L 212.1170043945313 767.6810302734375 L 216.5559997558594 767.6810302734375 L 214.3359985351563 762.06298828125 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_mhrcn =
    '<svg viewBox="225.7 756.8 14.5 18.1" ><path  d="M 225.7460021972656 756.7919921875 L 232.7510070800781 756.7919921875 C 233.6750030517578 756.7919921875 234.5480041503906 756.8790283203125 235.3690032958984 757.052001953125 C 236.1900024414063 757.2249755859375 236.9120025634766 757.5260009765625 237.5370025634766 757.9539794921875 C 238.1609954833984 758.3820190429688 238.6519927978516 758.947998046875 239.0110015869141 759.6530151367188 C 239.3690032958984 760.3590087890625 239.5480041503906 761.2310180664063 239.5480041503906 762.27099609375 C 239.5480041503906 763.5430297851563 239.218994140625 764.6240234375 238.5599975585938 765.5139770507813 C 237.9010009765625 766.4039916992188 236.9349975585938 766.9760131835938 235.6640014648438 767.2310180664063 L 240.2420043945313 774.8599853515625 L 235.4559936523438 774.8599853515625 L 231.7100067138672 767.64697265625 L 229.7339935302734 767.64697265625 L 229.7339935302734 774.8599853515625 L 225.7460021972656 774.8599853515625 L 225.7460021972656 756.7919921875 Z M 229.7339935302734 764.2830200195313 L 232.0919952392578 764.2830200195313 C 232.4609985351563 764.2830200195313 232.8430023193359 764.27099609375 233.2359924316406 764.2479858398438 C 233.6289978027344 764.2249755859375 233.9880065917969 764.1439819335938 234.3110046386719 764.0059814453125 C 234.6349945068359 763.8670043945313 234.9010009765625 763.6589965820313 235.1089935302734 763.3809814453125 C 235.3170013427734 763.10400390625 235.4210052490234 762.7219848632813 235.4210052490234 762.2369995117188 C 235.4210052490234 761.7979736328125 235.3289947509766 761.4390258789063 235.1439971923828 761.1619873046875 C 234.9579925537109 760.8839721679688 234.7160034179688 760.6710205078125 234.4149932861328 760.52001953125 C 234.1150054931641 760.3699951171875 233.7859954833984 760.27197265625 233.427001953125 760.2249755859375 C 233.0679931640625 760.1799926757813 232.7039947509766 760.156005859375 232.3350067138672 760.156005859375 L 229.7339935302734 760.156005859375 L 229.7339935302734 764.2830200195313 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_horgua =
    '<svg viewBox="240.2 756.8 14.3 18.1" ><path  d="M 245.3399963378906 760.3289794921875 L 240.1730041503906 760.3289794921875 L 240.1730041503906 756.7919921875 L 254.4609985351563 756.7919921875 L 254.4609985351563 760.3289794921875 L 249.3280029296875 760.3289794921875 L 249.3280029296875 774.8599853515625 L 245.3399963378906 774.8599853515625 L 245.3399963378906 760.3289794921875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_y50rte =
    '<svg viewBox="256.6 756.8 12.7 18.1" ><path  d="M 256.6449890136719 756.7919921875 L 268.9219970703125 756.7919921875 L 268.9219970703125 760.468017578125 L 260.5989990234375 760.468017578125 L 260.5989990234375 763.8319702148438 L 268.4360046386719 763.8319702148438 L 268.4360046386719 767.5079956054688 L 260.5989990234375 767.5079956054688 L 260.5989990234375 771.1840209960938 L 269.3729858398438 771.1840209960938 L 269.3729858398438 774.8599853515625 L 256.6449890136719 774.8599853515625 L 256.6449890136719 756.7919921875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_1wqnjt =
    '<svg viewBox="272.5 756.8 16.7 18.1" ><path  d="M 272.5289916992188 756.7919921875 L 278.4939880371094 756.7919921875 C 279.9500122070313 756.7919921875 281.3259887695313 756.9539794921875 282.6210021972656 757.2780151367188 C 283.9150085449219 757.6019897460938 285.0539855957031 758.1270141601563 286.0369873046875 758.8560180664063 C 287.0190124511719 759.583984375 287.7929992675781 760.52001953125 288.3599853515625 761.6640014648438 C 288.9259948730469 762.8090209960938 289.2099914550781 764.2139892578125 289.2099914550781 765.8779907226563 C 289.2099914550781 767.3350219726563 288.9330139160156 768.6240234375 288.3770141601563 769.7449951171875 C 287.822998046875 770.8670043945313 287.0769958496094 771.8079833984375 286.1409912109375 772.5709838867188 C 285.2040100097656 773.333984375 284.1229858398438 773.906982421875 282.8980102539063 774.2880249023438 C 281.6719970703125 774.6690063476563 280.3890075683594 774.8599853515625 279.0490112304688 774.8599853515625 L 272.5289916992188 774.8599853515625 L 272.5289916992188 756.7919921875 Z M 276.5169982910156 771.1840209960938 L 278.56298828125 771.1840209960938 C 279.4880065917969 771.1840209960938 280.3489990234375 771.0919799804688 281.1470031738281 770.906982421875 C 281.9440002441406 770.7219848632813 282.6319885253906 770.4099731445313 283.2099914550781 769.9710083007813 C 283.7879943847656 769.531982421875 284.239013671875 768.958984375 284.56298828125 768.2540283203125 C 284.885986328125 767.5490112304688 285.0480041503906 766.68798828125 285.0480041503906 765.6699829101563 C 285.0480041503906 764.7919921875 284.885986328125 764.0230102539063 284.56298828125 763.364013671875 C 284.239013671875 762.7050170898438 283.7940063476563 762.1619873046875 283.2269897460938 761.7340087890625 C 282.6610107421875 761.3060302734375 282.0020141601563 760.9879760742188 281.2510070800781 760.780029296875 C 280.4989929199219 760.572021484375 279.7070007324219 760.468017578125 278.875 760.468017578125 L 276.5169982910156 760.468017578125 L 276.5169982910156 771.1840209960938 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_zcw9l1 =
    '<svg viewBox="58.6 397.5 49.0 51.7" ><path  d="M 58.60400009155273 397.4679870605469 L 74.072998046875 397.4679870605469 L 96.08699798583984 433.364013671875 L 96.18599700927734 433.364013671875 L 96.18599700927734 397.4679870605469 L 107.588996887207 397.4679870605469 L 107.588996887207 449.1300048828125 L 92.71499633789063 449.1300048828125 L 70.10700225830078 412.3420104980469 L 70.00800323486328 412.3420104980469 L 70.00800323486328 449.1300048828125 L 58.60400009155273 449.1300048828125 L 58.60400009155273 397.4679870605469 Z" fill="#ff0000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_6xu4yd =
    '<svg viewBox="118.6 397.5 36.4 51.7" ><path  d="M 118.5960006713867 397.4679870605469 L 153.697998046875 397.4679870605469 L 153.697998046875 407.9779968261719 L 129.8999938964844 407.9779968261719 L 129.8999938964844 417.5969848632813 L 152.3099975585938 417.5969848632813 L 152.3099975585938 428.1080017089844 L 129.8999938964844 428.1080017089844 L 129.8999938964844 438.6189880371094 L 154.9880065917969 438.6189880371094 L 154.9880065917969 449.1300048828125 L 118.5960006713867 449.1300048828125 L 118.5960006713867 397.4679870605469 Z" fill="#ff0000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_74vk1c =
    '<svg viewBox="164.0 397.5 43.5 53.0" ><path  d="M 207.5420074462891 429.1990051269531 C 207.5420074462891 432.3070068359375 207.0789947509766 435.1489868164063 206.1540069580078 437.7269897460938 C 205.2279968261719 440.3049926757813 203.8560028076172 442.5360107421875 202.0390014648438 444.4200134277344 C 200.2200012207031 446.3039855957031 197.9570007324219 447.7760009765625 195.2469940185547 448.8330078125 C 192.5350036621094 449.8900146484375 189.39599609375 450.4190063476563 185.8260040283203 450.4190063476563 C 182.2559967041016 450.4190063476563 179.0989990234375 449.8900146484375 176.3560028076172 448.8330078125 C 173.6119995117188 447.7760009765625 171.3320007324219 446.3039855957031 169.5140075683594 444.4200134277344 C 167.6950073242188 442.5360107421875 166.3240051269531 440.3049926757813 165.3990020751953 437.7269897460938 C 164.4730072021484 435.1489868164063 164.0110015869141 432.3070068359375 164.0110015869141 429.1990051269531 L 164.0110015869141 397.4679870605469 L 175.4149932861328 397.4679870605469 L 175.4149932861328 428.802001953125 C 175.4149932861328 431.9750061035156 176.3890075683594 434.6199951171875 178.3399963378906 436.7349853515625 C 180.2890014648438 438.8510131835938 182.7850036621094 439.9079895019531 185.8260040283203 439.9079895019531 C 188.8009948730469 439.9079895019531 191.2799987792969 438.8510131835938 193.2630004882813 436.7349853515625 C 195.2469940185547 434.6199951171875 196.2380065917969 431.9750061035156 196.2380065917969 428.802001953125 L 196.2380065917969 397.4679870605469 L 207.5420074462891 397.4679870605469 L 207.5420074462891 429.1990051269531 Z" fill="#ff0000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_hqw8t2 =
    '<svg viewBox="218.1 397.5 41.4 51.7" ><path  d="M 218.0529937744141 397.4679870605469 L 238.0839996337891 397.4679870605469 C 240.7270050048828 397.4679870605469 243.2230072021484 397.7149963378906 245.5700073242188 398.2109985351563 C 247.9160003662109 398.7070007324219 249.9830017089844 399.5669860839844 251.7680053710938 400.7890014648438 C 253.5529937744141 402.0140075683594 254.9570007324219 403.6329956054688 255.9819946289063 405.6480102539063 C 257.0060119628906 407.6650085449219 257.5199890136719 410.1600036621094 257.5199890136719 413.135009765625 C 257.5199890136719 416.77099609375 256.5769958496094 419.8619995117188 254.6929931640625 422.4070129394531 C 252.8090057373047 424.9519958496094 250.0480041503906 426.5880126953125 246.4140014648438 427.3150024414063 L 259.5020141601563 449.1300048828125 L 245.8179931640625 449.1300048828125 L 235.1089935302734 428.5050048828125 L 229.4570007324219 428.5050048828125 L 229.4570007324219 449.1300048828125 L 218.0529937744141 449.1300048828125 L 218.0529937744141 397.4679870605469 Z M 229.4570007324219 418.885986328125 L 236.1999969482422 418.885986328125 C 237.2559967041016 418.885986328125 238.3470001220703 418.85400390625 239.4720001220703 418.7869873046875 C 240.5950012207031 418.7219848632813 241.6199951171875 418.489990234375 242.5460052490234 418.0929870605469 C 243.4709930419922 417.6960144042969 244.2319946289063 417.1010131835938 244.8269958496094 416.3080139160156 C 245.4219970703125 415.5150146484375 245.718994140625 414.4240112304688 245.718994140625 413.0360107421875 C 245.718994140625 411.781005859375 245.4539947509766 410.7550048828125 244.9259948730469 409.9620056152344 C 244.39599609375 409.1679992675781 243.7019958496094 408.5580139160156 242.843994140625 408.1270141601563 C 241.9839935302734 407.697998046875 241.0420074462891 407.4179992675781 240.0180053710938 407.2850036621094 C 238.9920043945313 407.1530151367188 237.9510040283203 407.0859985351563 236.8939971923828 407.0859985351563 L 229.4570007324219 407.0859985351563 L 229.4570007324219 418.885986328125 Z" fill="#ff0000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ei3csa =
    '<svg viewBox="260.0 397.5 54.2 51.7" ><path  d="M 282.4079895019531 397.4679870605469 L 291.72900390625 397.4679870605469 L 314.2380065917969 449.1300048828125 L 301.4469909667969 449.1300048828125 L 296.9840087890625 438.2229919433594 L 276.8550109863281 438.2229919433594 L 272.5910034179688 449.1300048828125 L 259.9979858398438 449.1300048828125 L 282.4079895019531 397.4679870605469 Z M 286.77099609375 412.5400085449219 L 280.4249877929688 428.60400390625 L 293.1170043945313 428.60400390625 L 286.77099609375 412.5400085449219 Z" fill="#ff0000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_fhhrz =
    '<svg viewBox="319.9 397.5 32.4 51.7" ><path  d="M 319.8909912109375 397.4679870605469 L 331.1950073242188 397.4679870605469 L 331.1950073242188 438.6189880371094 L 352.3160095214844 438.6189880371094 L 352.3160095214844 449.1300048828125 L 319.8909912109375 449.1300048828125 L 319.8909912109375 397.4679870605469 Z" fill="#ff0000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_c3wlqz =
    '<svg viewBox="197.4 457.8 19.8 40.2" ><path  d="M 202.5559997558594 478.8810119628906 L 197.3619995117188 478.8810119628906 L 197.3619995117188 472.5490112304688 L 202.5559997558594 472.5490112304688 L 202.5559997558594 468.0669860839844 C 202.5559997558594 466.6919860839844 202.6730041503906 465.3760070800781 202.9109954833984 464.1189880371094 C 203.1479949951172 462.8619995117188 203.6230010986328 461.77099609375 204.3339996337891 460.8460083007813 C 205.0449981689453 459.9209899902344 206.0529937744141 459.1860046386719 207.3580017089844 458.6400146484375 C 208.6620025634766 458.0960083007813 210.3809967041016 457.8219909667969 212.5160064697266 457.8219909667969 C 213.3220062255859 457.8219909667969 214.1049957275391 457.8469848632813 214.8639984130859 457.8930053710938 C 215.6219940185547 457.9410095214844 216.3809967041016 458.0599975585938 217.1410064697266 458.2489929199219 L 216.7140045166016 464.93701171875 C 216.0019989013672 464.6050109863281 215.1719970703125 464.4389953613281 214.2239990234375 464.4389953613281 C 212.9429931640625 464.4389953613281 211.9940032958984 464.7120056152344 211.3769989013672 465.2569885253906 C 210.7610015869141 465.8030090332031 210.4530029296875 466.906005859375 210.4530029296875 468.5650024414063 L 210.4530029296875 472.5490112304688 L 216.2160034179688 472.5490112304688 L 216.2160034179688 478.8810119628906 L 210.4530029296875 478.8810119628906 L 210.4530029296875 498.0199890136719 L 202.5559997558594 498.0199890136719 L 202.5559997558594 478.8810119628906 Z" fill="#ff8e7b" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_8ik3mk =
    '<svg viewBox="218.6 460.0 9.2 38.0" ><path  d="M 218.6340026855469 464.5809936523438 C 218.6340026855469 463.2999877929688 219.0839996337891 462.2219848632813 219.9850006103516 461.343994140625 C 220.8860015869141 460.4670104980469 221.9530029296875 460.0280151367188 223.1869964599609 460.0280151367188 C 224.4680023193359 460.0280151367188 225.5590057373047 460.4670104980469 226.4600067138672 461.343994140625 C 227.3600006103516 462.2219848632813 227.8119964599609 463.2999877929688 227.8119964599609 464.5809936523438 C 227.8119964599609 465.8150024414063 227.3600006103516 466.8819885253906 226.4600067138672 467.7829895019531 C 225.5590057373047 468.6839904785156 224.4680023193359 469.1340026855469 223.1869964599609 469.1340026855469 C 221.9530029296875 469.1340026855469 220.8860015869141 468.6839904785156 219.9850006103516 467.7829895019531 C 219.0839996337891 466.8819885253906 218.6340026855469 465.8150024414063 218.6340026855469 464.5809936523438 Z M 219.2740020751953 472.5490112304688 L 227.1710052490234 472.5490112304688 L 227.1710052490234 498.0199890136719 L 219.2740020751953 498.0199890136719 L 219.2740020751953 472.5490112304688 Z" fill="#ff8e7b" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_hkeaf2 =
    '<svg viewBox="232.9 458.5 7.9 39.6" ><path  d="M 232.8619995117188 458.4620056152344 L 240.7599945068359 458.4620056152344 L 240.7599945068359 498.0199890136719 L 232.8619995117188 498.0199890136719 L 232.8619995117188 458.4620056152344 Z" fill="#ff8e7b" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tqtrya =
    '<svg viewBox="243.9 465.1 19.8 33.6" ><path  d="M 263.739990234375 478.8810119628906 L 256.8389892578125 478.8810119628906 L 256.8389892578125 487.3479919433594 C 256.8389892578125 488.0589904785156 256.875 488.7000122070313 256.9450073242188 489.2690124511719 C 257.0169982910156 489.8380126953125 257.1700134277344 490.3250122070313 257.4079895019531 490.7269897460938 C 257.6449890136719 491.1310119628906 258 491.4509887695313 258.4750061035156 491.68798828125 C 258.9490051269531 491.9259948730469 259.6130065917969 492.0429992675781 260.4670104980469 492.0429992675781 C 260.9410095214844 492.0429992675781 261.510009765625 492.0079956054688 262.1749877929688 491.93701171875 C 262.8380126953125 491.8659973144531 263.3599853515625 491.6640014648438 263.739990234375 491.3320007324219 L 263.739990234375 497.8779907226563 C 262.885986328125 498.1619873046875 261.9849853515625 498.3630065917969 261.0369873046875 498.4819946289063 C 260.0870056152344 498.6000061035156 259.1390075683594 498.6600036621094 258.1900024414063 498.6600036621094 C 256.9100036621094 498.6600036621094 255.6999969482422 498.5180053710938 254.5619964599609 498.2330017089844 C 253.4239959716797 497.9490051269531 252.4389953613281 497.4979858398438 251.6089935302734 496.8819885253906 C 250.7790069580078 496.2650146484375 250.1260070800781 495.4710083007813 249.6529998779297 494.4979858398438 C 249.1779937744141 493.5270080566406 248.9409942626953 492.3519897460938 248.9409942626953 490.9760131835938 L 248.9409942626953 478.8810119628906 L 243.8899993896484 478.8810119628906 L 243.8899993896484 472.5490112304688 L 248.9409942626953 472.5490112304688 L 248.9409942626953 465.0790100097656 L 256.8389892578125 465.0790100097656 L 256.8389892578125 472.5490112304688 L 263.739990234375 472.5490112304688 L 263.739990234375 478.8810119628906 Z" fill="#ff8e7b" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_z3ovlb =
    '<svg viewBox="266.9 471.9 26.0 26.8" ><path  d="M 291.8420104980469 493.6090087890625 C 290.56201171875 495.2219848632813 288.9609985351563 496.4670104980469 287.0400085449219 497.343994140625 C 285.1189880371094 498.2210083007813 283.1380004882813 498.6600036621094 281.0989990234375 498.6600036621094 C 279.1069946289063 498.6600036621094 277.2569885253906 498.3399963378906 275.5499877929688 497.7000122070313 C 273.8420104980469 497.0589904785156 272.3479919433594 496.1589965820313 271.0669860839844 494.9960021972656 C 269.7869873046875 493.8340148925781 268.7780151367188 492.4349975585938 268.0429992675781 490.7990112304688 C 267.3080139160156 489.1619873046875 266.9410095214844 487.3250122070313 266.9410095214844 485.2850036621094 C 266.9410095214844 483.2460021972656 267.3080139160156 481.4070129394531 268.0429992675781 479.77099609375 C 268.7780151367188 478.1340026855469 269.7869873046875 476.7359924316406 271.0669860839844 475.572998046875 C 272.3479919433594 474.4110107421875 273.8420104980469 473.510009765625 275.5499877929688 472.8689880371094 C 277.2569885253906 472.22900390625 279.1069946289063 471.9089965820313 281.0989990234375 471.9089965820313 C 284.7990112304688 471.9089965820313 287.7040100097656 473.1069946289063 289.8139953613281 475.5020141601563 C 291.9240112304688 477.8980102539063 292.9800109863281 481.1579895019531 292.9800109863281 485.2850036621094 L 292.9800109863281 487.7749938964844 L 274.7669982910156 487.7749938964844 C 275.0979919433594 489.2929992675781 275.7869873046875 490.4909973144531 276.8299865722656 491.3680114746094 C 277.8729858398438 492.2460021972656 279.1539916992188 492.6839904785156 280.6719970703125 492.6839904785156 C 281.9530029296875 492.6839904785156 283.0429992675781 492.3989868164063 283.9450073242188 491.8299865722656 C 284.8450012207031 491.260986328125 285.6279907226563 490.5260009765625 286.2929992675781 489.6239929199219 L 291.8420104980469 493.6090087890625 Z M 285.1539916992188 482.3680114746094 C 285.2009887695313 481.0870056152344 284.7630004882813 479.9729919433594 283.8380126953125 479.0239868164063 C 282.9129943847656 478.0759887695313 281.739013671875 477.6010131835938 280.3160095214844 477.6010131835938 C 278.6090087890625 477.6010131835938 277.2799987792969 478.0880126953125 276.3320007324219 479.0589904785156 C 275.3829956054688 480.0320129394531 274.8609924316406 481.135009765625 274.7669982910156 482.3680114746094 L 285.1539916992188 482.3680114746094 Z" fill="#ff8e7b" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_x31ywf =
    '<svg viewBox="297.7 471.9 17.9 26.1" ><path  d="M 297.7479858398438 472.5490112304688 L 305.5740051269531 472.5490112304688 L 305.5740051269531 476.6759948730469 L 305.7160034179688 476.6759948730469 C 306.5690002441406 475.1109924316406 307.5650024414063 473.9259948730469 308.7040100097656 473.1189880371094 C 309.8420104980469 472.31201171875 311.2890014648438 471.9089965820313 313.0440063476563 471.9089965820313 C 313.4710083007813 471.9089965820313 313.9209899902344 471.9330139160156 314.39599609375 471.9800109863281 C 314.8689880371094 472.0280151367188 315.2959899902344 472.0989990234375 315.6759948730469 472.1940002441406 L 315.6759948730469 479.3789978027344 C 315.1069946289063 479.2369995117188 314.5490112304688 479.1189880371094 314.0039978027344 479.0239868164063 C 313.4590148925781 478.9289855957031 312.9020080566406 478.8810119628906 312.3330078125 478.8810119628906 C 310.8139953613281 478.8810119628906 309.6170043945313 479.0840148925781 308.739990234375 479.4859924316406 C 307.8609924316406 479.8900146484375 307.1860046386719 480.4710083007813 306.7120056152344 481.22900390625 C 306.2369995117188 481.989013671875 305.9289855957031 482.8900146484375 305.7869873046875 483.9330139160156 C 305.6449890136719 484.9769897460938 305.5740051269531 486.1390075683594 305.5740051269531 487.4190063476563 L 305.5740051269531 498.0199890136719 L 297.7479858398438 498.0199890136719 L 297.7479858398438 472.5490112304688 Z" fill="#ff8e7b" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_k1plti =
    '<svg viewBox="317.6 471.9 21.7 26.8" ><path  d="M 333.4620056152344 480.0910034179688 C 332.2760009765625 478.6210021972656 330.7590026855469 477.885009765625 328.9089965820313 477.885009765625 C 328.2439880371094 477.885009765625 327.60400390625 478.0400085449219 326.9880065917969 478.3479919433594 C 326.3710021972656 478.6570129394531 326.06298828125 479.2139892578125 326.06298828125 480.0199890136719 C 326.06298828125 480.6369934082031 326.3949890136719 481.0989990234375 327.0589904785156 481.4070129394531 C 327.7229919433594 481.7160034179688 328.5409851074219 481.9760131835938 329.5140075683594 482.1900024414063 C 330.4849853515625 482.4030151367188 331.5419921875 482.6409912109375 332.6799926757813 482.9010009765625 C 333.8179931640625 483.1619873046875 334.8729858398438 483.5660095214844 335.8460083007813 484.1109924316406 C 336.8169860839844 484.6570129394531 337.635009765625 485.4159851074219 338.2999877929688 486.3880004882813 C 338.9639892578125 487.3599853515625 339.2959899902344 488.6530151367188 339.2959899902344 490.2650146484375 C 339.2959899902344 491.9259948730469 338.9400024414063 493.2879943847656 338.22900390625 494.3559875488281 C 337.5180053710938 495.4230041503906 336.60400390625 496.2770080566406 335.489990234375 496.9169921875 C 334.375 497.5570068359375 333.1180114746094 498.0090026855469 331.718994140625 498.2690124511719 C 330.3200073242188 498.5289916992188 328.9320068359375 498.6600036621094 327.5570068359375 498.6600036621094 C 325.7539978027344 498.6600036621094 323.9519958496094 498.3989868164063 322.1499938964844 497.8779907226563 C 320.3469848632813 497.3559875488281 318.8299865722656 496.4540100097656 317.5969848632813 495.1740112304688 L 322.2919921875 489.9089965820313 C 323.0499877929688 490.8110046386719 323.8689880371094 491.4989929199219 324.7470092773438 491.9729919433594 C 325.6239929199219 492.4469909667969 326.6789855957031 492.6839904785156 327.9129943847656 492.6839904785156 C 328.81298828125 492.6839904785156 329.6199951171875 492.5409851074219 330.3320007324219 492.2569885253906 C 331.0429992675781 491.9729919433594 331.3989868164063 491.4989929199219 331.3989868164063 490.8340148925781 C 331.3989868164063 490.1700134277344 331.0660095214844 489.6719970703125 330.4030151367188 489.3399963378906 C 329.7380065917969 489.0090026855469 328.9200134277344 488.7349853515625 327.947998046875 488.5220031738281 C 326.9760131835938 488.3080139160156 325.9209899902344 488.0719909667969 324.7820129394531 487.8099975585938 C 323.6440124511719 487.5499877929688 322.5880126953125 487.1470031738281 321.6159973144531 486.6010131835938 C 320.6440124511719 486.0559997558594 319.8259887695313 485.3089904785156 319.1619873046875 484.3599853515625 C 318.4970092773438 483.4110107421875 318.1659851074219 482.1310119628906 318.1659851074219 480.5180053710938 C 318.1659851074219 479.0480041503906 318.4739990234375 477.7669982910156 319.0910034179688 476.6759948730469 C 319.7070007324219 475.5849914550781 320.5249938964844 474.6839904785156 321.5450134277344 473.9729919433594 C 322.5639953613281 473.260986328125 323.7149963378906 472.739990234375 324.9960021972656 472.4070129394531 C 326.2760009765625 472.0759887695313 327.5809936523438 471.9089965820313 328.9089965820313 471.9089965820313 C 330.5690002441406 471.9089965820313 332.2529907226563 472.1579895019531 333.9599914550781 472.656005859375 C 335.6679992675781 473.1539916992188 337.114013671875 474.0429992675781 338.2999877929688 475.3240051269531 L 333.4620056152344 480.0910034179688 Z" fill="#ff8e7b" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tx0uw =
    '<svg viewBox="343.3 489.3 9.0 9.0" ><path  d="M 343.2799987792969 493.8219909667969 C 343.2799987792969 492.5409851074219 343.7179870605469 491.4630126953125 344.5960083007813 490.5849914550781 C 345.4739990234375 489.7080078125 346.5280151367188 489.2690124511719 347.7619934082031 489.2690124511719 C 349.0429992675781 489.2690124511719 350.1210021972656 489.7080078125 351 490.5849914550781 C 351.8760070800781 491.4630126953125 352.3160095214844 492.5409851074219 352.3160095214844 493.8219909667969 C 352.3160095214844 495.0559997558594 351.8760070800781 496.1109924316406 351 496.9880065917969 C 350.1210021972656 497.8670043945313 349.0429992675781 498.3049926757813 347.7619934082031 498.3049926757813 C 346.5280151367188 498.3049926757813 345.4739990234375 497.8670043945313 344.5960083007813 496.9880065917969 C 343.7179870605469 496.1109924316406 343.2799987792969 495.0559997558594 343.2799987792969 493.8219909667969 Z" fill="#ff8e7b" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_9vl1to =
    '<svg viewBox="152.4 723.6 5.8 6.7" ><path  d="M 156.9340057373047 725.8720092773438 C 156.8379974365234 725.7410278320313 156.7039947509766 725.6279907226563 156.531005859375 725.531982421875 C 156.3580017089844 725.4359741210938 156.1690063476563 725.3889770507813 155.9660034179688 725.3889770507813 C 155.4640045166016 725.3889770507813 155.0740051269531 725.5380249023438 154.7920074462891 725.8369750976563 C 154.5119934082031 726.135986328125 154.3710021972656 726.5239868164063 154.3710021972656 727.0009765625 C 154.3710021972656 727.5029907226563 154.5119934082031 727.9000244140625 154.7920074462891 728.1929931640625 C 155.0740051269531 728.4860229492188 155.4640045166016 728.6320190429688 155.9660034179688 728.6320190429688 C 156.1809997558594 728.6320190429688 156.3699951171875 728.5809936523438 156.531005859375 728.47998046875 C 156.6920013427734 728.3779907226563 156.8269958496094 728.2620239257813 156.9340057373047 728.1300048828125 L 158.2429962158203 729.510009765625 C 157.9309997558594 729.8209838867188 157.5700073242188 730.0419921875 157.1580047607422 730.1729736328125 C 156.7460021972656 730.3049926757813 156.3489990234375 730.3699951171875 155.9660034179688 730.3699951171875 C 155.4640045166016 730.3699951171875 154.9980010986328 730.2890014648438 154.5690002441406 730.1279907226563 C 154.1390075683594 729.9669799804688 153.7619934082031 729.739990234375 153.4400024414063 729.447021484375 C 153.1179962158203 729.155029296875 152.8639984130859 728.802001953125 152.6779937744141 728.3900146484375 C 152.4929962158203 727.97802734375 152.4010009765625 727.5150146484375 152.4010009765625 727.0009765625 C 152.4010009765625 726.4879760742188 152.4929962158203 726.0250244140625 152.6779937744141 725.6129760742188 C 152.8639984130859 725.2009887695313 153.1179962158203 724.8480224609375 153.4400024414063 724.5560302734375 C 153.7619934082031 724.2630004882813 154.1390075683594 724.0360107421875 154.5690002441406 723.8740234375 C 154.9980010986328 723.7130126953125 155.4640045166016 723.6329956054688 155.9660034179688 723.6329956054688 C 156.3489990234375 723.6329956054688 156.7460021972656 723.698974609375 157.1580047607422 723.8300170898438 C 157.5700073242188 723.9609985351563 157.9309997558594 724.1820068359375 158.2429962158203 724.4929809570313 L 156.9340057373047 725.8720092773438 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_iezhae =
    '<svg viewBox="159.0 723.6 4.5 6.6" ><path  d="M 158.9589996337891 723.7940063476563 L 160.9299926757813 723.7940063476563 L 160.9299926757813 724.8330078125 L 160.9660034179688 724.8330078125 C 161.1809997558594 724.4390258789063 161.4320068359375 724.1400146484375 161.7180023193359 723.93701171875 C 162.0050048828125 723.7340087890625 162.3699951171875 723.6329956054688 162.8119964599609 723.6329956054688 C 162.9190063476563 723.6329956054688 163.0330047607422 723.6389770507813 163.1519927978516 723.6510009765625 C 163.27099609375 723.6619873046875 163.3780059814453 723.6810302734375 163.4750061035156 723.7039794921875 L 163.4750061035156 725.5139770507813 C 163.3309936523438 725.47802734375 163.1909942626953 725.448974609375 163.0529937744141 725.4249877929688 C 162.9160003662109 725.4010009765625 162.7760009765625 725.3889770507813 162.6320037841797 725.3889770507813 C 162.2489929199219 725.3889770507813 161.9490051269531 725.4400024414063 161.7279968261719 725.541015625 C 161.5059967041016 725.6420288085938 161.3359985351563 725.7890014648438 161.2169952392578 725.97998046875 C 161.0970001220703 726.1710205078125 161.0200042724609 726.3980102539063 160.9839935302734 726.6610107421875 C 160.947998046875 726.9240112304688 160.9299926757813 727.2160034179688 160.9299926757813 727.5390014648438 L 160.9299926757813 730.208984375 L 158.9589996337891 730.208984375 L 158.9589996337891 723.7940063476563 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_hbjc7p =
    '<svg viewBox="163.9 723.6 6.6 6.7" ><path  d="M 170.1759948730469 729.0980224609375 C 169.85400390625 729.5040283203125 169.4510040283203 729.8179931640625 168.9660034179688 730.0380249023438 C 168.4830017089844 730.260009765625 167.9839935302734 730.3699951171875 167.4700012207031 730.3699951171875 C 166.9680023193359 730.3699951171875 166.5019989013672 730.2890014648438 166.072998046875 730.1279907226563 C 165.6430053710938 729.9669799804688 165.2660064697266 729.739990234375 164.9440002441406 729.447021484375 C 164.6210021972656 729.155029296875 164.3679962158203 728.802001953125 164.1820068359375 728.3900146484375 C 163.9960021972656 727.97802734375 163.9049987792969 727.5150146484375 163.9049987792969 727.0009765625 C 163.9049987792969 726.4879760742188 163.9960021972656 726.0250244140625 164.1820068359375 725.6129760742188 C 164.3679962158203 725.2009887695313 164.6210021972656 724.8480224609375 164.9440002441406 724.5560302734375 C 165.2660064697266 724.2630004882813 165.6430053710938 724.0360107421875 166.072998046875 723.8740234375 C 166.5019989013672 723.7130126953125 166.9680023193359 723.6329956054688 167.4700012207031 723.6329956054688 C 168.4019927978516 723.6329956054688 169.1329956054688 723.9340209960938 169.6649932861328 724.5369873046875 C 170.1970062255859 725.1409912109375 170.4620056152344 725.9619750976563 170.4620056152344 727.0009765625 L 170.4620056152344 727.6290283203125 L 165.875 727.6290283203125 C 165.9589996337891 728.010986328125 166.1320037841797 728.31201171875 166.3950042724609 728.5339965820313 C 166.6580047607422 728.7550048828125 166.9799957275391 728.864990234375 167.3630065917969 728.864990234375 C 167.6849975585938 728.864990234375 167.9600067138672 728.7930297851563 168.1869964599609 728.6500244140625 C 168.4129943847656 728.5070190429688 168.6109924316406 728.322021484375 168.7790069580078 728.094970703125 L 170.1759948730469 729.0980224609375 Z M 168.4920043945313 726.2659912109375 C 168.5030059814453 725.9439697265625 168.3930053710938 725.6630249023438 168.1609954833984 725.4249877929688 C 167.927001953125 725.1859741210938 167.6309967041016 725.0659790039063 167.2729949951172 725.0659790039063 C 166.8430023193359 725.0659790039063 166.5079956054688 725.1890258789063 166.2700042724609 725.4329833984375 C 166.031005859375 725.6790161132813 165.8999938964844 725.9559936523438 165.875 726.2659912109375 L 168.4920043945313 726.2659912109375 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_nvtqvc =
    '<svg viewBox="171.3 723.6 6.2 6.7" ><path  d="M 175.6950073242188 729.4030151367188 L 175.6589965820313 729.4030151367188 C 175.4320068359375 729.7490234375 175.1360015869141 729.9970092773438 174.7720031738281 730.14599609375 C 174.4080047607422 730.2949829101563 174.0220031738281 730.3699951171875 173.6170043945313 730.3699951171875 C 173.3179931640625 730.3699951171875 173.031005859375 730.3280029296875 172.7559967041016 730.2440185546875 C 172.4810028076172 730.1610107421875 172.2400054931641 730.0360107421875 172.031005859375 729.8690185546875 C 171.8220062255859 729.7009887695313 171.6540069580078 729.4920043945313 171.5290069580078 729.2410278320313 C 171.4040069580078 728.9910278320313 171.3399963378906 728.7030029296875 171.3399963378906 728.3809814453125 C 171.3399963378906 727.8319702148438 171.4900054931641 727.405029296875 171.7879943847656 727.0999755859375 C 172.0870056152344 726.7949829101563 172.4570007324219 726.5709838867188 172.8999938964844 726.427978515625 C 173.3410034179688 726.2849731445313 173.8130035400391 726.2009887695313 174.3150024414063 726.177001953125 C 174.8170013427734 726.1530151367188 175.2769927978516 726.1409912109375 175.6950073242188 726.1409912109375 C 175.6950073242188 725.7949829101563 175.5700073242188 725.5170288085938 175.3190002441406 725.3079833984375 C 175.0679931640625 725.0989990234375 174.7689971923828 724.9940185546875 174.4219970703125 724.9940185546875 C 173.7890014648438 724.9940185546875 173.2510070800781 725.2449951171875 172.8099975585938 725.7470092773438 L 171.7519989013672 724.6719970703125 C 172.1109924316406 724.3259887695313 172.5379943847656 724.0659790039063 173.0339965820313 723.8920288085938 C 173.5299987792969 723.719970703125 174.0460052490234 723.6329956054688 174.5829925537109 723.6329956054688 C 175.1580047607422 723.6329956054688 175.6320037841797 723.7039794921875 176.0079956054688 723.8480224609375 C 176.3849945068359 723.9910278320313 176.6829986572266 724.2030029296875 176.9049987792969 724.4840087890625 C 177.125 724.7650146484375 177.281005859375 725.1110229492188 177.3710021972656 725.5230102539063 C 177.4589996337891 725.9349975585938 177.5039978027344 726.4099731445313 177.5039978027344 726.947998046875 L 177.5039978027344 730.208984375 L 175.6950073242188 730.208984375 L 175.6950073242188 729.4030151367188 Z M 175.1929931640625 727.39501953125 C 175.0370025634766 727.39501953125 174.8500061035156 727.4019775390625 174.6280059814453 727.4130249023438 C 174.4080047607422 727.426025390625 174.1929931640625 727.4650268554688 173.9839935302734 727.530029296875 C 173.7749938964844 727.5960083007813 173.5980072021484 727.6909790039063 173.4539947509766 727.8170166015625 C 173.3119964599609 727.9420166015625 173.2400054931641 728.1119995117188 173.2400054931641 728.3280029296875 C 173.2400054931641 728.5659790039063 173.343994140625 728.7429809570313 173.5529937744141 728.8560180664063 C 173.7619934082031 728.969970703125 173.9750061035156 729.0260009765625 174.1900024414063 729.0260009765625 C 174.5720062255859 729.0260009765625 174.9179992675781 728.9249877929688 175.22900390625 728.7219848632813 C 175.5390014648438 728.5180053710938 175.6950073242188 728.219970703125 175.6950073242188 727.8259887695313 L 175.6950073242188 727.39501953125 L 175.1929931640625 727.39501953125 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_c6uck2 =
    '<svg viewBox="178.1 721.9 5.0 8.5" ><path  d="M 183.1309967041016 725.3889770507813 L 181.3930053710938 725.3889770507813 L 181.3930053710938 727.52099609375 C 181.3930053710938 727.7000122070313 181.4019927978516 727.8619995117188 181.4190063476563 728.0050048828125 C 181.4380035400391 728.1480102539063 181.4759979248047 728.27099609375 181.5370025634766 728.3720092773438 C 181.5959930419922 728.4739990234375 181.6849975585938 728.5549926757813 181.8049926757813 728.614013671875 C 181.9239959716797 728.6740112304688 182.0910034179688 728.7030029296875 182.3070068359375 728.7030029296875 C 182.4259948730469 728.7030029296875 182.5700073242188 728.6950073242188 182.7369995117188 728.677001953125 C 182.9040069580078 728.6589965820313 183.0359954833984 728.6079711914063 183.1309967041016 728.5239868164063 L 183.1309967041016 730.1729736328125 C 182.9160003662109 730.2440185546875 182.6889953613281 730.2949829101563 182.4499969482422 730.3259887695313 C 182.2109985351563 730.35498046875 181.9720001220703 730.3699951171875 181.7339935302734 730.3699951171875 C 181.4109954833984 730.3699951171875 181.1060028076172 730.333984375 180.8200073242188 730.2630004882813 C 180.5330047607422 730.1909790039063 180.2850036621094 730.0780029296875 180.0760040283203 729.9219970703125 C 179.8670043945313 729.7670288085938 179.7030029296875 729.5670166015625 179.5829925537109 729.322021484375 C 179.4629974365234 729.0770263671875 179.4040069580078 728.781982421875 179.4040069580078 728.4349975585938 L 179.4040069580078 725.3889770507813 L 178.1309967041016 725.3889770507813 L 178.1309967041016 723.7940063476563 L 179.4040069580078 723.7940063476563 L 179.4040069580078 721.9119873046875 L 181.3930053710938 721.9119873046875 L 181.3930053710938 723.7940063476563 L 183.1309967041016 723.7940063476563 L 183.1309967041016 725.3889770507813 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_4pu2ze =
    '<svg viewBox="183.9 723.6 6.6 6.7" ><path  d="M 190.2079925537109 729.0980224609375 C 189.8860015869141 729.5040283203125 189.4830017089844 729.8179931640625 188.9980010986328 730.0380249023438 C 188.5149993896484 730.260009765625 188.0160064697266 730.3699951171875 187.5019989013672 730.3699951171875 C 187 730.3699951171875 186.5350036621094 730.2890014648438 186.1049957275391 730.1279907226563 C 185.6750030517578 729.9669799804688 185.2980041503906 729.739990234375 184.9759979248047 729.447021484375 C 184.6540069580078 729.155029296875 184.3999938964844 728.802001953125 184.2140045166016 728.3900146484375 C 184.0290069580078 727.97802734375 183.9369964599609 727.5150146484375 183.9369964599609 727.0009765625 C 183.9369964599609 726.4879760742188 184.0290069580078 726.0250244140625 184.2140045166016 725.6129760742188 C 184.3999938964844 725.2009887695313 184.6540069580078 724.8480224609375 184.9759979248047 724.5560302734375 C 185.2980041503906 724.2630004882813 185.6750030517578 724.0360107421875 186.1049957275391 723.8740234375 C 186.5350036621094 723.7130126953125 187 723.6329956054688 187.5019989013672 723.6329956054688 C 188.4340057373047 723.6329956054688 189.1649932861328 723.9340209960938 189.697998046875 724.5369873046875 C 190.22900390625 725.1409912109375 190.4949951171875 725.9619750976563 190.4949951171875 727.0009765625 L 190.4949951171875 727.6290283203125 L 185.9080047607422 727.6290283203125 C 185.9920043945313 728.010986328125 186.1640014648438 728.31201171875 186.427001953125 728.5339965820313 C 186.6900024414063 728.7550048828125 187.0119934082031 728.864990234375 187.3950042724609 728.864990234375 C 187.7169952392578 728.864990234375 187.9929962158203 728.7930297851563 188.218994140625 728.6500244140625 C 188.4459991455078 728.5070190429688 188.6430053710938 728.322021484375 188.8110046386719 728.094970703125 L 190.2079925537109 729.0980224609375 Z M 188.5240020751953 726.2659912109375 C 188.5359954833984 725.9439697265625 188.4250030517578 725.6630249023438 188.1929931640625 725.4249877929688 C 187.9589996337891 725.1859741210938 187.6629943847656 725.0659790039063 187.3049926757813 725.0659790039063 C 186.875 725.0659790039063 186.5399932861328 725.1890258789063 186.302001953125 725.4329833984375 C 186.0630035400391 725.6790161132813 185.9320068359375 725.9559936523438 185.9080047607422 726.2659912109375 L 188.5240020751953 726.2659912109375 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_sd807q =
    '<svg viewBox="191.5 720.2 7.0 10.1" ><path  d="M 198.4140014648438 730.208984375 L 196.6049957275391 730.208984375 L 196.6049957275391 729.3670043945313 L 196.5690002441406 729.3670043945313 C 196.4129943847656 729.6060180664063 196.1620025634766 729.8319702148438 195.8170013427734 730.0479736328125 C 195.4700012207031 730.2630004882813 195.0700073242188 730.3699951171875 194.6159973144531 730.3699951171875 C 194.1380004882813 730.3699951171875 193.7050018310547 730.2890014648438 193.3170013427734 730.1279907226563 C 192.9290008544922 729.9669799804688 192.5970001220703 729.7369995117188 192.322998046875 729.43798828125 C 192.0469970703125 729.1400146484375 191.8350067138672 728.7899780273438 191.6860046386719 728.3900146484375 C 191.5370025634766 727.989990234375 191.4620056152344 727.5449829101563 191.4620056152344 727.0549926757813 C 191.4620056152344 726.6129760742188 191.531005859375 726.1859741210938 191.6679992675781 725.7739868164063 C 191.8059997558594 725.3619995117188 192 724.9970092773438 192.25 724.6810302734375 C 192.5010070800781 724.364990234375 192.8059997558594 724.1110229492188 193.1640014648438 723.9190063476563 C 193.5229949951172 723.72802734375 193.9290008544922 723.6329956054688 194.3829956054688 723.6329956054688 C 194.8009948730469 723.6329956054688 195.1900024414063 723.698974609375 195.5480041503906 723.8300170898438 C 195.9069976806641 723.9609985351563 196.1990051269531 724.1820068359375 196.4259948730469 724.4929809570313 L 196.4440002441406 724.4929809570313 L 196.4440002441406 720.2459716796875 L 198.4140014648438 720.2459716796875 L 198.4140014648438 730.208984375 Z M 196.6049957275391 727.0009765625 C 196.6049957275391 726.5239868164063 196.4669952392578 726.135986328125 196.1929931640625 725.8369750976563 C 195.9179992675781 725.5380249023438 195.5299987792969 725.3889770507813 195.0279998779297 725.3889770507813 C 194.5269927978516 725.3889770507813 194.1349945068359 725.5380249023438 193.8549957275391 725.8369750976563 C 193.5740051269531 726.135986328125 193.4329986572266 726.5239868164063 193.4329986572266 727.0009765625 C 193.4329986572266 727.5029907226563 193.5740051269531 727.9000244140625 193.8549957275391 728.1929931640625 C 194.1349945068359 728.4860229492188 194.5269927978516 728.6320190429688 195.0279998779297 728.6320190429688 C 195.5299987792969 728.6320190429688 195.9179992675781 728.4860229492188 196.1929931640625 728.1929931640625 C 196.4669952392578 727.9000244140625 196.6049957275391 727.5029907226563 196.6049957275391 727.0009765625 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_uaaz8h =
    '<svg viewBox="203.6 720.2 7.0 10.1" ><path  d="M 203.5749969482422 720.2459716796875 L 205.5639953613281 720.2459716796875 L 205.5639953613281 724.4929809570313 L 205.5809936523438 724.4929809570313 C 205.8079986572266 724.1820068359375 206.1009979248047 723.9609985351563 206.4589996337891 723.8300170898438 C 206.8179931640625 723.698974609375 207.2059936523438 723.6329956054688 207.6239929199219 723.6329956054688 C 208.0659942626953 723.6329956054688 208.468994140625 723.72802734375 208.8329925537109 723.9190063476563 C 209.197998046875 724.1110229492188 209.5059967041016 724.364990234375 209.7559967041016 724.6810302734375 C 210.0070037841797 724.9970092773438 210.2019958496094 725.3619995117188 210.3390045166016 725.7739868164063 C 210.4759979248047 726.1859741210938 210.5449981689453 726.6129760742188 210.5449981689453 727.0549926757813 C 210.5449981689453 727.5449829101563 210.4700012207031 727.989990234375 210.3209991455078 728.3900146484375 C 210.1710052490234 728.7899780273438 209.9589996337891 729.1400146484375 209.6849975585938 729.43798828125 C 209.4109954833984 729.7369995117188 209.0789947509766 729.9669799804688 208.6909942626953 730.1279907226563 C 208.302001953125 730.2890014648438 207.8699951171875 730.3699951171875 207.3910064697266 730.3699951171875 C 206.9369964599609 730.3699951171875 206.5350036621094 730.2630004882813 206.1820068359375 730.0479736328125 C 205.8289947509766 729.8319702148438 205.5760040283203 729.6060180664063 205.4199981689453 729.3670043945313 L 205.4029998779297 729.3670043945313 L 205.4029998779297 730.208984375 L 203.5749969482422 730.208984375 L 203.5749969482422 720.2459716796875 Z M 205.4029998779297 727.0009765625 C 205.4029998779297 727.5029907226563 205.5390014648438 727.9000244140625 205.8150024414063 728.1929931640625 C 206.0890045166016 728.4860229492188 206.4779968261719 728.6320190429688 206.97900390625 728.6320190429688 C 207.4810028076172 728.6320190429688 207.8719940185547 728.4860229492188 208.1529998779297 728.1929931640625 C 208.4340057373047 727.9000244140625 208.5740051269531 727.5029907226563 208.5740051269531 727.0009765625 C 208.5740051269531 726.5239868164063 208.4340057373047 726.135986328125 208.1529998779297 725.8369750976563 C 207.8719940185547 725.5380249023438 207.4810028076172 725.3889770507813 206.97900390625 725.3889770507813 C 206.4779968261719 725.3889770507813 206.0890045166016 725.5380249023438 205.8150024414063 725.8369750976563 C 205.5390014648438 726.135986328125 205.4029998779297 726.5239868164063 205.4029998779297 727.0009765625 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_qelrvc =
    '<svg viewBox="211.0 723.8 7.3 9.6" ><path  d="M 215.3820037841797 731.2479858398438 C 215.2510070800781 731.594970703125 215.1219940185547 731.8989868164063 214.9969940185547 732.1619873046875 C 214.8719940185547 732.4249877929688 214.7160034179688 732.64599609375 214.5319976806641 732.8250122070313 C 214.3459930419922 733.0040283203125 214.10400390625 733.1409912109375 213.8059997558594 733.2369995117188 C 213.5070037841797 733.3319702148438 213.125 733.3809814453125 212.6589965820313 733.3809814453125 C 212.2039947509766 733.3809814453125 211.7149963378906 733.2969970703125 211.1900024414063 733.1300048828125 L 211.4579925537109 731.5170288085938 C 211.6139984130859 731.5770263671875 211.7630004882813 731.6240234375 211.9069976806641 731.6610107421875 C 212.0500030517578 731.6959838867188 212.2039947509766 731.7139892578125 212.3719940185547 731.7139892578125 C 212.5989990234375 731.7139892578125 212.7819976806641 731.6900024414063 212.9190063476563 731.6420288085938 C 213.0559997558594 731.594970703125 213.1690063476563 731.5260009765625 213.2590026855469 731.4359741210938 C 213.3489990234375 731.3469848632813 213.4259948730469 731.2360229492188 213.4929962158203 731.10498046875 C 213.5579986572266 730.9730224609375 213.6260070800781 730.8179931640625 213.6990051269531 730.6389770507813 L 213.8410034179688 730.2630004882813 L 211.0290069580078 723.7940063476563 L 213.1790008544922 723.7940063476563 L 214.8090057373047 728.0230102539063 L 214.8450012207031 728.0230102539063 L 216.2610015869141 723.7940063476563 L 218.2859954833984 723.7940063476563 L 215.3820037841797 731.2479858398438 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_92gdfo =
    '<svg viewBox="222.7 720.9 8.1 9.3" ><path  d="M 222.6750030517578 720.8729858398438 L 224.7369995117188 720.8729858398438 L 224.7369995117188 724.3489990234375 L 228.7319946289063 724.3489990234375 L 228.7319946289063 720.8729858398438 L 230.7929992675781 720.8729858398438 L 230.7929992675781 730.208984375 L 228.7319946289063 730.208984375 L 228.7319946289063 726.177001953125 L 224.7369995117188 726.177001953125 L 224.7369995117188 730.208984375 L 222.6750030517578 730.208984375 L 222.6750030517578 720.8729858398438 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_lsvw24 =
    '<svg viewBox="232.7 720.9 8.1 9.3" ><path  d="M 232.6920013427734 720.8729858398438 L 234.7530059814453 720.8729858398438 L 234.7530059814453 724.3489990234375 L 238.7480010986328 724.3489990234375 L 238.7480010986328 720.8729858398438 L 240.8099975585938 720.8729858398438 L 240.8099975585938 730.208984375 L 238.7480010986328 730.208984375 L 238.7480010986328 726.177001953125 L 234.7530059814453 726.177001953125 L 234.7530059814453 730.208984375 L 232.6920013427734 730.208984375 L 232.6920013427734 720.8729858398438 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_4lhn8q =
    '<svg viewBox="242.8 720.9 5.9 9.3" ><path  d="M 242.7980041503906 720.8729858398438 L 244.8410034179688 720.8729858398438 L 244.8410034179688 728.3090209960938 L 248.6580047607422 728.3090209960938 L 248.6580047607422 730.208984375 L 242.7980041503906 730.208984375 L 242.7980041503906 720.8729858398438 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_62og37 =
    '<svg viewBox="249.9 720.9 8.7 9.3" ><path  d="M 249.8939971923828 720.8729858398438 L 251.9369964599609 720.8729858398438 L 251.9369964599609 724.7440185546875 L 255.5559997558594 720.8729858398438 L 258.2619934082031 720.8729858398438 L 254.1049957275391 725.208984375 L 258.6210021972656 730.208984375 L 255.7359924316406 730.208984375 L 251.9369964599609 725.7830200195313 L 251.9369964599609 730.208984375 L 249.8939971923828 730.208984375 L 249.8939971923828 720.8729858398438 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
