.class Lcom/airbnb/android/react/maps/AirMapMarker$1;
.super Lcom/facebook/drawee/controller/BaseControllerListener;
.source "AirMapMarker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/react/maps/AirMapMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/BaseControllerListener",
        "<",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/react/maps/AirMapMarker;


# direct methods
.method constructor <init>(Lcom/airbnb/android/react/maps/AirMapMarker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/android/react/maps/AirMapMarker;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapMarker$1;->this$0:Lcom/airbnb/android/react/maps/AirMapMarker;

    invoke-direct {p0}, Lcom/facebook/drawee/controller/BaseControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "imageInfo"    # Lcom/facebook/imagepipeline/image/ImageInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "animatable"    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    const/4 v4, 0x0

    .line 84
    .local v4, "imageReference":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;"
    :try_start_0
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapMarker$1;->this$0:Lcom/airbnb/android/react/maps/AirMapMarker;

    invoke-static {v5}, Lcom/airbnb/android/react/maps/AirMapMarker;->access$000(Lcom/airbnb/android/react/maps/AirMapMarker;)Lcom/facebook/datasource/DataSource;

    move-result-object v5

    invoke-interface {v5}, Lcom/facebook/datasource/DataSource;->getResult()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    move-object v4, v0

    .line 85
    if-eqz v4, :cond_0

    .line 86
    invoke-virtual {v4}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/imagepipeline/image/CloseableImage;

    .line 87
    .local v3, "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    if-eqz v3, :cond_0

    instance-of v5, v3, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    if-eqz v5, :cond_0

    .line 88
    move-object v0, v3

    check-cast v0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-object v2, v0

    .line 89
    .local v2, "closeableStaticBitmap":Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 90
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 91
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 92
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapMarker$1;->this$0:Lcom/airbnb/android/react/maps/AirMapMarker;

    invoke-static {v5, v1}, Lcom/airbnb/android/react/maps/AirMapMarker;->access$102(Lcom/airbnb/android/react/maps/AirMapMarker;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 93
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapMarker$1;->this$0:Lcom/airbnb/android/react/maps/AirMapMarker;

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/airbnb/android/react/maps/AirMapMarker;->access$202(Lcom/airbnb/android/react/maps/AirMapMarker;Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "closeableStaticBitmap":Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;
    .end local v3    # "image":Lcom/facebook/imagepipeline/image/CloseableImage;
    :cond_0
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapMarker$1;->this$0:Lcom/airbnb/android/react/maps/AirMapMarker;

    invoke-static {v5}, Lcom/airbnb/android/react/maps/AirMapMarker;->access$000(Lcom/airbnb/android/react/maps/AirMapMarker;)Lcom/facebook/datasource/DataSource;

    move-result-object v5

    invoke-interface {v5}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 99
    if-eqz v4, :cond_1

    .line 100
    invoke-static {v4}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 103
    :cond_1
    iget-object v5, p0, Lcom/airbnb/android/react/maps/AirMapMarker$1;->this$0:Lcom/airbnb/android/react/maps/AirMapMarker;

    invoke-virtual {v5}, Lcom/airbnb/android/react/maps/AirMapMarker;->update()V

    .line 104
    return-void

    .line 98
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/airbnb/android/react/maps/AirMapMarker$1;->this$0:Lcom/airbnb/android/react/maps/AirMapMarker;

    invoke-static {v6}, Lcom/airbnb/android/react/maps/AirMapMarker;->access$000(Lcom/airbnb/android/react/maps/AirMapMarker;)Lcom/facebook/datasource/DataSource;

    move-result-object v6

    invoke-interface {v6}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 99
    if-eqz v4, :cond_2

    .line 100
    invoke-static {v4}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    :cond_2
    throw v5
.end method

.method public bridge synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/android/react/maps/AirMapMarker$1;->onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method
