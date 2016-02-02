.class Lcom/android/settings/fingerprint/FingerPrintSettings$10;
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


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintSettings;)V
    .locals 0

    .prologue
    .line 960
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$10;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$10;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintSettings;->mFPRenameDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$1600(Lcom/android/settings/fingerprint/FingerPrintSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 963
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$10;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/fingerprint/FingerPrintSettings;->mFPRenameDlg:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintSettings;->access$1602(Lcom/android/settings/fingerprint/FingerPrintSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 964
    return-void
.end method
