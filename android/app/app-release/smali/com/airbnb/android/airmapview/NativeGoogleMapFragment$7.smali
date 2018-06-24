.class Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$7;
.super Ljava/lang/Object;
.source "NativeGoogleMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;->getSnapshot(Lcom/airbnb/android/airmapview/listeners/OnSnapshotReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

.field final synthetic val$listener:Lcom/airbnb/android/airmapview/listeners/OnSnapshotReadyListener;


# direct methods
.method constructor <init>(Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;Lcom/airbnb/android/airmapview/listeners/OnSnapshotReadyListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$7;->this$0:Lcom/airbnb/android/airmapview/NativeGoogleMapFragment;

    iput-object p2, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$7;->val$listener:Lcom/airbnb/android/airmapview/listeners/OnSnapshotReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnapshotReady(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/airbnb/android/airmapview/NativeGoogleMapFragment$7;->val$listener:Lcom/airbnb/android/airmapview/listeners/OnSnapshotReadyListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/airmapview/listeners/OnSnapshotReadyListener;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    .line 364
    return-void
.end method
