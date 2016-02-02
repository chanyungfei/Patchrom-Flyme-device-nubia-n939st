.class Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$12;
.super Ljava/lang/Object;
.source "FingerprintEnrollFragment.java"

# interfaces
.implements Legistec/fingerauth/api/FPAuthListeners$EnrollMapProgressListener;


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
    .line 863
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$12;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollMapProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onEnrollMapProgress] progress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$2400(Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$12;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mProgress:I
    invoke-static {v0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$102(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;I)I

    .line 867
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$12;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$2300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 868
    return-void
.end method
