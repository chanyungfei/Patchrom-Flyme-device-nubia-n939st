.class Legistec/fingerauth/api/SettingLib$4;
.super Ljava/lang/Object;
.source "SettingLib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Legistec/fingerauth/api/SettingLib;->getAlertDialog(Ljava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Legistec/fingerauth/api/SettingLib;


# direct methods
.method constructor <init>(Legistec/fingerauth/api/SettingLib;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Legistec/fingerauth/api/SettingLib$4;->this$0:Legistec/fingerauth/api/SettingLib;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 199
    return-void
.end method
