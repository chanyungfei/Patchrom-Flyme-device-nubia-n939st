.class Lcom/android/settings_ex/fingerprint/FingerPrintSettings$6;
.super Ljava/lang/Object;
.source "FingerPrintSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$6;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    iput-object p2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$6;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 833
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->logw(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->access$1300(Ljava/lang/String;)V

    .line 854
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$6;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFPMgrDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->access$1400(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 855
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$6;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mFPMgrDlg:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->access$1402(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 856
    return-void

    .line 835
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$6;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$6;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mHMFPKeyName:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->access$900(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$6;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->showFPShowAllAppActivity(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->access$1000(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Ljava/lang/String;)V

    goto :goto_0

    .line 838
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$6;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$6;->val$key:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$6;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->mHMFPKeyName:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->access$900(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$6;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->showFPRenameDlg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->access$1100(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 842
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$6;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintSettings;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintSettings$6;->val$key:Ljava/lang/String;

    # invokes: Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->deleteFPByKey(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerPrintSettings;->access$1200(Lcom/android/settings_ex/fingerprint/FingerPrintSettings;Ljava/lang/String;)V

    goto :goto_0

    .line 833
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
