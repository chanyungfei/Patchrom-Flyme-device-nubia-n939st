.class Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$10;
.super Ljava/lang/Object;
.source "FingerprintEnrollFragment.java"

# interfaces
.implements Legistec/fingerauth/api/FPAuthListeners$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->initAllListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$10;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBadImage(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onBadImage] status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$2400(Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method public onFingerFetch()V
    .locals 1

    .prologue
    .line 800
    const-string v0, "[onFingerFetch]"

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$2400(Ljava/lang/String;)V

    .line 801
    return-void
.end method

.method public onFingerImageGetted()V
    .locals 1

    .prologue
    .line 804
    const-string v0, "[onFingerImageGetted]"

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$2400(Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method public onServiceConnected()V
    .locals 1

    .prologue
    .line 808
    const-string v0, "[onServiceConnected] start to identify..."

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logi(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$2500(Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$10;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$1300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Legistec/fingerauth/api/SettingLib;

    move-result-object v0

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->connectDevice()Z

    .line 810
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$10;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$1300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Legistec/fingerauth/api/SettingLib;

    move-result-object v0

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->identify()Z

    .line 811
    return-void
.end method

.method public onServiceDisConnected()V
    .locals 1

    .prologue
    .line 814
    const-string v0, "[onServiceDisConnected]"

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$2400(Ljava/lang/String;)V

    .line 815
    return-void
.end method

.method public onStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStatus] mAlreadyIdentify : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$10;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mAlreadyIdentify:Z
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$2200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$10;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->getMsgStr(I)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$2600(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$2400(Ljava/lang/String;)V

    .line 819
    const/16 v0, 0x449

    if-ne p1, v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$10;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # operator++ for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTimeCount:I
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$2708(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)I

    .line 822
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$10;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTimeCount:I
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$2700(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$10;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$2300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    const/16 v0, 0x432

    if-ne p1, v0, :cond_2

    .line 827
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$10;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mTimeCount:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$2702(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;I)I

    .line 828
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$10;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$2300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 829
    :cond_2
    const/16 v0, 0x446

    if-ne p1, v0, :cond_3

    .line 830
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$10;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$2300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 831
    :cond_3
    const/16 v0, 0x431

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method

.method public onUserAbort()V
    .locals 1

    .prologue
    .line 837
    const-string v0, "[onUserAbort]"

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$2400(Ljava/lang/String;)V

    .line 838
    return-void
.end method
