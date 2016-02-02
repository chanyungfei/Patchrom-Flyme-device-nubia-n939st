.class Lcom/android/settings_ex/SdupdateActivity$1;
.super Landroid/os/Handler;
.source "SdupdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SdupdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SdupdateActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SdupdateActivity;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings_ex/SdupdateActivity$1;->this$0:Lcom/android/settings_ex/SdupdateActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/SdupdateActivity$1;->this$0:Lcom/android/settings_ex/SdupdateActivity;

    iget-object v0, v0, Lcom/android/settings_ex/SdupdateActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/SdupdateActivity$1;->this$0:Lcom/android/settings_ex/SdupdateActivity;

    # invokes: Lcom/android/settings_ex/SdupdateActivity;->init()V
    invoke-static {v0}, Lcom/android/settings_ex/SdupdateActivity;->access$000(Lcom/android/settings_ex/SdupdateActivity;)V

    .line 116
    return-void
.end method
