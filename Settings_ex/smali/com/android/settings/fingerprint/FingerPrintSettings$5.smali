.class Lcom/android/settings_ex/fingerprint/FingerPrintSettings$5;
.super Ljava/lang/Object;
.source "FingerPrintSettings.java"

# interfaces
.implements Lcom/android/settings_ex/fingerprint/AutoInterrpt$GetTHDCValueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->doInterrupt(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

.field final synthetic val$redo:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Z)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$5;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    iput-boolean p2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$5;->val$redo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnFail()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 525
    const-string v1, "[doInterrupt] [OnFail] interrupt failed!"

    # invokes: Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->access$300(Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$5;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "interrrupt_key"

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/fingerprint/FingerPrintUtils;->putIntDataByKey(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 529
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$5;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->access$700(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$5;->val$redo:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 530
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 532
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$5;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->access$700(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 533
    return-void
.end method

.method public OnSuccess()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 513
    const-string v1, "[doInterrupt] [OnSuccess] interrupt success!"

    # invokes: Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->access$300(Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$5;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "interrrupt_key"

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/fingerprint/FingerPrintUtils;->putIntDataByKey(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 517
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$5;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->access$700(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$5;->val$redo:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 518
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 520
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$5;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->access$700(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 521
    return-void
.end method

.method public getTHDCValue(II)V
    .locals 2
    .param p1, "iDCvalue"    # I
    .param p2, "iTHvalue"    # I

    .prologue
    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[doInterrupt] [getTHDCValue] interrupt result : iDCvalue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iTHvalue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->access$400(Ljava/lang/String;)V

    .line 509
    return-void
.end method
