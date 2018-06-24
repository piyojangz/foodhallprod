.class Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$6$1;
.super Ljava/lang/Object;
.source "WebViewMapFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$6;


# direct methods
.method constructor <init>(Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$6;)V
    .locals 0
    .param p1, "this$2"    # Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$6;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$6$1;->this$2:Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 426
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$6$1;->this$2:Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$6;

    iget-object v0, v0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$6;->this$1:Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v0, v0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/airmapview/WebViewMapFragment;

    invoke-static {v0}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->access$1500(Lcom/airbnb/android/airmapview/WebViewMapFragment;)Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$6$1;->this$2:Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$6;

    iget-object v0, v0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$6;->this$1:Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v0, v0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/airmapview/WebViewMapFragment;

    invoke-static {v0}, Lcom/airbnb/android/airmapview/WebViewMapFragment;->access$1500(Lcom/airbnb/android/airmapview/WebViewMapFragment;)Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$6$1;->this$2:Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$6;

    iget-object v1, v1, Lcom/airbnb/android/airmapview/WebViewMapFragment$MapsJavaScriptInterface$6;->val$airMapMarker:Lcom/airbnb/android/airmapview/AirMapMarker;

    invoke-interface {v0, v1}, Lcom/airbnb/android/airmapview/listeners/OnInfoWindowClickListener;->onInfoWindowClick(Lcom/airbnb/android/airmapview/AirMapMarker;)V

    .line 429
    :cond_0
    return-void
.end method
