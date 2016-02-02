.class final Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;
.super Ljava/lang/Object;
.source "FingerPrintUtilsHipad.java"

# interfaces
.implements Legistec/fingerauth/api/FPAuthListeners$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hipad/fingerprint/FingerPrintUtilsHipad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FPStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;


# direct methods
.method constructor <init>(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBadImage(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onBadImage] status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$400(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    const/4 v1, 0x0

    # invokes: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->notifyByMsg(II)V
    invoke-static {v0, v1, p1}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$200(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;II)V

    .line 96
    return-void
.end method

.method public onFingerFetch()V
    .locals 3

    .prologue
    .line 122
    const-string v0, "[onFingerFetch]"

    # invokes: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$400(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    const/4 v1, 0x3

    const/4 v2, -0x1

    # invokes: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->notifyByMsg(II)V
    invoke-static {v0, v1, v2}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$200(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;II)V

    .line 124
    return-void
.end method

.method public onFingerImageGetted()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onFingerImageGetted] mHasCaptured : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    # getter for: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHasCaptured:Z
    invoke-static {v1}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$100(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$400(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    # getter for: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHasCaptured:Z
    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$100(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    const/4 v1, 0x1

    # setter for: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHasCaptured:Z
    invoke-static {v0, v1}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$102(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;Z)Z

    .line 133
    # getter for: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mLib:Legistec/fingerauth/api/SettingLib;
    invoke-static {}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$700()Legistec/fingerauth/api/SettingLib;

    move-result-object v0

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->abort()Z

    .line 135
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    # getter for: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$800(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    # getter for: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$800(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    # getter for: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$800(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    :cond_0
    return-void
.end method

.method public onServiceConnected()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v2, 0x1

    .line 100
    const-string v0, "[onServiceConnected]"

    # invokes: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$400(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    # setter for: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mIsConnectService:Z
    invoke-static {v0, v2}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$502(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;Z)Z

    .line 102
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    const/4 v1, 0x0

    # setter for: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mIsConnectting:Z
    invoke-static {v0, v1}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$602(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;Z)Z

    .line 104
    # getter for: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mLib:Legistec/fingerauth/api/SettingLib;
    invoke-static {}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$700()Legistec/fingerauth/api/SettingLib;

    move-result-object v0

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->connectDevice()Z

    .line 106
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    const/4 v1, -0x1

    # invokes: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->notifyByMsg(II)V
    invoke-static {v0, v2, v1}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$200(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;II)V

    .line 108
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    # getter for: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$800(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    # getter for: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$800(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 110
    return-void
.end method

.method public onServiceDisConnected()V
    .locals 3

    .prologue
    .line 114
    const-string v0, "[onServiceDisConnected]"

    # invokes: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$400(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    const/4 v1, 0x0

    # setter for: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->mIsConnectService:Z
    invoke-static {v0, v1}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$502(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;Z)Z

    .line 117
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    const/4 v1, 0x2

    const/4 v2, -0x1

    # invokes: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->notifyByMsg(II)V
    invoke-static {v0, v1, v2}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$200(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;II)V

    .line 118
    return-void
.end method

.method public onStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStatus] status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$400(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    const/4 v1, 0x6

    # invokes: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->notifyByMsg(II)V
    invoke-static {v0, v1, p1}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$200(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;II)V

    .line 153
    return-void
.end method

.method public onUserAbort()V
    .locals 3

    .prologue
    .line 144
    const-string v0, "[onUserAbort]"

    # invokes: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$400(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPStatusListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    const/4 v1, 0x5

    const/4 v2, -0x1

    # invokes: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->notifyByMsg(II)V
    invoke-static {v0, v1, v2}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$200(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;II)V

    .line 146
    return-void
.end method
