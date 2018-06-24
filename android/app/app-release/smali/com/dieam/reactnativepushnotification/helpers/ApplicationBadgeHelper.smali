.class public Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;
.super Ljava/lang/Object;
.source "ApplicationBadgeHelper.java"


# static fields
.field public static final INSTANCE:Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;

.field private static final LEGACY_SAMSUNG_BADGER:Lme/leolin/shortcutbadger/Badger;

.field private static final LOG_TAG:Ljava/lang/String; = "ApplicationBadgeHelper"


# instance fields
.field private applyAutomaticBadger:Ljava/lang/Boolean;

.field private applySamsungBadger:Ljava/lang/Boolean;

.field private componentName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;

    invoke-direct {v0}, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;-><init>()V

    sput-object v0, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->INSTANCE:Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;

    .line 29
    new-instance v0, Lme/leolin/shortcutbadger/impl/SamsungHomeBadger;

    invoke-direct {v0}, Lme/leolin/shortcutbadger/impl/SamsungHomeBadger;-><init>()V

    sput-object v0, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->LEGACY_SAMSUNG_BADGER:Lme/leolin/shortcutbadger/Badger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private applyLegacySamsungBadge(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # I

    .prologue
    .line 92
    :try_start_0
    sget-object v1, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->LEGACY_SAMSUNG_BADGER:Lme/leolin/shortcutbadger/Badger;

    iget-object v2, p0, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->componentName:Landroid/content/ComponentName;

    invoke-interface {v1, p1, v2, p2}, Lme/leolin/shortcutbadger/Badger;->executeBadge(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const/4 v1, 0x1

    .line 96
    :goto_0
    return v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ApplicationBadgeHelper"

    const-string v2, "Legacy Samsung badger failed"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLegacySamsungLauncher(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 82
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "resolver"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    :cond_0
    const/4 v3, 0x0

    .line 87
    :goto_0
    return v3

    .line 86
    :cond_1
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 87
    .local v0, "currentHomePackage":Ljava/lang/String;
    sget-object v3, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->LEGACY_SAMSUNG_BADGER:Lme/leolin/shortcutbadger/Badger;

    invoke-interface {v3}, Lme/leolin/shortcutbadger/Badger;->getSupportLaunchers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method private tryAutomaticBadge(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->applyAutomaticBadger:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 48
    invoke-static {p1, p2}, Lme/leolin/shortcutbadger/ShortcutBadger;->applyCount(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->applyAutomaticBadger:Ljava/lang/Boolean;

    .line 49
    iget-object v0, p0, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->applyAutomaticBadger:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const-string v0, "ApplicationBadgeHelper"

    const-string v1, "First attempt to use automatic badger succeeded; permanently enabling method."

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v0, "ApplicationBadgeHelper"

    const-string v1, "First attempt to use automatic badger failed; permanently disabling method."

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->applyAutomaticBadger:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p1, p2}, Lme/leolin/shortcutbadger/ShortcutBadger;->applyCount(Landroid/content/Context;I)Z

    goto :goto_0
.end method

.method private tryLegacySamsungBadge(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->applySamsungBadger:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 64
    invoke-direct {p0, p1}, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->isLegacySamsungLauncher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->applyLegacySamsungBadge(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->applySamsungBadger:Ljava/lang/Boolean;

    .line 65
    iget-object v0, p0, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->applySamsungBadger:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    const-string v0, "ApplicationBadgeHelper"

    const-string v1, "First attempt to use legacy Samsung badger succeeded; permanently enabling method."

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_1
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_2
    const-string v0, "ApplicationBadgeHelper"

    const-string v1, "First attempt to use legacy Samsung badger failed; permanently disabling method."

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->applySamsungBadger:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->applyLegacySamsungBadge(Landroid/content/Context;I)Z

    goto :goto_1
.end method


# virtual methods
.method public setApplicationIconBadgeNumber(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->componentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->componentName:Landroid/content/ComponentName;

    .line 42
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->tryAutomaticBadge(Landroid/content/Context;I)V

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/dieam/reactnativepushnotification/helpers/ApplicationBadgeHelper;->tryLegacySamsungBadge(Landroid/content/Context;I)V

    .line 44
    return-void
.end method
