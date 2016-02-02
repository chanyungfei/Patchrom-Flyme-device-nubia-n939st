.class Lcom/android/settings_ex/DevelopmentSettings$2;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DevelopmentSettings;->showPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DevelopmentSettings;

.field final synthetic val$edittext:Landroid/widget/EditText;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DevelopmentSettings;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1444
    iput-object p1, p0, Lcom/android/settings_ex/DevelopmentSettings$2;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    iput-object p2, p0, Lcom/android/settings_ex/DevelopmentSettings$2;->val$edittext:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings_ex/DevelopmentSettings$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 1447
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings$2;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings_ex/DevelopmentSettings;->mPasswordDialogClicked:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->access$102(Lcom/android/settings_ex/DevelopmentSettings;Z)Z

    .line 1448
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings$2;->val$edittext:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/settings_ex/DevelopmentSettings;->getPassword()Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/DevelopmentSettings;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings$2;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings$2;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings$2;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0906e8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings$2;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings$2;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    # setter for: Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/settings_ex/DevelopmentSettings;->access$302(Lcom/android/settings_ex/DevelopmentSettings;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1458
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings$2;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    # getter for: Lcom/android/settings_ex/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings_ex/DevelopmentSettings;->access$300(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DevelopmentSettings$2;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1465
    :goto_0
    return-void

    .line 1460
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings$2;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    # getter for: Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/DevelopmentSettings;->access$400(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1461
    iget-object v0, p0, Lcom/android/settings_ex/DevelopmentSettings$2;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090854

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
