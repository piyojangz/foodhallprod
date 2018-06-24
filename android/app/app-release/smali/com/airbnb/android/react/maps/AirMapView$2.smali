.class Lcom/airbnb/android/react/maps/AirMapView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
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
    .line 146
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapView$2;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    iput-object p2, p0, Lcom/airbnb/android/react/maps/AirMapView$2;->val$view:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$2;->val$view:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {v0}, Lcom/airbnb/android/react/maps/AirMapView;->startMonitoringRegion()V

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 156
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$2;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v0}, Lcom/airbnb/android/react/maps/AirMapView;->access$000(Lcom/airbnb/android/react/maps/AirMapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$2;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {v0, p2}, Lcom/airbnb/android/react/maps/AirMapView;->onPanDrag(Landroid/view/MotionEvent;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$2;->val$view:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-virtual {v0}, Lcom/airbnb/android/react/maps/AirMapView;->startMonitoringRegion()V

    .line 160
    const/4 v0, 0x0

    return v0
.end method
