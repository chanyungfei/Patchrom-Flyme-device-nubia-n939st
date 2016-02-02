.class Lcom/android/settings/profiles/ProfilesSettings$2;
.super Ljava/lang/Object;
.source "ProfilesSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/ProfilesSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/ProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/ProfilesSettings;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings/profiles/ProfilesSettings$2;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/profiles/ProfilesSettings$2;->this$0:Lcom/android/settings/profiles/ProfilesSettings;

    # invokes: Lcom/android/settings/profiles/ProfilesSettings;->addProfile()V
    invoke-static {v0}, Lcom/android/settings/profiles/ProfilesSettings;->access$100(Lcom/android/settings/profiles/ProfilesSettings;)V

    .line 110
    return-void
.end method
