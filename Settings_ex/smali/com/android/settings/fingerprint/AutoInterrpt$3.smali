.class Lcom/android/settings_ex/fingerprint/AutoInterrpt$3;
.super Ljava/lang/Object;
.source "AutoInterrpt.java"

# interfaces
.implements Legistec/fingerauth/api/FPAuthListeners$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/AutoInterrpt;->initLib()V
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
    .line 382
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt$3;->this$0:Lcom/android/settings_ex/fingerprint/AutoInterrpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBadImage(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 423
    return-void
.end method

.method public onFingerFetch()V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method public onFingerImageGetted()V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method public onServiceConnected()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt$3;->this$0:Lcom/android/settings_ex/fingerprint/AutoInterrpt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->calculateDTVRT(I)V

    .line 405
    return-void
.end method

.method public onServiceDisConnected()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/AutoInterrpt$3;->this$0:Lcom/android/settings_ex/fingerprint/AutoInterrpt;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings_ex/fingerprint/AutoInterrpt;->finish(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/AutoInterrpt;->access$400(Lcom/android/settings_ex/fingerprint/AutoInterrpt;Z)V

    .line 398
    return-void
.end method

.method public onStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 391
    return-void
.end method

.method public onUserAbort()V
    .locals 0

    .prologue
    .line 386
    return-void
.end method
