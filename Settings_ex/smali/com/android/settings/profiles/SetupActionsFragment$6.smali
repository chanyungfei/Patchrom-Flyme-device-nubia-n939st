.class Lcom/android/settings_ex/profiles/SetupActionsFragment$6;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/profiles/SetupActionsFragment;->requestAirplaneModeDialog(Landroid/app/AirplaneModeSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profiles/SetupActionsFragment;

.field final synthetic val$setting:Landroid/app/AirplaneModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;Landroid/app/AirplaneModeSettings;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$6;->this$0:Lcom/android/settings_ex/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$6;->val$setting:Landroid/app/AirplaneModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 488
    packed-switch p2, :pswitch_data_0

    .line 501
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$6;->this$0:Lcom/android/settings_ex/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$6;->val$setting:Landroid/app/AirplaneModeSettings;

    invoke-virtual {v0, v1}, Landroid/app/Profile;->setAirplaneMode(Landroid/app/AirplaneModeSettings;)V

    .line 502
    iget-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$6;->this$0:Lcom/android/settings_ex/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mAdapter:Lcom/android/settings_ex/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 503
    iget-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$6;->this$0:Lcom/android/settings_ex/profiles/SetupActionsFragment;

    # invokes: Lcom/android/settings_ex/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->access$500(Lcom/android/settings_ex/profiles/SetupActionsFragment;)V

    .line 504
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 505
    return-void

    .line 490
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$6;->val$setting:Landroid/app/AirplaneModeSettings;

    invoke-virtual {v0, v2}, Landroid/app/AirplaneModeSettings;->setOverride(Z)V

    goto :goto_0

    .line 493
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$6;->val$setting:Landroid/app/AirplaneModeSettings;

    invoke-virtual {v0, v1}, Landroid/app/AirplaneModeSettings;->setOverride(Z)V

    .line 494
    iget-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$6;->val$setting:Landroid/app/AirplaneModeSettings;

    invoke-virtual {v0, v2}, Landroid/app/AirplaneModeSettings;->setValue(I)V

    goto :goto_0

    .line 497
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$6;->val$setting:Landroid/app/AirplaneModeSettings;

    invoke-virtual {v0, v1}, Landroid/app/AirplaneModeSettings;->setOverride(Z)V

    .line 498
    iget-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$6;->val$setting:Landroid/app/AirplaneModeSettings;

    invoke-virtual {v0, v1}, Landroid/app/AirplaneModeSettings;->setValue(I)V

    goto :goto_0

    .line 488
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
