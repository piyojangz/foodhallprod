.class public Lcom/airbnb/android/airmapview/GoogleChinaMapType;
.super Lcom/airbnb/android/airmapview/AirMapType;
.source "GoogleChinaMapType.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 6
    const-string v0, "google_map.html"

    const-string v1, "http://ditu.google.cn/maps/api/js"

    const-string v2, "www.google.cn"

    invoke-direct {p0, v0, v1, v2}, Lcom/airbnb/android/airmapview/AirMapType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    return-void
.end method
