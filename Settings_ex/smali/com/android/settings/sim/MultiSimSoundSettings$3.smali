.class Lcom/android/settings_ex/sim/MultiSimSoundSettings$3;
.super Landroid/os/Handler;
.source "MultiSimSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/sim/MultiSimSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/sim/MultiSimSoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/MultiSimSoundSettings;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/settings_ex/sim/MultiSimSoundSettings$3;->this$0:Lcom/android/settings_ex/sim/MultiSimSoundSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 174
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 175
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 176
    .local v0, "summary":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimSoundSettings$3;->this$0:Lcom/android/settings_ex/sim/MultiSimSoundSettings;

    # getter for: Lcom/android/settings_ex/sim/MultiSimSoundSettings;->mRingtonePref:Lcom/android/settings_ex/DefaultRingtonePreference;
    invoke-static {v1}, Lcom/android/settings_ex/sim/MultiSimSoundSettings;->access$000(Lcom/android/settings_ex/sim/MultiSimSoundSettings;)Lcom/android/settings_ex/DefaultRingtonePreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/settings_ex/sim/MultiSimSoundSettings$3;->this$0:Lcom/android/settings_ex/sim/MultiSimSoundSettings;

    # getter for: Lcom/android/settings_ex/sim/MultiSimSoundSettings;->mRingtonePref:Lcom/android/settings_ex/DefaultRingtonePreference;
    invoke-static {v1}, Lcom/android/settings_ex/sim/MultiSimSoundSettings;->access$000(Lcom/android/settings_ex/sim/MultiSimSoundSettings;)Lcom/android/settings_ex/DefaultRingtonePreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/DefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    .end local v0    # "summary":Ljava/lang/String;
    :cond_0
    return-void
.end method
