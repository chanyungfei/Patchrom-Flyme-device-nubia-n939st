.class final Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPVerifyListener;
.super Ljava/lang/Object;
.source "FingerPrintUtilsHipad.java"

# interfaces
.implements Legistec/fingerauth/api/FPAuthListeners$VerifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hipad/fingerprint/FingerPrintUtilsHipad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FPVerifyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;


# direct methods
.method constructor <init>(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPVerifyListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 3

    .prologue
    .line 165
    const-string v0, "[onFail] verify failed!"

    # invokes: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->loge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$900(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPVerifyListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    const/16 v1, 0x8

    const/4 v2, -0x1

    # invokes: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->notifyByMsg(II)V
    invoke-static {v0, v1, v2}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$200(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;II)V

    .line 167
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 159
    const-string v0, "[onSuccess] verify success!"

    # invokes: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->loge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$900(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintUtilsHipad$FPVerifyListener;->this$0:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    const/4 v1, 0x7

    const/4 v2, -0x1

    # invokes: Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->notifyByMsg(II)V
    invoke-static {v0, v1, v2}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->access$200(Lcom/hipad/fingerprint/FingerPrintUtilsHipad;II)V

    .line 161
    return-void
.end method
