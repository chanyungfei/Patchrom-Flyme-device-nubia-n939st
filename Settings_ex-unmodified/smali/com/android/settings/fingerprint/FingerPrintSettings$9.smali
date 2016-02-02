.class Lcom/android/settings/fingerprint/FingerPrintSettings$9;
.super Ljava/lang/Object;
.source "FingerPrintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintSettings;->showFPRenameDlg(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

.field final synthetic val$et:Landroid/widget/EditText;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintSettings;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$9;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$9;->val$et:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$9;->val$key:Ljava/lang/String;

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

    .line 931
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$9;->val$et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 933
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 934
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$9;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    const v2, 0x7f090b8c

    const v3, 0x7f090b8d

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSettings;->showErrorInfo(II)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$1500(Lcom/android/settings/fingerprint/FingerPrintSettings;II)V

    .line 936
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$9;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSettings;->mFPRenameDlg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$1600(Lcom/android/settings/fingerprint/FingerPrintSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 937
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$9;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    # setter for: Lcom/android/settings/fingerprint/FingerPrintSettings;->mFPRenameDlg:Landroid/app/AlertDialog;
    invoke-static {v1, v4}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$1602(Lcom/android/settings/fingerprint/FingerPrintSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 957
    :goto_0
    return-void

    .line 942
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$9;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSettings;->FINGERPRINT_NAME_TMP:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$1700(Lcom/android/settings/fingerprint/FingerPrintSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$9;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSettings;->isExistName(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$1800(Lcom/android/settings/fingerprint/FingerPrintSettings;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 943
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$9;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    const v2, 0x7f090b8e

    const v3, 0x7f090b8f

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSettings;->showErrorInfo(II)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$1500(Lcom/android/settings/fingerprint/FingerPrintSettings;II)V

    .line 945
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$9;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSettings;->mFPRenameDlg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$1600(Lcom/android/settings/fingerprint/FingerPrintSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 946
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$9;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    # setter for: Lcom/android/settings/fingerprint/FingerPrintSettings;->mFPRenameDlg:Landroid/app/AlertDialog;
    invoke-static {v1, v4}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$1602(Lcom/android/settings/fingerprint/FingerPrintSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 951
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$9;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$9;->val$key:Ljava/lang/String;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSettings;->renameByKey(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$1900(Lcom/android/settings/fingerprint/FingerPrintSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$9;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintSettings;->refreshUI()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$600(Lcom/android/settings/fingerprint/FingerPrintSettings;)V

    .line 955
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$9;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSettings;->mFPRenameDlg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$1600(Lcom/android/settings/fingerprint/FingerPrintSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 956
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$9;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    # setter for: Lcom/android/settings/fingerprint/FingerPrintSettings;->mFPRenameDlg:Landroid/app/AlertDialog;
    invoke-static {v1, v4}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$1602(Lcom/android/settings/fingerprint/FingerPrintSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0
.end method
