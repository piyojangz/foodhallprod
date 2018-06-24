.class public Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "GoogleAnalyticsBridge.java"


# instance fields
.field private final _trackingId:Ljava/lang/String;

.field mTrackers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/analytics/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "trackingId"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->mTrackers:Ljava/util/HashMap;

    .line 23
    iput-object p2, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->_trackingId:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private getPurchaseProduct(Lcom/facebook/react/bridge/ReadableMap;)Lcom/google/android/gms/analytics/ecommerce/Product;
    .locals 4
    .param p1, "product"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 215
    new-instance v1, Lcom/google/android/gms/analytics/ecommerce/Product;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/ecommerce/Product;-><init>()V

    const-string v2, "id"

    .line 216
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/ecommerce/Product;->setId(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object v1

    const-string v2, "name"

    .line 217
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/ecommerce/Product;->setName(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object v0

    .line 222
    .local v0, "ecommerceProduct":Lcom/google/android/gms/analytics/ecommerce/Product;
    const-string v1, "brand"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const-string v1, "brand"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setBrand(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    .line 226
    :cond_0
    const-string v1, "price"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    const-string v1, "price"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/ecommerce/Product;->setPrice(D)Lcom/google/android/gms/analytics/ecommerce/Product;

    .line 230
    :cond_1
    const-string v1, "quantity"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    const-string v1, "quantity"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setQuantity(I)Lcom/google/android/gms/analytics/ecommerce/Product;

    .line 234
    :cond_2
    const-string v1, "variant"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    const-string v1, "variant"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setVariant(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    .line 238
    :cond_3
    const-string v1, "category"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 239
    const-string v1, "category"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    .line 242
    :cond_4
    const-string v1, "couponCode"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 243
    const-string v1, "couponCode"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setCouponCode(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    .line 246
    :cond_5
    return-object v0
.end method

.method private getPurchaseTransaction(Lcom/facebook/react/bridge/ReadableMap;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;
    .locals 4
    .param p1, "transaction"    # Lcom/facebook/react/bridge/ReadableMap;

    .prologue
    .line 185
    new-instance v1, Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    const-string v2, "purchase"

    invoke-direct {v1, v2}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;-><init>(Ljava/lang/String;)V

    const-string v2, "id"

    .line 186
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionId(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    move-result-object v0

    .line 191
    .local v0, "productAction":Lcom/google/android/gms/analytics/ecommerce/ProductAction;
    const-string v1, "tax"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const-string v1, "tax"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionTax(D)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 195
    :cond_0
    const-string v1, "revenue"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    const-string v1, "revenue"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionRevenue(D)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 199
    :cond_1
    const-string v1, "shipping"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    const-string v1, "shipping"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionShipping(D)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 203
    :cond_2
    const-string v1, "couponCode"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    const-string v1, "couponCode"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionCouponCode(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 207
    :cond_3
    const-string v1, "affiliation"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 208
    const-string v1, "affiliation"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionAffiliation(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 211
    :cond_4
    return-object v0
.end method


# virtual methods
.method public allowIDFA(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "enabled"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 277
    .local v0, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 280
    :cond_0
    return-void
.end method

.method declared-synchronized getAnalyticsInstance()Lcom/google/android/gms/analytics/GoogleAnalytics;
    .locals 1

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v0, "constants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "nativeTrackerId"

    iget-object v2, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->_trackingId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "GoogleAnalyticsBridge"

    return-object v0
.end method

.method declared-synchronized getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
    .locals 3
    .param p1, "trackerId"    # Ljava/lang/String;

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 38
    .local v0, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    .line 39
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 40
    .local v1, "t":Lcom/google/android/gms/analytics/Tracker;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->enableExceptionReporting(Z)V

    .line 41
    iget-object v2, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .end local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    .end local v1    # "t":Lcom/google/android/gms/analytics/Tracker;
    :cond_0
    iget-object v2, p0, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 36
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setAnonymizeIp(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "enabled"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 395
    .local v0, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setAnonymizeIp(Z)V

    .line 399
    :cond_0
    return-void
.end method

.method public setAppName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 415
    .local v0, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/Tracker;->setAppName(Ljava/lang/String;)V

    .line 419
    :cond_0
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 424
    .local v0, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/Tracker;->setAppVersion(Ljava/lang/String;)V

    .line 428
    :cond_0
    return-void
.end method

.method public setCurrency(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "currencyCode"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 435
    .local v0, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v0, :cond_0

    .line 436
    const-string v1, "&cu"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_0
    return-void
.end method

.method public setDispatchInterval(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "intervalInSeconds"    # Ljava/lang/Integer;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getAnalyticsInstance()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 374
    .local v0, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    .line 378
    :cond_0
    return-void
.end method

.method public setDryRun(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "enabled"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getAnalyticsInstance()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 364
    .local v0, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setDryRun(Z)V

    .line 368
    :cond_0
    return-void
.end method

.method public setOptOut(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "enabled"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getAnalyticsInstance()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 405
    .local v0, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setAppOptOut(Z)V

    .line 409
    :cond_0
    return-void
.end method

.method public setSamplingRate(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 4
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "sampleRate"    # Ljava/lang/Double;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 354
    .local v0, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/Tracker;->setSampleRate(D)V

    .line 358
    :cond_0
    return-void
.end method

.method public setTrackUncaughtExceptions(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "enabled"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 384
    .local v0, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->enableExceptionReporting(Z)V

    .line 388
    :cond_0
    return-void
.end method

.method public setUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 267
    .local v0, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v0, :cond_0

    .line 268
    const-string v1, "&uid"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    return-void
.end method

.method public trackCampaignFromUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "urlString"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 444
    .local v0, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v0, :cond_0

    .line 446
    const-string v1, "Init With Campaign"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 447
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    .line 448
    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setCampaignParamsFromUrl(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    .line 449
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 447
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 451
    :cond_0
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "optionalValues"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 73
    .local v1, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v1, :cond_2

    .line 75
    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 76
    invoke-virtual {v2, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 77
    invoke-virtual {v2, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    .line 79
    .local v0, "hit":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    if-eqz p4, :cond_1

    .line 81
    const-string v2, "label"

    invoke-interface {p4, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const-string v2, "label"

    invoke-interface {p4, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 85
    :cond_0
    const-string v2, "value"

    invoke-interface {p4, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    const-string v2, "value"

    invoke-interface {p4, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 91
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 93
    .end local v0    # "hit":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    :cond_2
    return-void
.end method

.method public trackEventWithCustomDimensionValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 8
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "optionalValues"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p5, "dimensionIndexValues"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v4

    .line 320
    .local v4, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v4, :cond_3

    .line 322
    new-instance v5, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 323
    invoke-virtual {v5, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v5

    .line 324
    invoke-virtual {v5, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 327
    .local v2, "hit":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    if-eqz p4, :cond_1

    .line 329
    const-string v5, "label"

    invoke-interface {p4, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 331
    const-string v5, "label"

    invoke-interface {p4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 333
    :cond_0
    const-string v5, "value"

    invoke-interface {p4, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 335
    const-string v5, "value"

    invoke-interface {p4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 339
    :cond_1
    invoke-interface {p5}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v3

    .line 340
    .local v3, "iterator":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :goto_0
    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 341
    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "dimensionIndex":Ljava/lang/String;
    invoke-interface {p5, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "dimensionValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    goto :goto_0

    .line 346
    .end local v0    # "dimensionIndex":Ljava/lang/String;
    .end local v1    # "dimensionValue":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 348
    .end local v2    # "hit":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    .end local v3    # "iterator":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :cond_3
    return-void
.end method

.method public trackException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "fatal"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 254
    .local v0, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v0, :cond_0

    .line 255
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;-><init>()V

    .line 256
    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v1

    .line 257
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setFatal(Z)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 255
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 260
    :cond_0
    return-void
.end method

.method public trackMultiProductsPurchaseEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "products"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p3, "transaction"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p4, "eventCategory"    # Ljava/lang/String;
    .param p5, "eventAction"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v3

    .line 141
    .local v3, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v3, :cond_1

    .line 143
    new-instance v4, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 144
    invoke-direct {p0, p3}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getPurchaseTransaction(Lcom/facebook/react/bridge/ReadableMap;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setProductAction(Lcom/google/android/gms/analytics/ecommerce/ProductAction;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 145
    invoke-virtual {v4, p4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v4

    .line 146
    invoke-virtual {v4, p5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    .line 148
    .local v0, "hit":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 149
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 150
    .local v2, "product":Lcom/facebook/react/bridge/ReadableMap;
    invoke-direct {p0, v2}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getPurchaseProduct(Lcom/facebook/react/bridge/ReadableMap;)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->addProduct(Lcom/google/android/gms/analytics/ecommerce/Product;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v2    # "product":Lcom/facebook/react/bridge/ReadableMap;
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 155
    .end local v0    # "hit":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public trackMultiProductsPurchaseEventWithCustomDimensionValues(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 9
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "products"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p3, "transaction"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p4, "eventCategory"    # Ljava/lang/String;
    .param p5, "eventAction"    # Ljava/lang/String;
    .param p6, "dimensionIndexValues"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v6

    .line 161
    .local v6, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v6, :cond_2

    .line 163
    new-instance v7, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 164
    invoke-direct {p0, p3}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getPurchaseTransaction(Lcom/facebook/react/bridge/ReadableMap;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setProductAction(Lcom/google/android/gms/analytics/ecommerce/ProductAction;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 165
    invoke-virtual {v7, p4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v7

    .line 166
    invoke-virtual {v7, p5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 168
    .local v2, "hit":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 169
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    .line 170
    .local v5, "product":Lcom/facebook/react/bridge/ReadableMap;
    invoke-direct {p0, v5}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getPurchaseProduct(Lcom/facebook/react/bridge/ReadableMap;)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->addProduct(Lcom/google/android/gms/analytics/ecommerce/Product;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .end local v5    # "product":Lcom/facebook/react/bridge/ReadableMap;
    :cond_0
    invoke-interface {p6}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v4

    .line 174
    .local v4, "iterator":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :goto_1
    invoke-interface {v4}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 175
    invoke-interface {v4}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "dimensionIndex":Ljava/lang/String;
    invoke-interface {p6, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "dimensionValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    goto :goto_1

    .line 180
    .end local v0    # "dimensionIndex":Ljava/lang/String;
    .end local v1    # "dimensionValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 182
    .end local v2    # "hit":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    .end local v3    # "i":I
    .end local v4    # "iterator":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :cond_2
    return-void
.end method

.method public trackPurchaseEvent(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "product"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p3, "transaction"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p4, "eventCategory"    # Ljava/lang/String;
    .param p5, "eventAction"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 125
    .local v1, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v1, :cond_0

    .line 127
    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 128
    invoke-direct {p0, p2}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getPurchaseProduct(Lcom/facebook/react/bridge/ReadableMap;)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->addProduct(Lcom/google/android/gms/analytics/ecommerce/Product;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 129
    invoke-direct {p0, p3}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getPurchaseTransaction(Lcom/facebook/react/bridge/ReadableMap;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setProductAction(Lcom/google/android/gms/analytics/ecommerce/ProductAction;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 130
    invoke-virtual {v2, p4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    .line 131
    invoke-virtual {v2, p5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    .line 133
    .local v0, "hit":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 135
    .end local v0    # "hit":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    :cond_0
    return-void
.end method

.method public trackScreenView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "screenName"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 61
    .local v0, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 67
    :cond_0
    return-void
.end method

.method public trackScreenViewWithCustomDimensionValues(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 6
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "screenName"    # Ljava/lang/String;
    .param p3, "dimensionIndexValues"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v4

    .line 301
    .local v4, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v4, :cond_1

    .line 303
    invoke-virtual {v4, p2}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 304
    new-instance v3, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v3}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    .line 305
    .local v3, "screenBuilder":Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v2

    .line 306
    .local v2, "iterator":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :goto_0
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 307
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "dimensionIndex":Ljava/lang/String;
    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "dimensionValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5, v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    goto :goto_0

    .line 311
    .end local v0    # "dimensionIndex":Ljava/lang/String;
    .end local v1    # "dimensionValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 313
    .end local v2    # "iterator":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    .end local v3    # "screenBuilder":Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;
    :cond_1
    return-void
.end method

.method public trackSocialInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "network"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "targetUrl"    # Ljava/lang/String;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 287
    .local v0, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v0, :cond_0

    .line 288
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;-><init>()V

    .line 289
    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->setNetwork(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;

    move-result-object v1

    .line 290
    invoke-virtual {v1, p3}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;

    move-result-object v1

    .line 291
    invoke-virtual {v1, p4}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->setTarget(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;

    move-result-object v1

    .line 292
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$SocialBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 288
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 294
    :cond_0
    return-void
.end method

.method public trackTiming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 6
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Double;
    .param p4, "optionalValues"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/idehub/GoogleAnalyticsBridge/GoogleAnalyticsBridge;->getTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 99
    .local v1, "tracker":Lcom/google/android/gms/analytics/Tracker;
    if-eqz v1, :cond_2

    .line 101
    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;-><init>()V

    .line 102
    invoke-virtual {v2, p2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v2

    .line 103
    invoke-virtual {p3}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v0

    .line 105
    .local v0, "hit":Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;
    if-eqz p4, :cond_1

    .line 107
    const-string v2, "name"

    invoke-interface {p4, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    const-string v2, "name"

    invoke-interface {p4, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setVariable(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    .line 111
    :cond_0
    const-string v2, "label"

    invoke-interface {p4, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    const-string v2, "label"

    invoke-interface {p4, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    .line 117
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 119
    .end local v0    # "hit":Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;
    :cond_2
    return-void
.end method
