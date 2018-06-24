.class public Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder;
.super Ljava/lang/Object;
.source "DefaultAirMapViewBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final isNativeMapSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-static {p1}, Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder;->checkNativeMapSupported(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder;-><init>(Landroid/content/Context;Z)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isNativeMapSupported"    # Z

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p2, p0, Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder;->isNativeMapSupported:Z

    .line 38
    iput-object p1, p0, Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder;->context:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private static checkNativeMapSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getWebMapViewBuilder()Lcom/airbnb/android/airmapview/AirMapViewBuilder;
    .locals 8

    .prologue
    .line 79
    iget-object v5, p0, Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder;->context:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 81
    :try_start_0
    iget-object v5, p0, Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder;->context:Landroid/content/Context;

    .line 82
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 83
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 84
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v5, "com.mapbox.ACCESS_TOKEN"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "accessToken":Ljava/lang/String;
    const-string v5, "com.mapbox.MAP_ID"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "mapId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 88
    new-instance v5, Lcom/airbnb/android/airmapview/MapboxWebMapViewBuilder;

    invoke-direct {v5, v0, v4}, Lcom/airbnb/android/airmapview/MapboxWebMapViewBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "mapId":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 90
    :catch_0
    move-exception v3

    .line 91
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder;->TAG:Ljava/lang/String;

    const-string v6, "Failed to load Mapbox access token and map id"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    new-instance v5, Lcom/airbnb/android/airmapview/WebAirMapViewBuilder;

    invoke-direct {v5}, Lcom/airbnb/android/airmapview/WebAirMapViewBuilder;-><init>()V

    goto :goto_0
.end method

.method private static isGooglePlayServicesAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    .line 103
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public builder()Lcom/airbnb/android/airmapview/AirMapViewBuilder;
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder;->isNativeMapSupported:Z

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lcom/airbnb/android/airmapview/NativeAirMapViewBuilder;

    invoke-direct {v0}, Lcom/airbnb/android/airmapview/NativeAirMapViewBuilder;-><init>()V

    .line 49
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder;->getWebMapViewBuilder()Lcom/airbnb/android/airmapview/AirMapViewBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public builder(Lcom/airbnb/android/airmapview/AirMapViewTypes;)Lcom/airbnb/android/airmapview/AirMapViewBuilder;
    .locals 2
    .param p1, "mapType"    # Lcom/airbnb/android/airmapview/AirMapViewTypes;

    .prologue
    .line 61
    sget-object v0, Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder$1;->$SwitchMap$com$airbnb$android$airmapview$AirMapViewTypes:[I

    invoke-virtual {p1}, Lcom/airbnb/android/airmapview/AirMapViewTypes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Requested map type is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :pswitch_0
    iget-boolean v0, p0, Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder;->isNativeMapSupported:Z

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lcom/airbnb/android/airmapview/NativeAirMapViewBuilder;

    invoke-direct {v0}, Lcom/airbnb/android/airmapview/NativeAirMapViewBuilder;-><init>()V

    .line 68
    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lcom/airbnb/android/airmapview/DefaultAirMapViewBuilder;->getWebMapViewBuilder()Lcom/airbnb/android/airmapview/AirMapViewBuilder;

    move-result-object v0

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
