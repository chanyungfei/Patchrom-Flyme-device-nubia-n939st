.class Lcom/android/settings/Lte4GEnabler$4;
.super Ljava/lang/Object;
.source "Lte4GEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Lte4GEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Lte4GEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/Lte4GEnabler;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/settings/Lte4GEnabler$4;->this$0:Lcom/android/settings/Lte4GEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings/Lte4GEnabler$4;->this$0:Lcom/android/settings/Lte4GEnabler;

    # getter for: Lcom/android/settings/Lte4GEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/Lte4GEnabler;->access$300(Lcom/android/settings/Lte4GEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/Lte4GEnabler$4;->this$0:Lcom/android/settings/Lte4GEnabler;

    # invokes: Lcom/android/settings/Lte4GEnabler;->promptUser()V
    invoke-static {v0}, Lcom/android/settings/Lte4GEnabler;->access$400(Lcom/android/settings/Lte4GEnabler;)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Lte4GEnabler$4;->this$0:Lcom/android/settings/Lte4GEnabler;

    # invokes: Lcom/android/settings/Lte4GEnabler;->setPrefNetwork()V
    invoke-static {v0}, Lcom/android/settings/Lte4GEnabler;->access$100(Lcom/android/settings/Lte4GEnabler;)V

    goto :goto_0
.end method
