.class Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$8;
.super Ljava/lang/Object;
.source "FingerprintEnrollFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->showFPExistDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$8;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment$8;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->mLib:Legistec/fingerauth/api/SettingLib;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;->access$1300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollFragment;)Legistec/fingerauth/api/SettingLib;

    move-result-object v0

    invoke-virtual {v0}, Legistec/fingerauth/api/SettingLib;->identify()Z

    .line 763
    return-void
.end method
