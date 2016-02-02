.class Lcom/android/settings_ex/profiles/SetupActionsFragment$10;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/profiles/SetupActionsFragment;->requestVolumeDialog(ILandroid/app/StreamSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profiles/SetupActionsFragment;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;

.field final synthetic val$streamSettings:Landroid/app/StreamSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;Landroid/app/StreamSettings;Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$10;->this$0:Lcom/android/settings_ex/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$10;->val$streamSettings:Landroid/app/StreamSettings;

    iput-object p3, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$10;->val$seekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$10;->val$streamSettings:Landroid/app/StreamSettings;

    invoke-virtual {v0, p2}, Landroid/app/StreamSettings;->setOverride(Z)V

    .line 675
    iget-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$10;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 677
    iget-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$10;->this$0:Lcom/android/settings_ex/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    iget-object v1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$10;->val$streamSettings:Landroid/app/StreamSettings;

    invoke-virtual {v0, v1}, Landroid/app/Profile;->setStreamSettings(Landroid/app/StreamSettings;)V

    .line 678
    iget-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$10;->this$0:Lcom/android/settings_ex/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/settings_ex/profiles/SetupActionsFragment;->mAdapter:Lcom/android/settings_ex/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 679
    iget-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$10;->this$0:Lcom/android/settings_ex/profiles/SetupActionsFragment;

    # invokes: Lcom/android/settings_ex/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->access$500(Lcom/android/settings_ex/profiles/SetupActionsFragment;)V

    .line 680
    return-void
.end method
