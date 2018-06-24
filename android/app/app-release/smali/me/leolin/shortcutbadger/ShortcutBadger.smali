.class public final Lme/leolin/shortcutbadger/ShortcutBadger;
.super Ljava/lang/Object;
.source "ShortcutBadger.java"


# static fields
.field private static final BADGERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lme/leolin/shortcutbadger/Badger;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ShortcutBadger"

.field private static sComponentName:Landroid/content/ComponentName;

.field private static sShortcutBadger:Lme/leolin/shortcutbadger/Badger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lme/leolin/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    .line 28
    sget-object v0, Lme/leolin/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/AdwHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lme/leolin/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/ApexHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lme/leolin/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/NewHtcHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lme/leolin/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/NovaHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lme/leolin/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/SonyHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lme/leolin/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/XiaomiHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lme/leolin/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/AsusHomeLauncher;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lme/leolin/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    const-class v1, Lme/leolin/shortcutbadger/impl/HuaweiHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method

.method public static applyCount(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "badgeCount"    # I

    .prologue
    .line 52
    :try_start_0
    invoke-static {p0, p1}, Lme/leolin/shortcutbadger/ShortcutBadger;->applyCountOrThrow(Landroid/content/Context;I)V
    :try_end_0
    .catch Lme/leolin/shortcutbadger/ShortcutBadgeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const/4 v1, 0x1

    .line 56
    :goto_0
    return v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Lme/leolin/shortcutbadger/ShortcutBadgeException;
    const-string v1, "ShortcutBadger"

    const-string v2, "Unable to execute badge"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static applyCountOrThrow(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "badgeCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/leolin/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation

    .prologue
    .line 67
    sget-object v2, Lme/leolin/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lme/leolin/shortcutbadger/Badger;

    if-nez v2, :cond_0

    .line 68
    invoke-static {p0}, Lme/leolin/shortcutbadger/ShortcutBadger;->initBadger(Landroid/content/Context;)Z

    move-result v1

    .line 70
    .local v1, "launcherReady":Z
    if-nez v1, :cond_0

    .line 71
    new-instance v2, Lme/leolin/shortcutbadger/ShortcutBadgeException;

    const-string v3, "No default launcher available"

    invoke-direct {v2, v3}, Lme/leolin/shortcutbadger/ShortcutBadgeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    .end local v1    # "launcherReady":Z
    :cond_0
    :try_start_0
    sget-object v2, Lme/leolin/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lme/leolin/shortcutbadger/Badger;

    sget-object v3, Lme/leolin/shortcutbadger/ShortcutBadger;->sComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, p0, v3, p1}, Lme/leolin/shortcutbadger/Badger;->executeBadge(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lme/leolin/shortcutbadger/ShortcutBadgeException;

    const-string v3, "Unable to execute badge"

    invoke-direct {v2, v3, v0}, Lme/leolin/shortcutbadger/ShortcutBadgeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private static initBadger(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    sput-object v6, Lme/leolin/shortcutbadger/ShortcutBadger;->sComponentName:Landroid/content/ComponentName;

    .line 106
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x10000

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 110
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "resolver"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 111
    :cond_0
    const/4 v6, 0x0

    .line 134
    :goto_0
    return v6

    .line 113
    :cond_1
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 115
    .local v2, "currentHomePackage":Ljava/lang/String;
    sget-object v6, Lme/leolin/shortcutbadger/ShortcutBadger;->BADGERS:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 116
    .local v1, "badger":Ljava/lang/Class;, "Ljava/lang/Class<+Lme/leolin/shortcutbadger/Badger;>;"
    const/4 v5, 0x0

    .line 118
    .local v5, "shortcutBadger":Lme/leolin/shortcutbadger/Badger;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lme/leolin/shortcutbadger/Badger;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    if-eqz v5, :cond_2

    invoke-interface {v5}, Lme/leolin/shortcutbadger/Badger;->getSupportLaunchers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 122
    sput-object v5, Lme/leolin/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lme/leolin/shortcutbadger/Badger;

    .line 127
    .end local v1    # "badger":Ljava/lang/Class;, "Ljava/lang/Class<+Lme/leolin/shortcutbadger/Badger;>;"
    .end local v5    # "shortcutBadger":Lme/leolin/shortcutbadger/Badger;
    :cond_3
    sget-object v6, Lme/leolin/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lme/leolin/shortcutbadger/Badger;

    if-nez v6, :cond_4

    .line 128
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v7, "Xiaomi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 129
    new-instance v6, Lme/leolin/shortcutbadger/impl/XiaomiHomeBadger;

    invoke-direct {v6}, Lme/leolin/shortcutbadger/impl/XiaomiHomeBadger;-><init>()V

    sput-object v6, Lme/leolin/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lme/leolin/shortcutbadger/Badger;

    .line 134
    :cond_4
    :goto_2
    const/4 v6, 0x1

    goto :goto_0

    .line 131
    :cond_5
    new-instance v6, Lme/leolin/shortcutbadger/impl/DefaultBadger;

    invoke-direct {v6}, Lme/leolin/shortcutbadger/impl/DefaultBadger;-><init>()V

    sput-object v6, Lme/leolin/shortcutbadger/ShortcutBadger;->sShortcutBadger:Lme/leolin/shortcutbadger/Badger;

    goto :goto_2

    .line 119
    .restart local v1    # "badger":Ljava/lang/Class;, "Ljava/lang/Class<+Lme/leolin/shortcutbadger/Badger;>;"
    .restart local v5    # "shortcutBadger":Lme/leolin/shortcutbadger/Badger;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static removeCount(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lme/leolin/shortcutbadger/ShortcutBadger;->applyCount(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static removeCountOrThrow(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lme/leolin/shortcutbadger/ShortcutBadgeException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lme/leolin/shortcutbadger/ShortcutBadger;->applyCountOrThrow(Landroid/content/Context;I)V

    .line 98
    return-void
.end method
