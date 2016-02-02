.class Lcom/android/settings_ex/deviceinfo/MSimStatus$1;
.super Landroid/content/BroadcastReceiver;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/MSimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/MSimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/MSimStatus;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus$1;->this$0:Lcom/android/settings_ex/deviceinfo/MSimStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 261
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus$1;->this$0:Lcom/android/settings_ex/deviceinfo/MSimStatus;

    # getter for: Lcom/android/settings_ex/deviceinfo/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->access$000(Lcom/android/settings_ex/deviceinfo/MSimStatus;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {p2}, Lcom/android/settings_ex/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus$1;->this$0:Lcom/android/settings_ex/deviceinfo/MSimStatus;

    # getter for: Lcom/android/settings_ex/deviceinfo/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->access$100(Lcom/android/settings_ex/deviceinfo/MSimStatus;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus$1;->this$0:Lcom/android/settings_ex/deviceinfo/MSimStatus;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/settings_ex/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    :cond_0
    return-void
.end method
