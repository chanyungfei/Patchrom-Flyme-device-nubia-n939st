.class Lcom/android/settings_ex/sim/MultiSimEnablerPreference$7;
.super Ljava/lang/Object;
.source "MultiSimEnablerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->createEditDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

.field final synthetic val$dialogLayout:Landroid/view/View;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;Landroid/view/View;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$7;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    iput-object p2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$7;->val$dialogLayout:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$7;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const-wide/16 v6, 0x2

    .line 596
    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$7;->val$dialogLayout:Landroid/view/View;

    const v3, 0x7f0f0131

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 597
    .local v1, "nameText":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$7;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->access$300(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionInfo;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 599
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "defultLanguage":Ljava/lang/String;
    const-string v2, "zh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$7;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->access$1300(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$7;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$7;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v4}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->access$300(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->getOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$7;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v4}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->access$300(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    .line 608
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$7;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->update()V

    .line 609
    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$7;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 610
    return-void

    .line 604
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$7;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->access$1300(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$7;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$7;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v4}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->access$300(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->getOperatorName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$7;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v4}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->access$300(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    goto :goto_0
.end method
