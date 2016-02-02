.class Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Legistec/fingerauth/api/FPAuthListeners$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->initAllListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBadImage(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 382
    const-string v0, "ConfirmLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onBadImage] status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # invokes: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->vibrateShort()V
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$600(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    .line 384
    return-void
.end method

.method public onFingerFetch()V
    .locals 2

    .prologue
    .line 387
    const-string v0, "ConfirmLockPassword"

    const-string v1, "[onFingerFetch]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method

.method public onFingerImageGetted()V
    .locals 2

    .prologue
    .line 391
    const-string v0, "ConfirmLockPassword"

    const-string v1, "[onFingerImageGetted]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void
.end method

.method public onServiceConnected()V
    .locals 2

    .prologue
    .line 395
    const-string v0, "ConfirmLockPassword"

    const-string v1, "[onServiceConnected] start to identify..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLib:Legistec/fingerauth/api/SettingLib;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$700(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Legistec/fingerauth/api/SettingLib;

    move-result-object v0

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->connectDevice()Z

    .line 397
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLib:Legistec/fingerauth/api/SettingLib;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$700(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Legistec/fingerauth/api/SettingLib;

    move-result-object v0

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->identify()Z

    .line 398
    return-void
.end method

.method public onServiceDisConnected()V
    .locals 2

    .prologue
    .line 401
    const-string v0, "ConfirmLockPassword"

    const-string v1, "[onServiceDisConnected]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-void
.end method

.method public onStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 406
    return-void
.end method

.method public onUserAbort()V
    .locals 0

    .prologue
    .line 410
    return-void
.end method
