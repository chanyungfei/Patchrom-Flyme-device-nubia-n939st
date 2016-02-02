.class Lcom/android/settings/DiagPortActivity$1;
.super Ljava/lang/Object;
.source "DiagPortActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DiagPortActivity;->showPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DiagPortActivity;

.field final synthetic val$edittext:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/DiagPortActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/DiagPortActivity$1;->this$0:Lcom/android/settings/DiagPortActivity;

    iput-object p2, p0, Lcom/android/settings/DiagPortActivity$1;->val$edittext:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v4, 0x7f090854

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 96
    iget-object v0, p0, Lcom/android/settings/DiagPortActivity$1;->this$0:Lcom/android/settings/DiagPortActivity;

    # setter for: Lcom/android/settings/DiagPortActivity;->mIsCancleDilog:Z
    invoke-static {v0, v2}, Lcom/android/settings/DiagPortActivity;->access$002(Lcom/android/settings/DiagPortActivity;Z)Z

    .line 97
    iget-object v0, p0, Lcom/android/settings/DiagPortActivity$1;->val$edittext:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DiagPortActivity$1;->this$0:Lcom/android/settings/DiagPortActivity;

    # invokes: Lcom/android/settings/DiagPortActivity;->getPassword()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/DiagPortActivity;->access$100(Lcom/android/settings/DiagPortActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/settings/DiagPortActivity$1;->this$0:Lcom/android/settings/DiagPortActivity;

    # getter for: Lcom/android/settings/DiagPortActivity;->mDiagport:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/DiagPortActivity;->access$200(Lcom/android/settings/DiagPortActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings/DiagPortActivity$1;->this$0:Lcom/android/settings/DiagPortActivity;

    # getter for: Lcom/android/settings/DiagPortActivity;->mDiagport:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/DiagPortActivity;->access$200(Lcom/android/settings/DiagPortActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/DiagPortActivity$1;->this$0:Lcom/android/settings/DiagPortActivity;

    # getter for: Lcom/android/settings/DiagPortActivity;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/settings/DiagPortActivity;->access$300(Lcom/android/settings/DiagPortActivity;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "diag,serial_smd,rmnet_bam,adb"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 119
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DiagPortActivity$1;->this$0:Lcom/android/settings/DiagPortActivity;

    # getter for: Lcom/android/settings/DiagPortActivity;->mDiagport:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/DiagPortActivity;->access$200(Lcom/android/settings/DiagPortActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/DiagPortActivity$1;->this$0:Lcom/android/settings/DiagPortActivity;

    # getter for: Lcom/android/settings/DiagPortActivity;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/settings/DiagPortActivity;->access$300(Lcom/android/settings/DiagPortActivity;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "ncm,adb"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DiagPortActivity$1;->this$0:Lcom/android/settings/DiagPortActivity;

    # getter for: Lcom/android/settings/DiagPortActivity;->mDiagport:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/DiagPortActivity;->access$200(Lcom/android/settings/DiagPortActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/android/settings/DiagPortActivity$1;->this$0:Lcom/android/settings/DiagPortActivity;

    # getter for: Lcom/android/settings/DiagPortActivity;->mDiagport:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/DiagPortActivity;->access$200(Lcom/android/settings/DiagPortActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/DiagPortActivity$1;->this$0:Lcom/android/settings/DiagPortActivity;

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DiagPortActivity$1;->this$0:Lcom/android/settings/DiagPortActivity;

    # getter for: Lcom/android/settings/DiagPortActivity;->mDiagport:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/DiagPortActivity;->access$200(Lcom/android/settings/DiagPortActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/DiagPortActivity$1;->this$0:Lcom/android/settings/DiagPortActivity;

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
