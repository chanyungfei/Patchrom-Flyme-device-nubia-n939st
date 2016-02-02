.class Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$2;
.super Ljava/lang/Object;
.source "FingerPrintAssociatedAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->showFPReNameDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mRenameDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->access$100(Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 281
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mRenameDlg:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->access$102(Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 282
    return-void
.end method
