# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html
#指定外部模糊字典
#-obfuscationdictionary ./proguard-keys.txt
##指定class模糊字典
#-classobfuscationdictionary ./proguard-keys.txt
##指定package模糊字典
#-packageobfuscationdictionary ./proguard-keys.txt

-dontpreverify
-flattenpackagehierarchy
-dontusemixedcaseclassnames
-useuniqueclassmembernames
-ignorewarnings

# 指定代码的压缩级别，值在0-7之间。一般设置5足矣
-optimizationpasses 5

# 打印混淆信息
-verbose

# 代码优化选项，不加该行会将没有用到的类删除，发布的是代码库这个选项需要
# 在做混淆之前最开始会默认对代码进行压缩，为了增加反编译的难度可以选择不压缩
-dontshrink

# 保留参数的名称和方法，该选项可以保留调试级别的属性。
-keepparameternames

# 过滤泛型,出现类型转换错误时再启用这个。目前的项目暂时无泛型类型，我先注释了
#-keepattributes Signature

# 保护代码中的Annotation不被混淆
-keepattributes *Annotation*

# 指定不去忽略非公共的库的类的成员
-dontskipnonpubliclibraryclassmembers

# 指定不去忽略非公共的库类(不跳过library中的非public的类)
-dontskipnonpubliclibraryclasses


# 基础 ##################################################################################
# We restrict a few more optimizations for the maps library.
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*,!code/simplification/variable
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class com.android.vending.licensing.ILicensingService
-keep public class * extends android.app.Fragment
-keep public class * extends android.support.v4.app.Fragment
-keep class android.widget.FrameLayout {*;}
#okhttp
-dontwarn okhttp3.**
-dontwarn okio.**
-dontwarn javax.annotation.**
# A resource is loaded with a relative path so the package of this class must be preserved.
-keepnames class okhttp3.internal.publicsuffix.PublicSuffixDatabase
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
# Evernote
-dontwarn com.evernote.android.job.gcm.**
-dontwarn com.evernote.android.job.GcmAvailableHelper
-dontwarn com.google.android.gms.ads.identifier.**
-keep public class com.evernote.android.job.v21.PlatformJobService
-keep public class com.evernote.android.job.v14.PlatformAlarmService
-keep public class com.evernote.android.job.v14.PlatformAlarmReceiver
-keep public class com.evernote.android.job.JobBootReceiver
-keep public class com.evernote.android.job.JobRescheduleService
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
-keep class com.google.android.gms.internal.** { *; }
# Moat SDK
-keep class com.moat.** { *; }
-dontwarn com.moat.**





