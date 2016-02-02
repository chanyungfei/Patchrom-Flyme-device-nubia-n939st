.class Lcom/hipad/fingerprint/FingerPrintUtilsHipad$1;
.super Landroid/os/Handler;
.source "FingerPrintUtilsHipad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hipad/fingerprint/FingerPrintUtilsHipad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;


# direct methods
.method constructor <init>(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$1;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleMessage] unhandled msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logw(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$300(Ljava/lang/String;)V

    .line 88
    :goto_0
    :pswitch_0
    return-void

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$1;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    # setter for: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mStartCaptured:Z
    invoke-static {v0, v1}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$002(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;Z)Z

    .line 80
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$1;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    # setter for: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHasCaptured:Z
    invoke-static {v0, v1}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$102(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;Z)Z

    .line 81
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$1;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    const/4 v1, 0x4

    const/4 v2, -0x1

    # invokes: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->notifyByMsg(II)V
    invoke-static {v0, v1, v2}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$200(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;II)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
