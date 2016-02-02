.class Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment$1;
.super Ljava/lang/Object;
.source "BluetoothTriggerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;

.field final synthetic val$triggerId:Ljava/lang/String;

.field final synthetic val$triggerName:Ljava/lang/String;

.field final synthetic val$triggerType:I

.field final synthetic val$valueInts:[I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;ILjava/lang/String;[ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment$1;->this$0:Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;

    iput p2, p0, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment$1;->val$triggerType:I

    iput-object p3, p0, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment$1;->val$triggerId:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment$1;->val$valueInts:[I

    iput-object p5, p0, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment$1;->val$triggerName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment$1;->this$0:Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;

    iget-object v0, v0, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;->mProfile:Landroid/app/Profile;

    iget v1, p0, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment$1;->val$triggerType:I

    iget-object v2, p0, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment$1;->val$triggerId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment$1;->val$valueInts:[I

    aget v3, v3, p2

    iget-object v4, p0, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment$1;->val$triggerName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Profile;->setTrigger(ILjava/lang/String;ILjava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment$1;->this$0:Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;

    iget-object v0, v0, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment$1;->this$0:Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;

    iget-object v1, v1, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->updateProfile(Landroid/app/Profile;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment$1;->this$0:Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;

    # invokes: Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;->reloadTriggerListItems()V
    invoke-static {v0}, Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;->access$100(Lcom/android/settings_ex/profiles/triggers/BluetoothTriggerFragment;)V

    .line 152
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 153
    return-void
.end method
