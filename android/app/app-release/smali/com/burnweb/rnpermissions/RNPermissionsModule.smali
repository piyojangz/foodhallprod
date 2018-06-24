.class public Lcom/burnweb/rnpermissions/RNPermissionsModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNPermissionsModule.java"


# static fields
.field private static final ALL_GRANTED:Ljava/lang/String; = "ALL_GRANTED"

.field private static final E_ACTIVITY_DOES_NOT_EXIST:Ljava/lang/String; = "E_ACTIVITY_DOES_NOT_EXIST"

.field private static final E_PERMISSION_DENIED:Ljava/lang/String; = "E_PERMISSION_DENIED"

.field private static final SOME_GRANTED:Ljava/lang/String; = "SOME_GRANTED"

.field private static final TAG:Ljava/lang/String;

.field private static requestPromises:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/bridge/Promise;",
            ">;"
        }
    .end annotation
.end field

.field private static requestResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/bridge/WritableNativeMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/burnweb/rnpermissions/RNPermissionsModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/burnweb/rnpermissions/RNPermissionsModule;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/burnweb/rnpermissions/RNPermissionsModule;->requestPromises:Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/burnweb/rnpermissions/RNPermissionsModule;->requestResults:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 35
    return-void
.end method

.method protected static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 11
    .param p0, "requestCode"    # I
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    const/4 v9, 0x1

    .line 98
    sget-object v8, Lcom/burnweb/rnpermissions/RNPermissionsModule;->requestPromises:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v8, Lcom/burnweb/rnpermissions/RNPermissionsModule;->requestResults:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 100
    sget-object v8, Lcom/burnweb/rnpermissions/RNPermissionsModule;->requestPromises:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/Promise;

    .line 101
    .local v4, "promise":Lcom/facebook/react/bridge/Promise;
    sget-object v8, Lcom/burnweb/rnpermissions/RNPermissionsModule;->requestResults:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/bridge/WritableNativeMap;

    .line 103
    .local v5, "q":Lcom/facebook/react/bridge/WritableNativeMap;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, p1

    if-ge v1, v8, :cond_1

    .line 104
    aget-object v10, p1, v1

    aget v8, p2, v1

    if-nez v8, :cond_0

    move v8, v9

    :goto_1
    invoke-virtual {v5, v10, v8}, Lcom/facebook/react/bridge/WritableNativeMap;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 107
    :cond_1
    const/4 v0, 0x0

    .line 108
    .local v0, "countGranted":I
    const/4 v7, 0x0

    .line 109
    .local v7, "totalPerms":I
    invoke-virtual {v5}, Lcom/facebook/react/bridge/WritableNativeMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v2

    .line 110
    .local v2, "itr":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    :goto_2
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 111
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "permKey":Ljava/lang/String;
    invoke-virtual {v5, v3}, Lcom/facebook/react/bridge/WritableNativeMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5, v3}, Lcom/facebook/react/bridge/WritableNativeMap;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v9, :cond_2

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 116
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 117
    goto :goto_2

    .line 119
    .end local v3    # "permKey":Ljava/lang/String;
    :cond_3
    if-lez v0, :cond_6

    .line 121
    new-instance v6, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v6}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 122
    .local v6, "result":Lcom/facebook/react/bridge/WritableNativeMap;
    const-string v9, "code"

    if-ne v0, v7, :cond_5

    const-string v8, "ALL_GRANTED"

    :goto_3
    invoke-virtual {v6, v9, v8}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v8, "result"

    invoke-virtual {v6, v8, v5}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 125
    invoke-interface {v4, v6}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 132
    .end local v6    # "result":Lcom/facebook/react/bridge/WritableNativeMap;
    :goto_4
    sget-object v8, Lcom/burnweb/rnpermissions/RNPermissionsModule;->requestPromises:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v8, Lcom/burnweb/rnpermissions/RNPermissionsModule;->requestResults:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .end local v0    # "countGranted":I
    .end local v1    # "i":I
    .end local v2    # "itr":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    .end local v4    # "promise":Lcom/facebook/react/bridge/Promise;
    .end local v5    # "q":Lcom/facebook/react/bridge/WritableNativeMap;
    .end local v7    # "totalPerms":I
    :cond_4
    return-void

    .line 122
    .restart local v0    # "countGranted":I
    .restart local v1    # "i":I
    .restart local v2    # "itr":Lcom/facebook/react/bridge/ReadableMapKeySetIterator;
    .restart local v4    # "promise":Lcom/facebook/react/bridge/Promise;
    .restart local v5    # "q":Lcom/facebook/react/bridge/WritableNativeMap;
    .restart local v6    # "result":Lcom/facebook/react/bridge/WritableNativeMap;
    .restart local v7    # "totalPerms":I
    :cond_5
    const-string v8, "SOME_GRANTED"

    goto :goto_3

    .line 129
    .end local v6    # "result":Lcom/facebook/react/bridge/WritableNativeMap;
    :cond_6
    const-string v8, "E_PERMISSION_DENIED"

    const-string v9, "Permission request denied"

    invoke-interface {v4, v8, v9}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/burnweb/rnpermissions/RNPermissionsModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 45
    .local v0, "currentActivity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 46
    const-string v2, "E_ACTIVITY_DOES_NOT_EXIST"

    const-string v3, "Activity doesn\'t exist"

    invoke-interface {p2, v2, v3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 51
    .local v1, "hasPermission":I
    if-nez v1, :cond_1

    .line 52
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_1
    const-string v2, "E_PERMISSION_DENIED"

    const-string v3, "Permission was not granted"

    invoke-interface {p2, v2, v3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "RNPermissionsAndroid"

    return-object v0
.end method

.method public requestPermission(Lcom/facebook/react/bridge/ReadableArray;ILcom/facebook/react/bridge/Promise;)V
    .locals 9
    .param p1, "permsArray"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p2, "reqCode"    # I
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/burnweb/rnpermissions/RNPermissionsModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 61
    .local v0, "currentActivity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 62
    const-string v7, "E_ACTIVITY_DOES_NOT_EXIST"

    const-string v8, "Activity doesn\'t exist"

    invoke-interface {p3, v7, v8}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v5, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v5}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 68
    .local v5, "q":Lcom/facebook/react/bridge/WritableNativeMap;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v3, "permList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 70
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 71
    .local v1, "hasPermission":I
    if-eqz v1, :cond_1

    .line 72
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/facebook/react/bridge/WritableNativeMap;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 75
    :cond_1
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/facebook/react/bridge/WritableNativeMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 79
    .end local v1    # "hasPermission":I
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 81
    sget-object v7, Lcom/burnweb/rnpermissions/RNPermissionsModule;->requestPromises:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v7, Lcom/burnweb/rnpermissions/RNPermissionsModule;->requestResults:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 85
    .local v4, "perms":[Ljava/lang/String;
    invoke-static {v0, v4, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 89
    .end local v4    # "perms":[Ljava/lang/String;
    :cond_3
    new-instance v6, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v6}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 90
    .local v6, "result":Lcom/facebook/react/bridge/WritableNativeMap;
    const-string v7, "code"

    const-string v8, "ALL_GRANTED"

    invoke-virtual {v6, v7, v8}, Lcom/facebook/react/bridge/WritableNativeMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v7, "result"

    invoke-virtual {v6, v7, v5}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 93
    invoke-interface {p3, v6}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0
.end method
