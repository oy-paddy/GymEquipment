# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

# glide 的混淆代码
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep public enum com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$** {
  **[] $VALUES;
  public *;
}
# banner 的混淆代码
-keep class com.youth.banner.** {
    *;
 }

#高德
 -keep class com.amap.api.maps.**{*;}
 -keep class com.autonavi.amap.mapcore.*{*;}
 -keep class com.amap.api.trace.**{*;}
 -keep class com.amap.api.maps.**{*;}
 -keep class com.autonavi.**{*;}
 -keep class com.amap.api.trace.**{*;}
 -keep class com.amap.api.location.**{*;}
 -keep class com.amap.api.fence.**{*;}
 -keep class com.autonavi.aps.amapapi.model.**{*;}
 -keep class com.amap.api.services.**{*;}
 -keep class com.amap.api.maps2d.**{*;}
 -keep class com.amap.api.mapcore2d.**{*;}
 -keep class com.amap.api.navi.**{*;}
 -keep class com.autonavi.**{*;}