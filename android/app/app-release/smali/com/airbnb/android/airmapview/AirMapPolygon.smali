.class public Lcom/airbnb/android/airmapview/AirMapPolygon;
.super Ljava/lang/Object;
.source "AirMapPolygon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/airmapview/AirMapPolygon$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final STROKE_COLOR:I = -0xffff01

.field private static final STROKE_WIDTH:I = 0x1


# instance fields
.field private googlePolygon:Lcom/google/android/gms/maps/model/Polygon;

.field private final id:J

.field private final object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;


# direct methods
.method public constructor <init>(Ljava/lang/Object;JLcom/google/android/gms/maps/model/PolygonOptions;)V
    .locals 0
    .param p2, "id"    # J
    .param p4, "polygonOptions"    # Lcom/google/android/gms/maps/model/PolygonOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Lcom/google/android/gms/maps/model/PolygonOptions;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon;, "Lcom/airbnb/android/airmapview/AirMapPolygon<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirMapPolygon;->object:Ljava/lang/Object;

    .line 22
    iput-wide p2, p0, Lcom/airbnb/android/airmapview/AirMapPolygon;->id:J

    .line 23
    iput-object p4, p0, Lcom/airbnb/android/airmapview/AirMapPolygon;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 24
    return-void
.end method


# virtual methods
.method public getGooglePolygon()Lcom/google/android/gms/maps/model/Polygon;
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon;, "Lcom/airbnb/android/airmapview/AirMapPolygon<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolygon;->googlePolygon:Lcom/google/android/gms/maps/model/Polygon;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 31
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon;, "Lcom/airbnb/android/airmapview/AirMapPolygon<TT;>;"
    iget-wide v0, p0, Lcom/airbnb/android/airmapview/AirMapPolygon;->id:J

    return-wide v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon;, "Lcom/airbnb/android/airmapview/AirMapPolygon<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolygon;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon;, "Lcom/airbnb/android/airmapview/AirMapPolygon<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapPolygon;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    return-object v0
.end method

.method public setGooglePolygon(Lcom/google/android/gms/maps/model/Polygon;)V
    .locals 0
    .param p1, "googlePolygon"    # Lcom/google/android/gms/maps/model/Polygon;

    .prologue
    .line 43
    .local p0, "this":Lcom/airbnb/android/airmapview/AirMapPolygon;, "Lcom/airbnb/android/airmapview/AirMapPolygon<TT;>;"
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirMapPolygon;->googlePolygon:Lcom/google/android/gms/maps/model/Polygon;

    .line 44
    return-void
.end method
