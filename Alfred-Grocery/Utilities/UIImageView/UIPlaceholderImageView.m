//
// Created by Daniela Postigo on 9/6/15.
// Copyright (c) 2015 Daniela Postigo. All rights reserved.
//

#import <PocketSVG/PocketSVG.h>
#import "UIPlaceholderImageView.h"


@implementation UIPlaceholderImageView {

}

- (void) awakeFromNib {
    [super awakeFromNib];


    //1: Turn your SVG into a CGPath:
    CGPathRef myPath = [PocketSVG pathFromSVGFileNamed: @"placeholder-image"];


    NSLog(@"myPath = %p", myPath);
//2: To display it on screen, you can create a CAShapeLayer
//and set myPath as its path property:
    CAShapeLayer *myShapeLayer = [CAShapeLayer layer];
    myShapeLayer.path = myPath;

//3: Fiddle with it using CAShapeLayer's properties:
    myShapeLayer.strokeColor = [[UIColor redColor] CGColor];
    myShapeLayer.lineWidth = 4;
    myShapeLayer.fillColor = [[UIColor clearColor] CGColor];

//4: Display it!
//    [self.view.layer addSublayer:myShapeLayer];

    [self.layer addSublayer: myShapeLayer];

//
//    <UIBezierPath: 0x7ff753b18240; <MoveTo {25.645086288452148, 7.1347222328186035}>,
//    <LineTo {24.597328186035156, 7.0349359512329102}>,
//    <LineTo {24.497543334960938, 7.0349359512329102}>,
//    <LineTo {24.497543334960938, 7.0349359512329102}>,
//    <CurveTo {23.94871711730957, 6.5360040664672852} {24.248077392578125, 6.9850425720214844} {23.998611450195312, 6.7854700088500977}>,
//    <LineTo {23.94871711730957, 6.4362177848815918}>,
//    <LineTo {23.94871711730957, 6.4362177848815918}>,
//    <LineTo {22.801176071166992, 1.2972222566604614}>,
//    <CurveTo {-14, 21.054914474487305} {22.601602554321289, 0.49893161654472351} {21.853204727172852, -2.547961950302124}>,
//    <LineTo {1.1475427150726318, 4.5901708602905273}>,
//    <CurveTo {0.04989316314458847, 6.3364315032958984} {0.3492521345615387, 4.7897434234619141} {-0.14967948198318481, 5.5381412506103516}>,
//    <LineTo {2.4447648525238037, 17.11335563659668}>,
//    <LineTo {2.4447648525238037, 17.11335563659668}>,
//    <LineTo {2.4447648525238037, 17.163248062133789}>,
//    <LineTo {2.4447648525238037, 17.263034820556641}>,
//    <LineTo {2.4447648525238037, 17.31292724609375}>,
//    <LineTo {2.4447648525238037, 17.362819671630859}>,
//    <LineTo {2.4447648525238037, 17.362819671630859}>,
//    <LineTo {1.9458333253860474, 21.703525543212891}>,
//    <CurveTo {3.2430555820465088, 23.350000381469727} {1.846047043800354, 22.501815795898438} {2.4447648525238037, 23.250213623046875}>,
//    <LineTo {23.499679565429688, 25.744871139526367}>,
//    <CurveTo {25.146154403686523, 24.447649002075195} {24.297969818115234, 25.844657897949219} {25.046367645263672, 25.245939254760742}>,
//    <LineTo {25.894552230834961, 18.011430740356445}>,
//    <LineTo {26.144016265869141, 16.015705108642578}>,
//    <LineTo {26.99220085144043, 8.7313032150268555}>,
//    <CurveTo {25.645086288452148, 7.1347222328186035} {27.042093276977539, 7.9829058647155762} {26.443376541137695, 7.2345085144042969}>,
//    <LineTo {25.645086288452148, 7.1347222328186035}>,
//    <Close>,
//    <MoveTo {10.427670478820801, 4.6899571418762207}>,
//    <LineTo {10.527457237243652, 4.6899571418762207}>,
//    <LineTo {20.356410980224609, 2.4946582317352295}>,
//    <CurveTo {21.154701232910156, 2.9935896396636963} {20.705661773681641, 2.394871711730957} {21.054914474487305, 2.6443376541137695}>,
//    <CurveTo {21.154701232910156, 3.0434830188751221} {21.154701232910156, 2.9935896396636963} {21.154701232910156, 2.9935896396636963}>,
//    <CurveTo {21.154701232910156, 3.0933761596679688} {21.154701232910156, 3.0434830188751221} {21.154701232910156, 3.0434830188751221}>,
//    <LineTo {21.853204727172852, 6.2865386009216309}>,
//    <LineTo {21.853204727172852, 6.2865386009216309}>,
//    <CurveTo {21.853204727172852, 6.3364315032958984} {21.853204727172852, 6.2865386009216309} {21.853204727172852, 6.2865386009216309}>,
//    <LineTo {21.853204727172852, 6.3863248825073242}>,
//    <CurveTo {21.50395393371582, 6.7355771064758301} {21.853204727172852, 6.5858974456787109} {21.703525543212891, 6.7355771064758301}>,
//    <LineTo {21.50395393371582, 6.7355771064758301}>,
//    <LineTo {21.404167175292969, 6.7355771064758301}>,
//    <LineTo {19.707799911499023, 6.5360040664672852}>,
//    <LineTo {16.863889694213867, 6.1867523193359375}>,
//    <LineTo {10.477563858032227, 5.4383544921875}>,
//    <LineTo {10.427670478820801, 5.4383544921875}>,
//    <LineTo {10.427670478820801, 5.4383544921875}>,
//    <CurveTo {10.178205490112305, 5.0891027450561523} {10.27799129486084, 5.3884615898132324} {10.178205490112305, 5.2886753082275391}>,
//    <CurveTo {10.427670478820801, 4.6899571418762207} {10.178205490112305, 4.8895297050476074} {10.27799129486084, 4.7398505210876465}>,
//    <LineTo {10.427670478820801, 4.6899571418762207}>,
//    <Close>,
//    <MoveTo {3.6422009468078613, 6.6856837272644043}>,
//    <LineTo {3.3428418636322021, 9.2302350997924805}>,
//    <LineTo {3.3428418636322021, 9.2302350997924805}>,
//    <LineTo {3.3428418636322021, 9.3300209045410156}>,
//    <LineTo {3.3428418636322021, 9.3300209045410156}>,
//    <CurveTo {3.0434830188751221, 9.5794868469238281} {3.2929487228393555, 9.479701042175293} {3.1931624412536621, 9.5794868469238281}>,
//    <CurveTo {2.7441239356994629, 9.3799142837524414} {2.8938033580780029, 9.5794868469238281} {2.7940170764923096, 9.479701042175293}>,
//    <CurveTo {2.6942307949066162, 9.2801284790039062} {2.7441239356994629, 9.3300209045410156} {2.6942307949066162, 9.2801284790039062}>,
//    <LineTo {2.245192289352417, 7.2345085144042969}>,
//    <CurveTo {2.245192289352417, 7.1846156120300293} {2.245192289352417, 7.2345085144042969} {2.245192289352417, 7.2345085144042969}>,
//    <CurveTo {2.245192289352417, 7.1347222328186035} {2.245192289352417, 7.1846156120300293} {2.245192289352417, 7.1846156120300293}>,
//    <CurveTo {2.7441239356994629, 6.3863248825073242} {2.1952991485595703, 6.7854700088500977} {2.394871711730957, 6.4362177848815918}>,
//    <LineTo {3.1931624412536621, 6.2865386009216309}>,
//    <LineTo {3.1931624412536621, 6.2865386009216309}>,
//    <CurveTo {3.2929487228393555, 6.2366452217102051} {3.2430555820465088, 6.2865386009216309} {3.2430555820465088, 6.2366452217102051}>,
//    <LineTo {3.2929487228393555, 6.2366452217102051}>,
//    <CurveTo {3.6422009468078613, 6.5360040664672852} {3.4925212860107422, 6.2366452217102051} {3.5923078060150146, 6.3863248825073242}>,
//    <LineTo {3.6422009468078613, 6.5360040664672852}>,
//    <CurveTo {3.6422009468078613, 6.6856837272644043} {3.692094087600708, 6.6357908248901367} {3.692094087600708, 6.6856837272644043}>,
//    <LineTo {3.6422009468078613, 6.6856837272644043}>,
//    <Close>,
//    <MoveTo {24.796901702880859, 9.8788461685180664}>,
//    <CurveTo {24.796901702880859, 9.8788461685180664} {24.74700927734375, 9.8788461685180664} {24.74700927734375, 9.8788461685180664}>,
//    <LineTo {24.796901702880859, 9.9287395477294922}>,
//    <LineTo {24.74700927734375, 10.128312110900879}>,
//    <LineTo {23.998611450195312, 16.265171051025391}>,
//    <LineTo {23.699251174926758, 18.759828567504883}>,
//    <LineTo {23.200321197509766, 23.050640106201172}>,
//    <CurveTo {23.200321197509766, 23.100534439086914} {23.200321197509766, 23.050640106201172} {23.200321197509766, 23.050640106201172}>,
//    <CurveTo {23.200321197509766, 23.150426864624023} {23.200321197509766, 23.100534439086914} {23.200321197509766, 23.100534439086914}>,
//    <CurveTo {22.501815795898438, 23.699251174926758} {23.150426864624023, 23.499679565429688} {22.851068496704102, 23.699251174926758}>,
//    <LineTo {22.451923370361328, 23.699251174926758}>,
//    <LineTo {22.402029037475586, 23.699251174926758}>,
//    <LineTo {8.831089973449707, 22.102670669555664}>,
//    <LineTo {4.6400642395019531, 21.603738784790039}>,
//    <LineTo {4.5901708602905273, 21.603738784790039}>,
//    <LineTo {4.5402779579162598, 21.603738784790039}>,
//    <CurveTo {3.9914529323577881, 20.905235290527344} {4.1910257339477539, 21.55384635925293} {3.9914529323577881, 21.254487991333008}>,
//    <CurveTo {3.9914529323577881, 20.855340957641602} {3.9914529323577881, 20.905235290527344} {3.9914529323577881, 20.905235290527344}>,
//    <CurveTo {3.9914529323577881, 20.805448532104492} {3.9914529323577881, 20.855340957641602} {3.9914529323577881, 20.855340957641602}>,
//    <LineTo {4.4404916763305664, 17.163248062133789}>,
//    <LineTo {5.5880341529846191, 7.6336536407470703}>,
//    <CurveTo {5.5880341529846191, 7.5837607383728027} {5.5880341529846191, 7.6336536407470703} {5.5880341529846191, 7.6336536407470703}>,
//    <CurveTo {5.5880341529846191, 7.533867359161377} {5.5880341529846191, 7.5837607383728027} {5.5880341529846191, 7.5837607383728027}>,
//    <CurveTo {6.3364315032958984, 6.9850425720214844} {5.6379275321960449, 7.1846156120300293} {5.9871792793273926, 6.9351496696472168}>,
//    <LineTo {22.451923370361328, 8.8809833526611328}>,
//    <LineTo {24.198183059692383, 9.0805559158325195}>,
//    <CurveTo {24.597328186035156, 9.2302350997924805} {24.347864151000977, 9.0805559158325195} {24.497543334960938, 9.1803417205810547}>,
//    <CurveTo {24.796901702880859, 9.8788461685180664} {24.697114944458008, 9.479701042175293} {24.796901702880859, 9.6792736053466797}>,
//    <Close>,
//    <MoveTo {21.054914474487305, 10.926602363586426}>,
//    <CurveTo {19.358547210693359, 12.223824501037598} {20.206729888916016, 10.826816558837891} {19.458333969116211, 11.425534248352051}>,
//    <CurveTo {19.408439636230469, 12.772649765014648} {19.358547210693359, 12.423397064208984} {19.358547210693359, 12.622969627380371}>,
//    <CurveTo {20.705661773681641, 13.870299339294434} {19.55811882019043, 13.371367454528809} {20.057050704956055, 13.820405960083008}>,
//    <LineTo {20.855340957641602, 13.870299339294434}>,
//    <CurveTo {22.352136611938477, 12.523183822631836} {21.603738784790039, 13.870299339294434} {22.302244186401367, 13.321474075317383}>,
//    <CurveTo {21.054914474487305, 10.926602363586426} {22.451923370361328, 11.774785995483398} {21.853204727172852, 11.026389122009277}>,
//    <Close>,
//    <MoveTo {21.005022048950195, 20.306516647338867}>,
//    <LineTo {20.50609016418457, 19.50822639465332}>,
//    <LineTo {19.358547210693359, 17.761966705322266}>,
//    <LineTo {17.961538314819336, 15.566666603088379}>,
//    <LineTo {17.811859130859375, 15.317200660705566}>,
//    <CurveTo {17.31292724609375, 15.017842292785645} {17.712072372436523, 15.167521476745605} {17.512500762939453, 15.017842292785645}>,
//    <CurveTo {16.764102935791016, 15.217414855957031} {17.11335563659668, 15.017842292785645} {16.913782119750977, 15.067734718322754}>,
//    <LineTo {16.215278625488281, 15.766239166259766}>,
//    <CurveTo {16.11549186706543, 15.816132545471191} {16.215278625488281, 15.816132545471191} {16.165384292602539, 15.816132545471191}>,
//    <CurveTo {15.816132545471191, 15.965811729431152} {16.015705108642578, 15.866025924682617} {15.915918350219727, 15.915918350219727}>,
//    <LineTo {15.616559982299805, 15.965811729431152}>,
//    <CurveTo {15.167521476745605, 15.71634578704834} {15.416987419128418, 15.965811729431152} {15.267307281494141, 15.866025924682617}>,
//    <CurveTo {15.067734718322754, 15.566666603088379} {15.11762809753418, 15.66645336151123} {15.11762809753418, 15.616559982299805}>,
//    <LineTo {13.47115421295166, 13.121901512145996}>,
//    <CurveTo {12.822543144226074, 12.722756385803223} {13.321474075317383, 12.922328948974609} {13.07200813293457, 12.722756385803223}>,
//    <CurveTo {12.074145317077637, 12.972222328186035} {12.523183822631836, 12.672863006591797} {12.273717880249023, 12.772649765014648}>,
//    <LineTo {6.885256290435791, 17.911645889282227}>,
//    <LineTo {6.4362177848815918, 18.310791015625}>,
//    <LineTo {6.3364315032958984, 18.410577774047852}>,
//    <CurveTo {6.1867523193359375, 18.709936141967773} {6.2865386009216309, 18.51036262512207} {6.2366452217102051, 18.610149383544922}>,
//    <CurveTo {6.7355771064758301, 19.358547210693359} {6.1368589401245117, 19.059188842773438} {6.3863248825073242, 19.358547210693359}>,
//    <LineTo {8.1325855255126953, 19.50822639465332}>,
//    <LineTo {8.5816240310668945, 19.55811882019043}>,
//    <LineTo {8.6814098358154297, 19.55811882019043}>,
//    <LineTo {10.078418731689453, 19.707799911499023}>,
//    <LineTo {12.672863006591797, 20.007158279418945}>,
//    <LineTo {13.720620155334473, 20.156837463378906}>,
//    <LineTo {14.06987190246582, 20.206729888916016}>,
//    <LineTo {14.169657707214355, 20.206729888916016}>,
//    <LineTo {16.065597534179688, 20.406303405761719}>,
//    <LineTo {17.163248062133789, 20.55598258972168}>,
//    <LineTo {19.109081268310547, 20.805448532104492}>,
//    <LineTo {19.208868026733398, 20.805448532104492}>,
//    <LineTo {19.857479095458984, 20.905235290527344}>,
//    <LineTo {20.605876922607422, 21.005022048950195}>,
//    <CurveTo {21.104806900024414, 20.605876922607422} {20.855340957641602, 21.054914474487305} {21.104806900024414, 20.855340957641602}>,
//    <CurveTo {21.054914474487305, 20.356410980224609} {21.104806900024414, 20.50609016418457} {21.104806900024414, 20.406303405761719}>,
//    <LineTo {21.005022048950195, 20.306516647338867}>,
//    <Close>

}

@end