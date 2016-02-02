.class Lcom/android/settings_ex/fingerprint/FingerPrintSettings$1;
.super Landroid/os/Handler;
.source "FingerPrintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerPrintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, "redo":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    if-eqz v0, :cond_0

    const v1, 0x7f090b9c

    :goto_1
    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const v1, 0x7f090b9a

    goto :goto_1

    .line 146
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 147
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    if-eqz v0, :cond_1

    const v1, 0x7f090b9d

    :goto_2
    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const v1, 0x7f090b9b

    goto :goto_2

    .line 151
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 152
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->showProgressing(Z)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->access$000(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Z)V

    goto :goto_0

    .line 156
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->dismissProgressing()V
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->access$100(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
