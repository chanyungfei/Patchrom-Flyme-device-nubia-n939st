.class Lcom/android/settings/fingerprint/FingerPrintSettings$3;
.super Ljava/lang/Object;
.source "FingerPrintSettings.java"

# interfaces
.implements Legistec/fingerauth/api/FPAuthListeners$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintSettings;->deleteEnrolledFP(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

.field final synthetic val$fpName:Ljava/lang/String;

.field final synthetic val$index:I

.field final synthetic val$lib:Legistec/fingerauth/api/SettingLib;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintSettings;Legistec/fingerauth/api/SettingLib;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$3;->val$lib:Legistec/fingerauth/api/SettingLib;

    iput-object p3, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$3;->val$fpName:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBadImage(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[deleteEnrolledFP] onBadImage status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$400(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public onFingerFetch()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public onFingerImageGetted()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public onServiceConnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 332
    const-string v0, "[deleteEnrolledFP] onServiceConnected"

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$400(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$3;->val$lib:Legistec/fingerauth/api/SettingLib;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$3;->val$fpName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Legistec/fingerauth/api/SettingLib;->deleteFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$3;->val$index:I

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintUtils;->deleteFingerPrintByIndex(Landroid/content/Context;I)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    const v1, 0x7f090b88

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 337
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/fingerprint/FingerPrintSettings;->mDeleteTrigger:Z
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$502(Lcom/android/settings/fingerprint/FingerPrintSettings;Z)Z

    .line 338
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSettings;->refreshUI()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$600(Lcom/android/settings/fingerprint/FingerPrintSettings;)V

    .line 343
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$3;->val$lib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->abort()Z

    .line 344
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$3;->val$lib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->disconnectDevice()Z

    .line 345
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$3;->val$lib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->cleanListeners()V

    .line 346
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$3;->val$lib:Legistec/fingerauth/api/SettingLib;

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->unbind()V

    .line 347
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    const v1, 0x7f090b89

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onServiceDisConnected()V
    .locals 1

    .prologue
    .line 350
    const-string v0, "[deleteEnrolledFP] onServiceDisConnected"

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$400(Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public onStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[deleteEnrolledFP] onStatus status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$400(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public onUserAbort()V
    .locals 1

    .prologue
    .line 358
    const-string v0, "[deleteEnrolledFP] onUserAbort "

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$400(Ljava/lang/String;)V

    .line 359
    return-void
.end method
