.class public Lcom/facebook/react/devsupport/DevLoadingViewController;
.super Ljava/lang/Object;
.source "DevLoadingViewController.java"


# static fields
.field private static final COLOR_DARK_GREEN:I

.field private static sEnabled:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDevLoadingView:Landroid/widget/TextView;

.field private mIsVisible:Z

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "#035900"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/react/devsupport/DevLoadingViewController;->COLOR_DARK_GREEN:I

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/react/devsupport/DevLoadingViewController;->sEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/react/devsupport/DevLoadingViewController;->mIsVisible:Z

    .line 48
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevLoadingViewController;->mContext:Landroid/content/Context;

    .line 49
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevLoadingViewController;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/facebook/react/devsupport/DevLoadingViewController;->mWindowManager:Landroid/view/WindowManager;

    .line 50
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevLoadingViewController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 51
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/facebook/react/R$layout;->dev_loading_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/facebook/react/devsupport/DevLoadingViewController;->mDevLoadingView:Landroid/widget/TextView;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/devsupport/DevLoadingViewController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevLoadingViewController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevLoadingViewController;->mDevLoadingView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/react/devsupport/DevLoadingViewController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/react/devsupport/DevLoadingViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DevLoadingViewController;->setVisible(Z)V

    return-void
.end method

.method public static setDevLoadingEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 44
    sput-boolean p0, Lcom/facebook/react/devsupport/DevLoadingViewController;->sEnabled:Z

    .line 45
    return-void
.end method

.method private setVisible(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    .line 137
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/facebook/react/devsupport/DevLoadingViewController;->mIsVisible:Z

    if-nez v1, :cond_1

    .line 138
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7d6

    const/16 v4, 0x8

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 144
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 145
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevLoadingViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevLoadingViewController;->mDevLoadingView:Landroid/widget/TextView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/facebook/react/devsupport/DevLoadingViewController;->mIsVisible:Z

    .line 150
    return-void

    .line 146
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/facebook/react/devsupport/DevLoadingViewController;->mIsVisible:Z

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/facebook/react/devsupport/DevLoadingViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevLoadingViewController;->mDevLoadingView:Landroid/widget/TextView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/facebook/react/devsupport/DevLoadingViewController;->sEnabled:Z

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevLoadingViewController$4;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevLoadingViewController$4;-><init>(Lcom/facebook/react/devsupport/DevLoadingViewController;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/facebook/react/devsupport/DevLoadingViewController;->sEnabled:Z

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevLoadingViewController$3;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DevLoadingViewController$3;-><init>(Lcom/facebook/react/devsupport/DevLoadingViewController;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showForRemoteJSEnabled()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevLoadingViewController;->mContext:Landroid/content/Context;

    sget v1, Lcom/facebook/react/R$string;->catalyst_remotedbg_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    sget v2, Lcom/facebook/react/devsupport/DevLoadingViewController;->COLOR_DARK_GREEN:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/react/devsupport/DevLoadingViewController;->showMessage(Ljava/lang/String;II)V

    .line 88
    return-void
.end method

.method public showForUrl(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 74
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .local v1, "parsedURL":Ljava/net/URL;
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevLoadingViewController;->mContext:Landroid/content/Context;

    sget v3, Lcom/facebook/react/R$string;->catalyst_loading_from_url:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    sget v4, Lcom/facebook/react/devsupport/DevLoadingViewController;->COLOR_DARK_GREEN:I

    .line 80
    invoke-virtual {p0, v2, v3, v4}, Lcom/facebook/react/devsupport/DevLoadingViewController;->showMessage(Ljava/lang/String;II)V

    .line 84
    .end local v1    # "parsedURL":Ljava/net/URL;
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/net/MalformedURLException;
    const-string v2, "React"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bundle url format is invalid. \n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showMessage(Ljava/lang/String;II)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "backgroundColor"    # I

    .prologue
    .line 55
    sget-boolean v0, Lcom/facebook/react/devsupport/DevLoadingViewController;->sEnabled:Z

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevLoadingViewController$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/facebook/react/devsupport/DevLoadingViewController$1;-><init>(Lcom/facebook/react/devsupport/DevLoadingViewController;ILjava/lang/String;I)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateProgress(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "done"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "total"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    sget-boolean v0, Lcom/facebook/react/devsupport/DevLoadingViewController;->sEnabled:Z

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DevLoadingViewController$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/react/devsupport/DevLoadingViewController$2;-><init>(Lcom/facebook/react/devsupport/DevLoadingViewController;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
