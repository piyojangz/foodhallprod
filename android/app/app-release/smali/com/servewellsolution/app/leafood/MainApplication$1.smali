.class Lcom/servewellsolution/app/leafood/MainApplication$1;
.super Lcom/facebook/react/ReactNativeHost;
.source "MainApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/servewellsolution/app/leafood/MainApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/servewellsolution/app/leafood/MainApplication;


# direct methods
.method constructor <init>(Lcom/servewellsolution/app/leafood/MainApplication;Landroid/app/Application;)V
    .locals 0
    .param p1, "this$0"    # Lcom/servewellsolution/app/leafood/MainApplication;
    .param p2, "x0"    # Landroid/app/Application;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/servewellsolution/app/leafood/MainApplication$1;->this$0:Lcom/servewellsolution/app/leafood/MainApplication;

    invoke-direct {p0, p2}, Lcom/facebook/react/ReactNativeHost;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method protected getPackages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/facebook/react/ReactPackage;

    const/4 v1, 0x0

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage;

    invoke-direct {v2}, Lcom/facebook/react/shell/MainReactPackage;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/reactnative/ivpusic/imagepicker/PickerPackage;

    invoke-direct {v2}, Lcom/reactnative/ivpusic/imagepicker/PickerPackage;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/evollu/react/fcm/FIRMessagingPackage;

    invoke-direct {v2}, Lcom/evollu/react/fcm/FIRMessagingPackage;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/burnweb/rnpermissions/RNPermissionsPackage;

    invoke-direct {v2}, Lcom/burnweb/rnpermissions/RNPermissionsPackage;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/facebook/reactnative/androidsdk/FBSDKPackage;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/facebook/reactnative/androidsdk/FBSDKPackage;-><init>(Lcom/facebook/CallbackManager;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/airbnb/android/react/maps/MapsPackage;

    invoke-direct {v2}, Lcom/airbnb/android/react/maps/MapsPackage;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/magus/fblogin/FacebookLoginPackage;

    invoke-direct {v2}, Lcom/magus/fblogin/FacebookLoginPackage;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsPackage;

    invoke-direct {v2}, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsPackage;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/dieam/reactnativepushnotification/ReactNativePushNotificationPackage;

    invoke-direct {v2}, Lcom/dieam/reactnativepushnotification/ReactNativePushNotificationPackage;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/rnfs/RNFSPackage;

    invoke-direct {v2}, Lcom/rnfs/RNFSPackage;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/oblador/vectoricons/VectorIconsPackage;

    invoke-direct {v2}, Lcom/oblador/vectoricons/VectorIconsPackage;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridgePackage;

    invoke-direct {v2}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridgePackage;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/learnium/RNDeviceInfo/RNDeviceInfo;

    invoke-direct {v2}, Lcom/learnium/RNDeviceInfo/RNDeviceInfo;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUseDeveloperSupport()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method
