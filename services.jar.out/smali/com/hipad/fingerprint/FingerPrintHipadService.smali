.class public Lcom/hipad/fingerprint/FingerPrintHipadService;
.super Lcom/hipad/fingerprint/IFingerPrintUtils$Stub;
.source "FingerPrintHipadService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerPrintHipadService"


# instance fields
.field mUtils:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/hipad/fingerprint/IFingerPrintUtils$Stub;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->getDefault(Landroid/content/Context;)Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    move-result-object v0

    iput-object v0, p0, Lcom/hipad/fingerprint/FingerPrintHipadService;->mUtils:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    .line 18
    return-void
.end method


# virtual methods
.method public addListener(Lcom/hipad/fingerprint/FingerPrintListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/hipad/fingerprint/FingerPrintListener;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintHipadService;->mUtils:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    invoke-virtual {v0, p1}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->addListener(Lcom/hipad/fingerprint/FingerPrintListener;)V

    .line 53
    return-void
.end method

.method public captureRawData()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintHipadService;->mUtils:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    invoke-virtual {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->captureRawData()V

    .line 48
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintHipadService;->mUtils:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    invoke-virtual {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->close()V

    .line 38
    return-void
.end method

.method public identify()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintHipadService;->mUtils:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    invoke-virtual {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->identify()V

    .line 43
    return-void
.end method

.method public isLockFingerprintEnabled()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintHipadService;->mUtils:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    invoke-virtual {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->isLockFingerprintEnabled()Z

    move-result v0

    return v0
.end method

.method public keyguardRelease()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintHipadService;->mUtils:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    invoke-virtual {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->keyguardRelease()V

    .line 63
    return-void
.end method

.method public open()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintHipadService;->mUtils:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    invoke-virtual {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->open()V

    .line 33
    return-void
.end method

.method public removeListener(Lcom/hipad/fingerprint/FingerPrintListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/hipad/fingerprint/FingerPrintListener;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintHipadService;->mUtils:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    invoke-virtual {v0, p1}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->removeListener(Lcom/hipad/fingerprint/FingerPrintListener;)V

    .line 58
    return-void
.end method

.method public test()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/hipad/fingerprint/FingerPrintHipadService;->mUtils:Lcom/hipad/fingerprint/FingerPrintUtilsHipad;

    invoke-virtual {v0}, Lcom/hipad/fingerprint/FingerPrintUtilsHipad;->test()V

    .line 23
    return-void
.end method
