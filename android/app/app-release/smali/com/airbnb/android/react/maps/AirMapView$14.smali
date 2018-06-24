.class Lcom/airbnb/android/react/maps/AirMapView$14;
.super Ljava/lang/Object;
.source "AirMapView.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/react/maps/AirMapView;->cacheView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/react/maps/AirMapView;

.field final synthetic val$cacheImageView:Landroid/widget/ImageView;

.field final synthetic val$mapLoadingLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/airbnb/android/react/maps/AirMapView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 837
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapView$14;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    iput-object p2, p0, Lcom/airbnb/android/react/maps/AirMapView$14;->val$cacheImageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/airbnb/android/react/maps/AirMapView$14;->val$mapLoadingLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnapshotReady(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 839
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$14;->val$cacheImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 840
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$14;->val$cacheImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$14;->val$mapLoadingLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 842
    return-void
.end method
