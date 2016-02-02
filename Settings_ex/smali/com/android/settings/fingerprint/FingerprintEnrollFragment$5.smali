.class Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$5;
.super Ljava/lang/Object;
.source "FingerprintEnrollFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 567
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$5;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 569
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 570
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "enroll_result_index"

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$5;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mFingerIndex:I
    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$1200(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    const-string v1, "enroll_result_name"

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$5;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mFingerPrintName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$1700(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$5;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 573
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$5;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mNormal:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$1802(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;Z)Z

    .line 574
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$5;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->finish()V

    .line 575
    return-void
.end method
