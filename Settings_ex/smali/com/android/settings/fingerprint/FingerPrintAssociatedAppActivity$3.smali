.class Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$3;
.super Ljava/lang/Object;
.source "FingerPrintAssociatedAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$3;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->mRenameDlg:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$102(Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 288
    return-void
.end method
