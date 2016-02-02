.class Legistec/fingerauth/api/SettingLib$2;
.super Legistec/fingerauth/api/IFPAuthServiceCallback$Stub;
.source "SettingLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Legistec/fingerauth/api/SettingLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Legistec/fingerauth/api/SettingLib;


# direct methods
.method constructor <init>(Legistec/fingerauth/api/SettingLib;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Legistec/fingerauth/api/SettingLib$2;->this$0:Legistec/fingerauth/api/SettingLib;

    .line 231
    invoke-direct {p0}, Legistec/fingerauth/api/IFPAuthServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public postMessage(III)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 234
    iget-object v0, p0, Legistec/fingerauth/api/SettingLib$2;->this$0:Legistec/fingerauth/api/SettingLib;

    # getter for: Legistec/fingerauth/api/SettingLib;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Legistec/fingerauth/api/SettingLib;->access$2(Legistec/fingerauth/api/SettingLib;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 235
    return-void
.end method
