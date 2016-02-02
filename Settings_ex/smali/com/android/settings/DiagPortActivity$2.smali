.class Lcom/android/settings_ex/DiagPortActivity$2;
.super Ljava/lang/Object;
.source "DiagPortActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DiagPortActivity;->showPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DiagPortActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DiagPortActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings_ex/DiagPortActivity$2;->this$0:Lcom/android/settings_ex/DiagPortActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/DiagPortActivity$2;->this$0:Lcom/android/settings_ex/DiagPortActivity;

    # setter for: Lcom/android/settings_ex/DiagPortActivity;->mIsCancleDilog:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/DiagPortActivity;->access$002(Lcom/android/settings_ex/DiagPortActivity;Z)Z

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/DiagPortActivity$2;->this$0:Lcom/android/settings_ex/DiagPortActivity;

    # getter for: Lcom/android/settings_ex/DiagPortActivity;->mDiagport:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/DiagPortActivity;->access$200(Lcom/android/settings_ex/DiagPortActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/DiagPortActivity$2;->this$0:Lcom/android/settings_ex/DiagPortActivity;

    # getter for: Lcom/android/settings_ex/DiagPortActivity;->mDiagport:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/DiagPortActivity;->access$200(Lcom/android/settings_ex/DiagPortActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DiagPortActivity$2;->this$0:Lcom/android/settings_ex/DiagPortActivity;

    # getter for: Lcom/android/settings_ex/DiagPortActivity;->mDiagport:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/DiagPortActivity;->access$200(Lcom/android/settings_ex/DiagPortActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
