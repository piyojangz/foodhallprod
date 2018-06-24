.class public Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer$Builder;
.super Ljava/lang/Object;
.source "AirMapGeoJsonLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final json:Ljava/lang/String;

.field private final style:Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    invoke-direct {v0}, Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer$Builder;->style:Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    .line 28
    iput-object p1, p0, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer$Builder;->json:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public build()Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;
    .locals 6

    .prologue
    .line 47
    new-instance v0, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;

    iget-object v1, p0, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer$Builder;->json:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer$Builder;->style:Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    .line 48
    invoke-virtual {v2}, Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;->getStrokeWidth()F

    move-result v2

    iget-object v3, p0, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer$Builder;->style:Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    invoke-virtual {v3}, Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;->getStrokeColor()I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer$Builder;->style:Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    invoke-virtual {v4}, Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;->getFillColor()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;-><init>(Ljava/lang/String;FIILcom/airbnb/android/airmapview/AirMapGeoJsonLayer$1;)V

    return-object v0
.end method

.method public fillColor(I)Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer$Builder;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 32
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer$Builder;->style:Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;->setFillColor(I)V

    .line 33
    return-object p0
.end method

.method public strokeColor(I)Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer$Builder;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer$Builder;->style:Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;->setStrokeColor(I)V

    .line 38
    return-object p0
.end method

.method public strokeWidth(F)Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer$Builder;
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer$Builder;->style:Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;->setStrokeWidth(F)V

    .line 43
    return-object p0
.end method
