.class Lcom/android/settings/fingerprint/FingerprintEnrollFragment$9;
.super Ljava/lang/Object;
.source "FingerprintEnrollFragment.java"

# interfaces
.implements Legistec/fingerauth/api/FPAuthListeners$VerifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->initAllListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollFragment;)V
    .locals 0

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFragment$9;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 4

    .prologue
    .line 786
    const-string v0, "[VerifyListener] [onFail] verify failed."

    # invokes: Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->loge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->access$2100(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFragment$9;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->mAlreadyIdentify:Z
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->access$2202(Lcom/android/settings/fingerprint/FingerprintEnrollFragment;Z)Z

    .line 788
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFragment$9;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->access$1300(Lcom/android/settings/fingerprint/FingerprintEnrollFragment;)Legistec/fingerauth/api/SettingLib;

    move-result-object v0

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->abort()Z

    .line 789
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFragment$9;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->access$2300(Lcom/android/settings/fingerprint/FingerprintEnrollFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 790
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 780
    const-string v0, "[VerifyListener] [onSuccess]  verify success!"

    # invokes: Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->logv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->access$1900(Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFragment$9;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->access$1300(Lcom/android/settings/fingerprint/FingerprintEnrollFragment;)Legistec/fingerauth/api/SettingLib;

    move-result-object v0

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->abort()Z

    .line 782
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFragment$9;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFragment;

    # invokes: Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->showFPExistDlg()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->access$2000(Lcom/android/settings/fingerprint/FingerprintEnrollFragment;)V

    .line 783
    return-void
.end method
