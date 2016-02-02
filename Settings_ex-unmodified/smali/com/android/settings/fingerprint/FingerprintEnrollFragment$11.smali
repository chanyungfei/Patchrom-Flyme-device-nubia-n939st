.class Lcom/android/settings/fingerprint/FingerprintEnrollFragment$11;
.super Ljava/lang/Object;
.source "FingerprintEnrollFragment.java"

# interfaces
.implements Legistec/fingerauth/api/FPAuthListeners$EnrollListener;


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
    .line 842
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFragment$11;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    .prologue
    .line 844
    const-string v0, "[EnrollListener] [onFail] enroll failed!"

    # invokes: Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->loge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->access$2100(Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFragment$11;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->access$2300(Lcom/android/settings/fingerprint/FingerprintEnrollFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 846
    return-void
.end method

.method public onProgress()V
    .locals 1

    .prologue
    .line 849
    const-string v0, "[EnrollListener] onProgress"

    # invokes: Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->access$2400(Ljava/lang/String;)V

    .line 850
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 853
    const-string v0, "[EnrollListener] [onSuccess] enroll success! Try to check if the pwd has been set or not."

    # invokes: Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->logv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->access$1900(Ljava/lang/String;)V

    .line 855
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFragment$11;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFragment;

    # invokes: Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->vibrateShort()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->access$500(Lcom/android/settings/fingerprint/FingerprintEnrollFragment;)V

    .line 856
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFragment$11;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFragment;

    # setter for: Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->mProgressSuccess:Z
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->access$1502(Lcom/android/settings/fingerprint/FingerprintEnrollFragment;Z)Z

    .line 857
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFragment$11;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->access$2300(Lcom/android/settings/fingerprint/FingerprintEnrollFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 858
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFragment$11;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFragment;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFragment$11;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->mFingerIndex:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->access$1200(Lcom/android/settings/fingerprint/FingerprintEnrollFragment;)I

    move-result v1

    # invokes: Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->addFingerprint(I)V
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFragment;->access$2800(Lcom/android/settings/fingerprint/FingerprintEnrollFragment;I)V

    .line 859
    return-void
.end method
