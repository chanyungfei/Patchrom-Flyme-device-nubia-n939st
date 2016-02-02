.class Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$1;
.super Ljava/lang/Object;
.source "FingerPrintAssociatedAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->showFPReNameDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

.field final synthetic val$et:Landroid/widget/EditText;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    iput-object p2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$1;->val$et:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 253
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$1;->val$et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    const v2, 0x7f090b8c

    const v3, 0x7f090b8d

    # invokes: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->showErrorInfo(II)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$000(Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;II)V

    .line 257
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->mRenameDlg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$100(Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 258
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    # setter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->mRenameDlg:Landroid/app/AlertDialog;
    invoke-static {v1, v4}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$102(Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 275
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->FINGERPRINT_NAME_TMP:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$200(Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->isExistName(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$300(Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    const v2, 0x7f090b8e

    const v3, 0x7f090b8f

    # invokes: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->showErrorInfo(II)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$000(Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;II)V

    .line 264
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->mRenameDlg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$100(Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 265
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    # setter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->mRenameDlg:Landroid/app/AlertDialog;
    invoke-static {v1, v4}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$102(Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$1;->val$key:Ljava/lang/String;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->renameByKey(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$400(Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$500(Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    # invokes: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->initSelectFingPrintList(Z)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$600(Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;Z)V

    .line 273
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->mRenameDlg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$100(Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 274
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    # setter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->mRenameDlg:Landroid/app/AlertDialog;
    invoke-static {v1, v4}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$102(Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0
.end method
