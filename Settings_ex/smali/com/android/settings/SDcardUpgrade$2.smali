.class Lcom/android/settings_ex/SDcardUpgrade$2;
.super Landroid/os/Handler;
.source "SDcardUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SDcardUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SDcardUpgrade;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SDcardUpgrade;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/settings_ex/SDcardUpgrade$2;->this$0:Lcom/android/settings_ex/SDcardUpgrade;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 339
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 364
    :goto_0
    return-void

    .line 341
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade$2;->this$0:Lcom/android/settings_ex/SDcardUpgrade;

    # setter for: Lcom/android/settings_ex/SDcardUpgrade;->mCanUpdate:Z
    invoke-static {v0, v2}, Lcom/android/settings_ex/SDcardUpgrade;->access$302(Lcom/android/settings_ex/SDcardUpgrade;Z)Z

    .line 342
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/SDcardUpgrade$2;->this$0:Lcom/android/settings_ex/SDcardUpgrade;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090bd6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090bd7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090bce

    new-instance v2, Lcom/android/settings_ex/SDcardUpgrade$2$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/SDcardUpgrade$2$1;-><init>(Lcom/android/settings_ex/SDcardUpgrade$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 356
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade$2;->this$0:Lcom/android/settings_ex/SDcardUpgrade;

    invoke-virtual {v0}, Lcom/android/settings_ex/SDcardUpgrade;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090bd8

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 357
    iget-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade$2;->this$0:Lcom/android/settings_ex/SDcardUpgrade;

    # setter for: Lcom/android/settings_ex/SDcardUpgrade;->mCanUpdate:Z
    invoke-static {v0, v2}, Lcom/android/settings_ex/SDcardUpgrade;->access$302(Lcom/android/settings_ex/SDcardUpgrade;Z)Z

    goto :goto_0

    .line 360
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade$2;->this$0:Lcom/android/settings_ex/SDcardUpgrade;

    invoke-virtual {v0}, Lcom/android/settings_ex/SDcardUpgrade;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090bd4

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 361
    iget-object v0, p0, Lcom/android/settings_ex/SDcardUpgrade$2;->this$0:Lcom/android/settings_ex/SDcardUpgrade;

    # setter for: Lcom/android/settings_ex/SDcardUpgrade;->mCanUpdate:Z
    invoke-static {v0, v2}, Lcom/android/settings_ex/SDcardUpgrade;->access$302(Lcom/android/settings_ex/SDcardUpgrade;Z)Z

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
