.class Lcom/android/settings_ex/SDcardUpgrade$1;
.super Landroid/content/BroadcastReceiver;
.source "SDcardUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SDcardUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SDcardUpgrade;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SDcardUpgrade;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/settings_ex/SDcardUpgrade$1;->this$0:Lcom/android/settings_ex/SDcardUpgrade;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 327
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/android/settings_ex/SDcardUpgrade$1;->this$0:Lcom/android/settings_ex/SDcardUpgrade;

    const-string v2, "voltage"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/settings_ex/SDcardUpgrade;->mBatterVoltage:I
    invoke-static {v1, v2}, Lcom/android/settings_ex/SDcardUpgrade;->access$002(Lcom/android/settings_ex/SDcardUpgrade;I)I

    .line 330
    iget-object v1, p0, Lcom/android/settings_ex/SDcardUpgrade$1;->this$0:Lcom/android/settings_ex/SDcardUpgrade;

    const-string v2, "level"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/settings_ex/SDcardUpgrade;->mBatterLevel:I
    invoke-static {v1, v2}, Lcom/android/settings_ex/SDcardUpgrade;->access$102(Lcom/android/settings_ex/SDcardUpgrade;I)I

    .line 331
    iget-object v1, p0, Lcom/android/settings_ex/SDcardUpgrade$1;->this$0:Lcom/android/settings_ex/SDcardUpgrade;

    const-string v2, "scale"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/settings_ex/SDcardUpgrade;->mBatterScale:I
    invoke-static {v1, v2}, Lcom/android/settings_ex/SDcardUpgrade;->access$202(Lcom/android/settings_ex/SDcardUpgrade;I)I

    .line 334
    :cond_0
    return-void
.end method
