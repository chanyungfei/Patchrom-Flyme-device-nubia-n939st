.class Lcom/android/settings/fingerprint/FingerPrintSettings$4;
.super Ljava/lang/Object;
.source "FingerPrintSettings.java"

# interfaces
.implements Legistec/fingerauth/api/FPAuthListeners$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintSettings;->removeCalibration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

.field final synthetic val$lib:Legistec/fingerauth/api/SettingLib;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintSettings;Legistec/fingerauth/api/SettingLib;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$4;->val$lib:Legistec/fingerauth/api/SettingLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBadImage(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[removeCalibration] onBadImage status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$400(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public onFingerFetch()V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

.method public onFingerImageGetted()V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method public onServiceConnected()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 425
    const-string v2, "[removeCalibration] onServiceConnected"

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$400(Ljava/lang/String;)V

    .line 427
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$700(Lcom/android/settings/fingerprint/FingerPrintSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 428
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 430
    const/4 v1, 0x0

    .line 431
    .local v1, "success":Z
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$4;->val$lib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v2}, Legistec/fingerauth/api/SettingLib;->removeCalibration()I

    move-result v2

    if-nez v2, :cond_0

    .line 432
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerPrintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "interrrupt_key"

    invoke-static {v2, v3, v5}, Lcom/android/settings/fingerprint/FingerPrintUtils;->putIntDataByKey(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 434
    const-string v2, "[removeCalibration] success!"

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSettings;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$300(Ljava/lang/String;)V

    .line 435
    const/4 v1, 0x1

    .line 440
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$4;->val$lib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v2}, Legistec/fingerauth/api/SettingLib;->abort()Z

    .line 441
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$4;->val$lib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v2}, Legistec/fingerauth/api/SettingLib;->disconnectDevice()Z

    .line 442
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$4;->val$lib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v2}, Legistec/fingerauth/api/SettingLib;->cleanListeners()V

    .line 443
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$4;->val$lib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v2}, Legistec/fingerauth/api/SettingLib;->unbind()V

    .line 445
    if-eqz v1, :cond_1

    .line 446
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSettings;->mInterruptHandler:Lcom/android/settings/fingerprint/FingerPrintSettings$InterruptHandler;
    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$800(Lcom/android/settings/fingerprint/FingerPrintSettings;)Lcom/android/settings/fingerprint/FingerPrintSettings$InterruptHandler;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/settings/fingerprint/FingerPrintSettings$InterruptHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 454
    :goto_1
    return-void

    .line 437
    :cond_0
    const-string v2, "[removeCalibration] failed!"

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSettings;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$700(Lcom/android/settings/fingerprint/FingerPrintSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 451
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSettings;->mInterruptHandler:Lcom/android/settings/fingerprint/FingerPrintSettings$InterruptHandler;
    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$800(Lcom/android/settings/fingerprint/FingerPrintSettings;)Lcom/android/settings/fingerprint/FingerPrintSettings$InterruptHandler;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/settings/fingerprint/FingerPrintSettings$InterruptHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public onServiceDisConnected()V
    .locals 2

    .prologue
    .line 457
    const-string v0, "[removeCalibration] onServiceDisConnected"

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$400(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$700(Lcom/android/settings/fingerprint/FingerPrintSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 459
    return-void
.end method

.method public onStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[removeCalibration] onStatus arg0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$400(Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method public onUserAbort()V
    .locals 1

    .prologue
    .line 466
    const-string v0, "[removeCalibration] onUserAbort "

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$400(Ljava/lang/String;)V

    .line 467
    return-void
.end method
