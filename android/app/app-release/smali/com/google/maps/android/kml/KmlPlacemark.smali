.class public Lcom/google/maps/android/kml/KmlPlacemark;
.super Ljava/lang/Object;
.source "KmlPlacemark.java"


# instance fields
.field private final mGeometry:Lcom/google/maps/android/kml/KmlGeometry;

.field private final mInlineStyle:Lcom/google/maps/android/kml/KmlStyle;

.field private mProperties:Ljava/util/HashMap;
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

.field private final mStyle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/maps/android/kml/KmlGeometry;Ljava/lang/String;Lcom/google/maps/android/kml/KmlStyle;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "geometry"    # Lcom/google/maps/android/kml/KmlGeometry;
    .param p2, "style"    # Ljava/lang/String;
    .param p3, "inlineStyle"    # Lcom/google/maps/android/kml/KmlStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/kml/KmlGeometry;",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/kml/KmlStyle;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p4, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlPlacemark;->mProperties:Ljava/util/HashMap;

    .line 32
    iput-object p1, p0, Lcom/google/maps/android/kml/KmlPlacemark;->mGeometry:Lcom/google/maps/android/kml/KmlGeometry;

    .line 33
    iput-object p2, p0, Lcom/google/maps/android/kml/KmlPlacemark;->mStyle:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/google/maps/android/kml/KmlPlacemark;->mInlineStyle:Lcom/google/maps/android/kml/KmlStyle;

    .line 35
    iput-object p4, p0, Lcom/google/maps/android/kml/KmlPlacemark;->mProperties:Ljava/util/HashMap;

    .line 36
    return-void
.end method


# virtual methods
.method public getGeometry()Lcom/google/maps/android/kml/KmlGeometry;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlPlacemark;->mGeometry:Lcom/google/maps/android/kml/KmlGeometry;

    return-object v0
.end method

.method public getInlineStyle()Lcom/google/maps/android/kml/KmlStyle;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlPlacemark;->mInlineStyle:Lcom/google/maps/android/kml/KmlStyle;

    return-object v0
.end method

.method public getProperties()Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlPlacemark;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyValue"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlPlacemark;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStyleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlPlacemark;->mStyle:Ljava/lang/String;

    return-object v0
.end method

.method public hasProperties()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlPlacemark;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "keyValue"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlPlacemark;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Placemark"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n style id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/android/kml/KmlPlacemark;->mStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ",\n inline style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/android/kml/KmlPlacemark;->mInlineStyle:Lcom/google/maps/android/kml/KmlStyle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ",\n properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/android/kml/KmlPlacemark;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, ",\n geometry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/android/kml/KmlPlacemark;->mGeometry:Lcom/google/maps/android/kml/KmlGeometry;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
