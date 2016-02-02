.class Lcom/android/settings_ex/fingerprint/FingerPrintSettings$7;
.super Ljava/lang/Object;
.source "FingerPrintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->showFPMangeDlg(Ljava/lang/String;Z)V
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
    .line 859
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$7;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$7;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFPMgrDlg:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->access$1402(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 862
    return-void
.end method
