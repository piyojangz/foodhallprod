.class public Lcom/servewellsolution/app/leafood/MainActivity;
.super Lcom/facebook/react/ReactActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/facebook/react/ReactActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMainComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "StarterKit"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/servewellsolution/app/leafood/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/servewellsolution/app/leafood/MainActivity;->showHashKey(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/servewellsolution/app/leafood/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 31
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/ReactActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 44
    return-void
.end method

.method public showHashKey(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 48
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.servewellsolution.app.leafood"

    const/16 v8, 0x40

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 50
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v4, v6, v5

    .line 51
    .local v4, "signature":Landroid/content/pm/Signature;
    const-string v8, "SHA"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 52
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 54
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "sign":Ljava/lang/String;
    const-string v8, "KeyHash:"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 58
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "sign":Ljava/lang/String;
    .end local v4    # "signature":Landroid/content/pm/Signature;
    :cond_0
    const-string v5, "KeyHash:"

    const-string v6, "****------------***"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_1
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 61
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 62
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1
.end method
