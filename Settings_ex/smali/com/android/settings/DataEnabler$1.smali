.class Lcom/android/settings_ex/DataEnabler$1;
.super Ljava/lang/Object;
.source "DataEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataEnabler;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings_ex/DataEnabler$1;->this$0:Lcom/android/settings_ex/DataEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/DataEnabler$1;->this$0:Lcom/android/settings_ex/DataEnabler;

    # getter for: Lcom/android/settings_ex/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings_ex/DataEnabler;->access$100(Lcom/android/settings_ex/DataEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/DataEnabler$1;->this$0:Lcom/android/settings_ex/DataEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/DataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings_ex/DataEnabler$1;->this$0:Lcom/android/settings_ex/DataEnabler;

    # getter for: Lcom/android/settings_ex/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings_ex/DataEnabler;->access$100(Lcom/android/settings_ex/DataEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/DataEnabler$1;->this$0:Lcom/android/settings_ex/DataEnabler;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings_ex/DataEnabler;->setDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataEnabler;->access$200(Lcom/android/settings_ex/DataEnabler;Z)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DataEnabler$1;->this$0:Lcom/android/settings_ex/DataEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/DataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/DataEnabler$1;->this$0:Lcom/android/settings_ex/DataEnabler;

    # invokes: Lcom/android/settings_ex/DataEnabler;->setDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataEnabler;->access$200(Lcom/android/settings_ex/DataEnabler;Z)V

    goto :goto_0
.end method
