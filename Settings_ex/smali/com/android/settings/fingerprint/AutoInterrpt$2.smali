.class Lcom/android/settings_ex/fingerprint/AutoInterrpt$2;
.super Landroid/os/Handler;
.source "AutoInterrpt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/AutoInterrpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/AutoInterrpt;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/AutoInterrpt;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt$2;->this$0:Lcom/android/settings_ex/fingerprint/AutoInterrpt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 323
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 357
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt$2;->this$0:Lcom/android/settings_ex/fingerprint/AutoInterrpt;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->startDTVRT()I

    .line 359
    :goto_0
    return-void

    .line 331
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt$2;->this$0:Lcom/android/settings_ex/fingerprint/AutoInterrpt;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->calibrationDTVRT()V

    goto :goto_0

    .line 336
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt$2;->this$0:Lcom/android/settings_ex/fingerprint/AutoInterrpt;

    # getter for: Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->access$200(Lcom/android/settings_ex/fingerprint/AutoInterrpt;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/settings_ex/fingerprint/AutoInterrpt$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/fingerprint/AutoInterrpt$2$1;-><init>(Lcom/android/settings_ex/fingerprint/AutoInterrpt$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 346
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt$2;->this$0:Lcom/android/settings_ex/fingerprint/AutoInterrpt;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->autoListener:Lcom/android/settings_ex/fingerprint/AutoInterrpt$GetTHDCValueListener;

    invoke-interface {v0}, Lcom/android/settings_ex/fingerprint/AutoInterrpt$GetTHDCValueListener;->OnSuccess()V

    .line 347
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt$2;->this$0:Lcom/android/settings_ex/fingerprint/AutoInterrpt;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->autoListener:Lcom/android/settings_ex/fingerprint/AutoInterrpt$GetTHDCValueListener;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt$2;->this$0:Lcom/android/settings_ex/fingerprint/AutoInterrpt;

    # getter for: Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mThreshold:I
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->access$300(Lcom/android/settings_ex/fingerprint/AutoInterrpt;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt$2;->this$0:Lcom/android/settings_ex/fingerprint/AutoInterrpt;

    iget v2, v2, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->mDCOffset:I

    invoke-interface {v0, v1, v2}, Lcom/android/settings_ex/fingerprint/AutoInterrpt$GetTHDCValueListener;->getTHDCValue(II)V

    goto :goto_0

    .line 352
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt$2;->this$0:Lcom/android/settings_ex/fingerprint/AutoInterrpt;

    iget-object v0, v0, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->autoListener:Lcom/android/settings_ex/fingerprint/AutoInterrpt$GetTHDCValueListener;

    invoke-interface {v0}, Lcom/android/settings_ex/fingerprint/AutoInterrpt$GetTHDCValueListener;->OnFail()V

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
