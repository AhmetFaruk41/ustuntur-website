<?Php
session_start();
$kod=substr(md5(rand(0,999999)),0,5);
$font="../../assets/css/fonts/AppleGaramond-Light.ttf";
$_SESSION["secure_code"]=$kod;

$rsm=imagecreate(100,40);
$beyaz=ImageColorAllocate($rsm,rand(0,0),rand(0,0),rand(0,0));
$mavi=ImageColorAllocate($rsm,rand(233,233),rand(236,236),rand(239,239));

imagefill($rsm,0,0,$mavi);

imagettftext($rsm,18,rand(0,0),20,30,$beyaz,$font,$kod);

header("Content-type: image/png");
ImagePNG($rsm);
ImageDestroy($rsm);
?>