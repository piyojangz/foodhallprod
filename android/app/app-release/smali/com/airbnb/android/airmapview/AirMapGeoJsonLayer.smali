.class public Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;
.super Ljava/lang/Object;
.source "AirMapGeoJsonLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer$Builder;
    }
.end annotation


# instance fields
.field protected final fillColor:I

.field protected final geoJson:Ljava/lang/String;

.field protected final strokeColor:I

.field protected final strokeWidth:F


# direct methods
.method private constructor <init>(Ljava/lang/String;FII)V
    .locals 0
    .param p1, "geoJson"    # Ljava/lang/String;
    .param p2, "strokeWidth"    # F
    .param p3, "strokeColor"    # I
    .param p4, "fillColor"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;->geoJson:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;->strokeWidth:F

    .line 16
    iput p3, p0, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;->strokeColor:I

    .line 17
    iput p4, p0, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;->fillColor:I

    .line 18
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;FIILcom/airbnb/android/airmapview/AirMapGeoJsonLayer$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # F
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer$1;

    .prologue
    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;-><init>(Ljava/lang/String;FII)V

    return-void
.end method
