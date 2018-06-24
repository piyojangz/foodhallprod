.class Lcom/google/maps/android/kml/KmlContainerParser;
.super Ljava/lang/Object;
.source "KmlContainerParser.java"


# static fields
.field private static final CONTAINER_REGEX:Ljava/lang/String; = "Folder|Document"

.field private static final EXTENDED_DATA:Ljava/lang/String; = "ExtendedData"

.field private static final GROUND_OVERLAY:Ljava/lang/String; = "GroundOverlay"

.field private static final PLACEMARK:Ljava/lang/String; = "Placemark"

.field private static final PROPERTY_REGEX:Ljava/lang/String; = "name|description|visibility|open|address|phoneNumber"

.field private static final STYLE:Ljava/lang/String; = "Style"

.field private static final STYLE_MAP:Ljava/lang/String; = "StyleMap"

.field private static final UNSUPPORTED_REGEX:Ljava/lang/String; = "altitude|altitudeModeGroup|altitudeMode|begin|bottomFov|cookie|displayName|displayMode|displayMode|end|expires|extrude|flyToView|gridOrigin|httpQuery|leftFov|linkDescription|linkName|linkSnippet|listItemType|maxSnippetLines|maxSessionLength|message|minAltitude|minFadeExtent|minLodPixels|minRefreshPeriod|maxAltitude|maxFadeExtent|maxLodPixels|maxHeight|maxWidth|near|overlayXY|range|refreshMode|refreshInterval|refreshVisibility|rightFov|roll|rotationXY|screenXY|shape|sourceHref|state|targetHref|tessellate|tileSize|topFov|viewBoundScale|viewFormat|viewRefreshMode|viewRefreshTime|when"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assignPropertiesToContainer(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/maps/android/kml/KmlContainer;
    .locals 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 63
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 64
    .local v9, "startTag":Ljava/lang/String;
    const/4 v7, 0x0

    .line 65
    .local v7, "containerId":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v1, "containerProperties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v2, "containerStyles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/maps/android/kml/KmlStyle;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v3, "containerPlacemarks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlPlacemark;Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v5, "nestedContainers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/maps/android/kml/KmlContainer;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v4, "containerStyleMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v6, "containerGroundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    const-string v0, "id"

    invoke-interface {p0, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "id"

    invoke-interface {p0, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 77
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 78
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    .line 79
    .local v8, "eventType":I
    :goto_0
    const/4 v0, 0x3

    if-ne v8, v0, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 80
    :cond_1
    const/4 v0, 0x2

    if-ne v8, v0, :cond_2

    .line 81
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "altitude|altitudeModeGroup|altitudeMode|begin|bottomFov|cookie|displayName|displayMode|displayMode|end|expires|extrude|flyToView|gridOrigin|httpQuery|leftFov|linkDescription|linkName|linkSnippet|listItemType|maxSnippetLines|maxSessionLength|message|minAltitude|minFadeExtent|minLodPixels|minRefreshPeriod|maxAltitude|maxFadeExtent|maxLodPixels|maxHeight|maxWidth|near|overlayXY|range|refreshMode|refreshInterval|refreshVisibility|rightFov|roll|rotationXY|screenXY|shape|sourceHref|state|targetHref|tessellate|tileSize|topFov|viewBoundScale|viewFormat|viewRefreshMode|viewRefreshTime|when"

    invoke-virtual {v0, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    invoke-static {p0}, Lcom/google/maps/android/kml/KmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 100
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    goto :goto_0

    .line 83
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "Folder|Document"

    invoke-virtual {v0, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    invoke-static {p0}, Lcom/google/maps/android/kml/KmlContainerParser;->assignPropertiesToContainer(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/maps/android/kml/KmlContainer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "name|description|visibility|open|address|phoneNumber"

    invoke-virtual {v0, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 87
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "StyleMap"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 88
    invoke-static {p0, v4}, Lcom/google/maps/android/kml/KmlContainerParser;->setContainerStyleMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto :goto_1

    .line 89
    :cond_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "Style"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 90
    invoke-static {p0, v2}, Lcom/google/maps/android/kml/KmlContainerParser;->setContainerStyle(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto :goto_1

    .line 91
    :cond_7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "Placemark"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 92
    invoke-static {p0, v3}, Lcom/google/maps/android/kml/KmlContainerParser;->setContainerPlacemark(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto :goto_1

    .line 93
    :cond_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "ExtendedData"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 94
    invoke-static {p0, v1}, Lcom/google/maps/android/kml/KmlContainerParser;->setExtendedDataProperties(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto :goto_1

    .line 95
    :cond_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "GroundOverlay"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-static {p0}, Lcom/google/maps/android/kml/KmlFeatureParser;->createGroundOverlay(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/maps/android/kml/KmlGroundOverlay;

    move-result-object v0

    invoke-virtual {v6, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 103
    :cond_a
    new-instance v0, Lcom/google/maps/android/kml/KmlContainer;

    invoke-direct/range {v0 .. v7}, Lcom/google/maps/android/kml/KmlContainer;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;)V

    return-object v0
.end method

.method static createContainer(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/maps/android/kml/KmlContainer;
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p0}, Lcom/google/maps/android/kml/KmlContainerParser;->assignPropertiesToContainer(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/maps/android/kml/KmlContainer;

    move-result-object v0

    return-object v0
.end method

.method private static setContainerPlacemark(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "containerPlacemarks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlPlacemark;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/google/maps/android/kml/KmlFeatureParser;->createPlacemark(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/maps/android/kml/KmlPlacemark;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method private static setContainerStyle(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/kml/KmlStyle;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "containerStyles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/maps/android/kml/KmlStyle;>;"
    const/4 v2, 0x0

    const-string v3, "id"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 147
    invoke-static {p0}, Lcom/google/maps/android/kml/KmlStyleParser;->createStyle(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/maps/android/kml/KmlStyle;

    move-result-object v0

    .line 148
    .local v0, "style":Lcom/google/maps/android/kml/KmlStyle;
    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlStyle;->getStyleId()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "styleId":Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .end local v0    # "style":Lcom/google/maps/android/kml/KmlStyle;
    .end local v1    # "styleId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static setContainerStyleMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "containerStyleMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/maps/android/kml/KmlStyleParser;->createStyleMap(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 114
    return-void
.end method

.method private static setExtendedDataProperties(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "mContainerProperties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 125
    .local v1, "propertyKey":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 126
    .local v0, "eventType":I
    :goto_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExtendedData"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 127
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 128
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    const/4 v2, 0x0

    const-string v3, "name"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 130
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 131
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const/4 v1, 0x0

    goto :goto_1

    .line 137
    :cond_3
    return-void
.end method
