.class Lcom/android/settings/SdupdateActivity$2;
.super Ljava/lang/Object;
.source "SdupdateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SdupdateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SdupdateActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SdupdateActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings/SdupdateActivity$2;->this$0:Lcom/android/settings/SdupdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/SdupdateActivity$2;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v1, p0, Lcom/android/settings/SdupdateActivity$2;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v1, v1, Lcom/android/settings/SdupdateActivity;->mVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/SdupdateActivity$2;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v2, v2, Lcom/android/settings/SdupdateActivity;->filepath:Ljava/io/File;

    # invokes: Lcom/android/settings/SdupdateActivity;->searchFile(Ljava/lang/String;Ljava/io/File;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/SdupdateActivity;->access$100(Lcom/android/settings/SdupdateActivity;Ljava/lang/String;Ljava/io/File;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/SdupdateActivity$2;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v1, p0, Lcom/android/settings/SdupdateActivity$2;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v1, v1, Lcom/android/settings/SdupdateActivity;->mUnifyVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/SdupdateActivity$2;->this$0:Lcom/android/settings/SdupdateActivity;

    iget-object v2, v2, Lcom/android/settings/SdupdateActivity;->filepath:Ljava/io/File;

    # invokes: Lcom/android/settings/SdupdateActivity;->searchFile(Ljava/lang/String;Ljava/io/File;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/SdupdateActivity;->access$100(Lcom/android/settings/SdupdateActivity;Ljava/lang/String;Ljava/io/File;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/SdupdateActivity$2;->this$0:Lcom/android/settings/SdupdateActivity;

    # getter for: Lcom/android/settings/SdupdateActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/SdupdateActivity;->access$200(Lcom/android/settings/SdupdateActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 156
    return-void
.end method
