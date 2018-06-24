.class public Lcom/facebook/reactnative/androidsdk/FBAppEventsLoggerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "FBAppEventsLoggerModule.java"


# instance fields
.field private mAppEventLogger:Lcom/facebook/appevents/AppEventsLogger;

.field private mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 112
    iput-object p1, p0, Lcom/facebook/reactnative/androidsdk/FBAppEventsLoggerModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 113
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/FBAppEventsLoggerModule;->mAppEventLogger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventsLogger;->flush()V

    .line 198
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "FBAppEventsLogger"

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/FBAppEventsLoggerModule;->mReactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/reactnative/androidsdk/FBAppEventsLoggerModule;->mAppEventLogger:Lcom/facebook/appevents/AppEventsLogger;

    .line 118
    return-void
.end method

.method public logEvent(Ljava/lang/String;DLcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "valueToSum"    # D
    .param p4, "parameters"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/FBAppEventsLoggerModule;->mAppEventLogger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-static {p4}, Lcom/facebook/react/bridge/Arguments;->toBundle(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 158
    return-void
.end method

.method public logPurchase(DLjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 5
    .param p1, "purchaseAmount"    # D
    .param p3, "currencyCode"    # Ljava/lang/String;
    .param p4, "parameters"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/FBAppEventsLoggerModule;->mAppEventLogger:Lcom/facebook/appevents/AppEventsLogger;

    .line 177
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    .line 178
    invoke-static {p3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    .line 179
    invoke-static {p4}, Lcom/facebook/react/bridge/Arguments;->toBundle(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object v3

    .line 176
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    .line 180
    return-void
.end method

.method public logPushNotificationOpen(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .param p1, "payload"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/facebook/reactnative/androidsdk/FBAppEventsLoggerModule;->mAppEventLogger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-static {p1}, Lcom/facebook/react/bridge/Arguments;->toBundle(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/appevents/AppEventsLogger;->logPushNotificationOpen(Landroid/os/Bundle;)V

    .line 189
    return-void
.end method

.method public setFlushBehavior(Ljava/lang/String;)V
    .locals 1
    .param p1, "flushBehavior"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->valueOf(Ljava/lang/String;)Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->setFlushBehavior(Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;)V

    .line 133
    return-void
.end method

.method public setPushNotificationsRegistrationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "registrationId"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 206
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->setPushNotificationsRegistrationId(Ljava/lang/String;)V

    .line 207
    return-void
.end method
