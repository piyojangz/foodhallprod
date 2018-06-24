.class Lcom/google/maps/android/kml/KmlParser;
.super Ljava/lang/Object;
.source "KmlParser.java"


# static fields
.field private static final CONTAINER_REGEX:Ljava/lang/String; = "Folder|Document"

.field private static final GROUND_OVERLAY:Ljava/lang/String; = "GroundOverlay"

.field private static final PLACEMARK:Ljava/lang/String; = "Placemark"

.field private static final STYLE:Ljava/lang/String; = "Style"

.field private static final STYLE_MAP:Ljava/lang/String; = "StyleMap"

.field private static final UNSUPPORTED_REGEX:Ljava/lang/String; = "altitude|altitudeModeGroup|altitudeMode|begin|bottomFov|cookie|displayName|displayMode|displayMode|end|expires|extrude|flyToView|gridOrigin|httpQuery|leftFov|linkDescription|linkName|linkSnippet|listItemType|maxSnippetLines|maxSessionLength|message|minAltitude|minFadeExtent|minLodPixels|minRefreshPeriod|maxAltitude|maxFadeExtent|maxLodPixels|maxHeight|maxWidth|near|NetworkLink|NetworkLinkControl|overlayXY|range|refreshMode|refreshInterval|refreshVisibility|rightFov|roll|rotationXY|screenXY|shape|sourceHref|state|targetHref|tessellate|tileSize|topFov|viewBoundScale|viewFormat|viewRefreshMode|viewRefreshTime|when"


# instance fields
.field private final mContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroundOverlays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;"
        }
    .end annotation
.end field

.field private final mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private final mPlacemarks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mStyleMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/kml/KmlStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/maps/android/kml/KmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlParser;->mPlacemarks:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlParser;->mContainers:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlParser;->mStyles:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlParser;->mStyleMaps:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlParser;->mGroundOverlays:Ljava/util/HashMap;

    .line 61
    return-void
.end method

.method static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 138
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 140
    :cond_0
    const/4 v0, 0x1

    .line 141
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_1

    .line 142
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 147
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 145
    goto :goto_0

    .line 151
    :cond_1
    return-void

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method getContainers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlParser;->mContainers:Ljava/util/ArrayList;

    return-object v0
.end method

.method getGroundOverlays()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlParser;->mGroundOverlays:Ljava/util/HashMap;

    return-object v0
.end method

.method getPlacemarks()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlParser;->mPlacemarks:Ljava/util/HashMap;

    return-object v0
.end method

.method getStyleMaps()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlParser;->mStyleMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method getStyles()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/kml/KmlStyle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlParser;->mStyles:Ljava/util/HashMap;

    return-object v0
.end method

.method parseKml()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 67
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 68
    .local v0, "eventType":I
    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    .line 69
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 70
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "altitude|altitudeModeGroup|altitudeMode|begin|bottomFov|cookie|displayName|displayMode|displayMode|end|expires|extrude|flyToView|gridOrigin|httpQuery|leftFov|linkDescription|linkName|linkSnippet|listItemType|maxSnippetLines|maxSessionLength|message|minAltitude|minFadeExtent|minLodPixels|minRefreshPeriod|maxAltitude|maxFadeExtent|maxLodPixels|maxHeight|maxWidth|near|NetworkLink|NetworkLinkControl|overlayXY|range|refreshMode|refreshInterval|refreshVisibility|rightFov|roll|rotationXY|screenXY|shape|sourceHref|state|targetHref|tessellate|tileSize|topFov|viewBoundScale|viewFormat|viewRefreshMode|viewRefreshTime|when"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v2}, Lcom/google/maps/android/kml/KmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Folder|Document"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlParser;->mContainers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/maps/android/kml/KmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v3}, Lcom/google/maps/android/kml/KmlContainerParser;->createContainer(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/maps/android/kml/KmlContainer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Style"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v2}, Lcom/google/maps/android/kml/KmlStyleParser;->createStyle(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/maps/android/kml/KmlStyle;

    move-result-object v1

    .line 78
    .local v1, "style":Lcom/google/maps/android/kml/KmlStyle;
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlParser;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlStyle;->getStyleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .end local v1    # "style":Lcom/google/maps/android/kml/KmlStyle;
    :cond_2
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StyleMap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlParser;->mStyleMaps:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/maps/android/kml/KmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v3}, Lcom/google/maps/android/kml/KmlStyleParser;->createStyleMap(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 83
    :cond_3
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Placemark"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlParser;->mPlacemarks:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/maps/android/kml/KmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v3}, Lcom/google/maps/android/kml/KmlFeatureParser;->createPlacemark(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/maps/android/kml/KmlPlacemark;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_4
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GroundOverlay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 87
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlParser;->mGroundOverlays:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/maps/android/kml/KmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v3}, Lcom/google/maps/android/kml/KmlFeatureParser;->createGroundOverlay(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/maps/android/kml/KmlGroundOverlay;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_5
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto/16 :goto_0

    .line 93
    :cond_6
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlParser;->mStyles:Ljava/util/HashMap;

    new-instance v3, Lcom/google/maps/android/kml/KmlStyle;

    invoke-direct {v3}, Lcom/google/maps/android/kml/KmlStyle;-><init>()V

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method
