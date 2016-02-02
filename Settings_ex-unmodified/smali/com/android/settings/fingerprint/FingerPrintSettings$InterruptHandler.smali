.class final Lcom/android/settings/fingerprint/FingerPrintSettings$InterruptHandler;
.super Landroid/os/Handler;
.source "FingerPrintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerPrintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InterruptHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/fingerprint/FingerPrintSettings;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$InterruptHandler;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    .line 166
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 167
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 172
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 174
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSettings$InterruptHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 178
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 179
    .local v0, "redo":Z
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$InterruptHandler;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSettings;->doInterrupt(Z)V
    invoke-static {v1, v0}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$200(Lcom/android/settings/fingerprint/FingerPrintSettings;Z)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
