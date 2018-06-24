.class public Lcom/airbnb/android/airmapview/WebViewMapFragment$GeoWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebViewMapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/airmapview/WebViewMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GeoWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/airmapview/WebViewMapFragment;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/airmapview/WebViewMapFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/android/airmapview/WebViewMapFragment;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$GeoWebChromeClient;->this$0:Lcom/airbnb/android/airmapview/WebViewMapFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 76
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 77
    return-void
.end method
