.class public Lcom/servewellsolution/app/leafood/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"

# interfaces
.implements Lcom/facebook/react/ReactApplication;


# instance fields
.field private final mReactNativeHost:Lcom/facebook/react/ReactNativeHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 28
    new-instance v0, Lcom/servewellsolution/app/leafood/MainApplication$1;

    invoke-direct {v0, p0, p0}, Lcom/servewellsolution/app/leafood/MainApplication$1;-><init>(Lcom/servewellsolution/app/leafood/MainApplication;Landroid/app/Application;)V

    iput-object v0, p0, Lcom/servewellsolution/app/leafood/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-void
.end method


# virtual methods
.method public getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/servewellsolution/app/leafood/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 63
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    .line 64
    return-void
.end method
