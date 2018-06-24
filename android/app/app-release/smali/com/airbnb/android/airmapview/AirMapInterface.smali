.class public interface abstract Lcom/airbnb/android/airmapview/AirMapInterface;
.super Ljava/lang/Object;
.source "AirMapInterface.java"


# static fields
.field public static final CIRCLE_BORDER_COLOR:I = -0x1000000

.field public static final CIRCLE_BORDER_WIDTH:I = 0x0

.field public static final CIRCLE_FILL_COLOR:I = -0xff2e3f


# virtual methods
.method public abstract addMarker(Lcom/airbnb/android/airmapview/AirMapMarker;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/airmapview/AirMapMarker",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract addPolygon(Lcom/airbnb/android/airmapview/AirMapPolygon;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/android/airmapview/AirMapPolygon",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract addPolyline(Lcom/airbnb/android/airmapview/AirMapPolyline;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/android/airmapview/AirMapPolyline",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract animateCenter(Lcom/google/android/gms/maps/model/LatLng;)V
.end method

.method public abstract animateCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)V
.end method

.method public abstract clearGeoJsonLayer()V
.end method

.method public abstract clearMarkers()V
.end method

.method public abstract drawCircle(Lcom/google/android/gms/maps/model/LatLng;I)V
.end method

.method public abstract drawCircle(Lcom/google/android/gms/maps/model/LatLng;II)V
.end method

.method public abstract drawCircle(Lcom/google/android/gms/maps/model/LatLng;III)V
.end method

.method public abstract drawCircle(Lcom/google/android/gms/maps/model/LatLng;IIII)V
.end method

.method public abstract getCenter()Lcom/google/android/gms/maps/model/LatLng;
.end method

.method public abstract getMapScreenBounds(Lcom/airbnb/android/airmapview/listeners/OnMapBoundsCallback;)V
.end method

.method public abstract getScreenLocation(Lcom/google/android/gms/maps/model/LatLng;Lcom/airbnb/android/airmapview/listeners/OnLatLngScreenLocationCallback;)V
.end method

.method public abstract getSnapshot(Lcom/airbnb/android/airmapview/listeners/OnSnapshotReadyListener;)V
.end method

.method public abstract getZoom()I
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract isMyLocationEnabled()Z
.end method

.method public abstract moveMarker(Lcom/airbnb/android/airmapview/AirMapMarker;Lcom/google/android/gms/maps/model/LatLng;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/airmapview/AirMapMarker",
            "<*>;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onLocationPermissionsGranted()V
.end method

.method public abstract removeMarker(Lcom/airbnb/android/airmapview/AirMapMarker;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/airmapview/AirMapMarker",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract removePolygon(Lcom/airbnb/android/airmapview/AirMapPolygon;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/android/airmapview/AirMapPolygon",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract removePolyline(Lcom/airbnb/android/airmapview/AirMapPolyline;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/android/airmapview/AirMapPolyline",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setCenter(Lcom/google/android/gms/maps/model/LatLng;)V
.end method

.method public abstract setCenter(Lcom/google/android/gms/maps/model/LatLngBounds;I)V
.end method

.method public abstract setCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)V
.end method

.method public abstract setGeoJsonLayer(Lcom/airbnb/android/airmapview/AirMapGeoJsonLayer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract setInfoWindowCreator(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;Lcom/airbnb/android/airmapview/listeners/InfoWindowCreator;)V
.end method

.method public abstract setMapToolbarEnabled(Z)V
.end method

.method public abstract setMapType(Lcom/airbnb/android/airmapview/MapType;)V
.end method

.method public abstract setMyLocationEnabled(Z)V
.end method

.method public abstract setOnCameraChangeListener(Lcom/airbnb/android/airmapview/listeners/OnCameraChangeListener;)V
.end method

.method public abstract setOnInfoWindowClickListener(Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;)V
.end method

.method public abstract setOnMapClickListener(Lcom/airbnb/android/airmapview/listeners/OnMapClickListener;)V
.end method

.method public abstract setOnMapLoadedListener(Lcom/airbnb/android/airmapview/listeners/OnMapLoadedListener;)V
.end method

.method public abstract setOnMarkerClickListener(Lcom/airbnb/android/airmapview/listeners/OnMapMarkerClickListener;)V
.end method

.method public abstract setOnMarkerDragListener(Lcom/airbnb/android/airmapview/listeners/OnMapMarkerDragListener;)V
.end method

.method public abstract setPadding(IIII)V
.end method

.method public abstract setZoom(I)V
.end method
