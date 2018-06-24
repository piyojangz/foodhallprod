.class Lcom/airbnb/android/react/maps/AirMapView$11;
.super Ljava/lang/Object;
.source "AirMapView.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/react/maps/AirMapView;->onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/react/maps/AirMapView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/react/maps/AirMapView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/android/react/maps/AirMapView;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/airbnb/android/react/maps/AirMapView$11;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$11;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/react/maps/AirMapView;->access$1202(Lcom/airbnb/android/react/maps/AirMapView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 288
    iget-object v0, p0, Lcom/airbnb/android/react/maps/AirMapView$11;->this$0:Lcom/airbnb/android/react/maps/AirMapView;

    invoke-static {v0}, Lcom/airbnb/android/react/maps/AirMapView;->access$200(Lcom/airbnb/android/react/maps/AirMapView;)V

    .line 289
    return-void
.end method
