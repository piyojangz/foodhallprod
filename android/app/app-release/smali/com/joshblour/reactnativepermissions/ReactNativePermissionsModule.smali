.class public Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "ReactNativePermissionsModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;
    }
.end annotation


# instance fields
.field private final mPermissionsModule:Lcom/facebook/react/modules/permissions/PermissionsModule;

.field private final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 37
    iput-object p1, p0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 38
    new-instance v0, Lcom/facebook/react/modules/permissions/PermissionsModule;

    iget-object v1, p0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v0, v1}, Lcom/facebook/react/modules/permissions/PermissionsModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;->mPermissionsModule:Lcom/facebook/react/modules/permissions/PermissionsModule;

    .line 39
    return-void
.end method

.method private permissionForString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 117
    sget-object v0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$3;->$SwitchMap$com$joshblour$reactnativepermissions$ReactNativePermissionsModule$RNType:[I

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;->valueOf(Ljava/lang/String;)Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$RNType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 131
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 119
    :pswitch_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    goto :goto_0

    .line 121
    :pswitch_1
    const-string v0, "android.permission.CAMERA"

    goto :goto_0

    .line 123
    :pswitch_2
    const-string v0, "android.permission.RECORD_AUDIO"

    goto :goto_0

    .line 125
    :pswitch_3
    const-string v0, "android.permission.READ_CONTACTS"

    goto :goto_0

    .line 127
    :pswitch_4
    const-string v0, "android.permission.READ_CALENDAR"

    goto :goto_0

    .line 129
    :pswitch_5
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public canOpenSettings(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .param p1, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "ReactNativePermissions"

    return-object v0
.end method

.method public getPermissionStatus(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 6
    .param p1, "permissionString"    # Ljava/lang/String;
    .param p2, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;->permissionForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "permission":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 52
    const-string v3, "unknown-permission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReactNativePermissions: unknown permission type - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v3, p0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v3, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 57
    .local v2, "result":I
    packed-switch v2, :pswitch_data_0

    .line 75
    const-string v3, "undetermined"

    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :pswitch_0
    invoke-virtual {p0}, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 63
    .local v0, "deniedOnce":Z
    if-eqz v0, :cond_1

    const-string v3, "denied"

    :goto_1
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v3, "undetermined"

    goto :goto_1

    .line 65
    .end local v0    # "deniedOnce":Z
    :cond_2
    const-string v3, "denied"

    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :pswitch_1
    const-string v3, "denied"

    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :pswitch_2
    const-string v3, "authorized"

    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public openSettings()V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 110
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->startActivity(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method public requestPermission(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 5
    .param p1, "permissionString"    # Ljava/lang/String;
    .param p2, "nullForiOSCompat"    # Ljava/lang/String;
    .param p3, "promise"    # Lcom/facebook/react/bridge/Promise;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;->permissionForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "permission":Ljava/lang/String;
    new-instance v2, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$1;-><init>(Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    .line 89
    .local v2, "resolve":Lcom/facebook/react/bridge/Callback;
    new-instance v1, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$2;

    invoke-direct {v1, p0}, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$2;-><init>(Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;)V

    .line 95
    .local v1, "reject":Lcom/facebook/react/bridge/Callback;
    iget-object v3, p0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;->mPermissionsModule:Lcom/facebook/react/modules/permissions/PermissionsModule;

    new-instance v4, Lcom/facebook/react/bridge/PromiseImpl;

    invoke-direct {v4, v2, v1}, Lcom/facebook/react/bridge/PromiseImpl;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v3, v0, v4}, Lcom/facebook/react/modules/permissions/PermissionsModule;->requestPermission(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    .line 96
    return-void
.end method
