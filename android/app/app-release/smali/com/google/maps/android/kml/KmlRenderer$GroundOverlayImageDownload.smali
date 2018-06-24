.class Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;
.super Landroid/os/AsyncTask;
.source "KmlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/maps/android/kml/KmlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroundOverlayImageDownload"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mGroundOverlayUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/maps/android/kml/KmlRenderer;


# direct methods
.method public constructor <init>(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;)V
    .locals 0
    .param p2, "groundOverlayUrl"    # Ljava/lang/String;

    .prologue
    .line 859
    iput-object p1, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 860
    iput-object p2, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->mGroundOverlayUrl:Ljava/lang/String;

    .line 861
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 872
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->mGroundOverlayUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 879
    :goto_0
    return-object v1

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 879
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 876
    :catch_1
    move-exception v0

    .line 877
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 855
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x1

    .line 889
    if-nez p1, :cond_1

    .line 890
    const-string v0, "KmlRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image at this URL could not be found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->mGroundOverlayUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-static {v0}, Lcom/google/maps/android/kml/KmlRenderer;->access$100(Lcom/google/maps/android/kml/KmlRenderer;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->mGroundOverlayUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-static {v0}, Lcom/google/maps/android/kml/KmlRenderer;->access$200(Lcom/google/maps/android/kml/KmlRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->mGroundOverlayUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-static {v2}, Lcom/google/maps/android/kml/KmlRenderer;->access$700(Lcom/google/maps/android/kml/KmlRenderer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/android/kml/KmlRenderer;->access$800(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 895
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->mGroundOverlayUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-static {v2}, Lcom/google/maps/android/kml/KmlRenderer;->access$500(Lcom/google/maps/android/kml/KmlRenderer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/android/kml/KmlRenderer;->access$900(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;Ljava/lang/Iterable;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 855
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
