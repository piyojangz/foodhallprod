.class Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$1;
.super Ljava/lang/Object;
.source "ReactNativePermissionsModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;->requestPermission(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;

.field final synthetic val$permissionString:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p1, "this$0"    # Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$1;->this$0:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;

    iput-object p2, p0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$1;->val$permissionString:Ljava/lang/String;

    iput-object p3, p0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$1;->this$0:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;

    iget-object v1, p0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$1;->val$permissionString:Ljava/lang/String;

    iget-object v2, p0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-virtual {v0, v1, v2}, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;->getPermissionStatus(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    .line 87
    return-void
.end method
