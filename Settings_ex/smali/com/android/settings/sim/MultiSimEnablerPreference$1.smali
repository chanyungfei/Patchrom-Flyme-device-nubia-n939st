.class Lcom/android/settings_ex/sim/MultiSimEnablerPreference$1;
.super Ljava/lang/Object;
.source "MultiSimEnablerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/sim/MultiSimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 443
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    # invokes: Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->sendSubConfigurationRequest()V
    invoke-static {v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->access$000(Lcom/android/settings_ex/sim/MultiSimEnablerPreference;)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->update()V

    goto :goto_0

    .line 447
    :cond_2
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/settings_ex/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings_ex/sim/MultiSimEnablerPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/sim/MultiSimEnablerPreference;->update()V

    goto :goto_0
.end method
