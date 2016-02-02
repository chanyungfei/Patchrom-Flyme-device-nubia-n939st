.class Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment$2;
.super Ljava/lang/Object;
.source "BluetoothTriggerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment$2;->this$0:Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v0, "bluetoothSettings":Landroid/content/Intent;
    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget-object v1, p0, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment$2;->this$0:Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;->startActivity(Landroid/content/Intent;)V

    .line 174
    return-void
.end method
