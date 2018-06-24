.class Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$2;
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


# direct methods
.method constructor <init>(Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule$2;->this$0:Lcom/joshblour/reactnativepermissions/ReactNativePermissionsModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 93
    return-void
.end method
