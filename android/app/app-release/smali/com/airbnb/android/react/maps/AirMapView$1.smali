.class Lcom/airbnb/android/react/maps/AirMapView$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "AirMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/react/maps/AirMapView;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/airbnb/android/react/maps/AirMapManager;Lcom/google/android/gms/maps/GoogleMapOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/react/maps/AirMapView;

.field final synthetic val$view:Lcom/airbnb/android/react/maps/AirMapView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/react/maps/AirMapView;Lcom/airbnb/android/react/maps/AirMapView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapView$1;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    iput-object p2, p0, Lcom/airbnb/android/react/maps/AirMapView$1;->val$view:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$1;->val$view:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {v0}, Lcom/airbnb/android/react/maps/AirMapView;->startMonitoringRegion()V

    .line 141
    const/4 v0, 0x1

    return v0
.end method
