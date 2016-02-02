.class Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;)V
    .locals 0

    .prologue
    .line 886
    iput-object p1, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 18
    .param p1, "stats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z

    .prologue
    .line 888
    const/4 v10, 0x0

    .line 889
    .local v10, "sizeChanged":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v12, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 891
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 892
    .local v2, "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    if-eqz v2, :cond_2

    .line 893
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 894
    const/4 v11, 0x0

    :try_start_1
    iput-boolean v11, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 895
    const-wide/16 v14, 0x0

    iput-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 896
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->externalObbSize:J

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    .line 898
    .local v4, "externalCodeSize":J
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .line 900
    .local v6, "externalDataSize":J
    add-long v14, v4, v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    move-object/from16 v0, p1

    # invokes: Lcom/android/settings_ex/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    invoke-static {v11, v0}, Lcom/android/settings_ex/applications/ApplicationsState;->access$100(Lcom/android/settings_ex/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v16

    add-long v8, v14, v16

    .line 902
    .local v8, "newSize":J
    iget-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v11, v14, v8

    if-nez v11, :cond_0

    iget-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->cacheSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    move-wide/from16 v16, v0

    cmp-long v11, v14, v16

    if-nez v11, :cond_0

    iget-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->codeSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->codeSize:J

    move-wide/from16 v16, v0

    cmp-long v11, v14, v16

    if-nez v11, :cond_0

    iget-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->dataSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->dataSize:J

    move-wide/from16 v16, v0

    cmp-long v11, v14, v16

    if-nez v11, :cond_0

    iget-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v11, v14, v4

    if-nez v11, :cond_0

    iget-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v11, v14, v6

    if-nez v11, :cond_0

    iget-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    move-wide/from16 v16, v0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_1

    .line 909
    :cond_0
    iput-wide v8, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    .line 910
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->cacheSize:J

    .line 911
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 912
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 913
    iput-wide v4, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    .line 914
    iput-wide v6, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalDataSize:J

    .line 915
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    .line 916
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    # invokes: Lcom/android/settings_ex/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;
    invoke-static {v11, v14, v15}, Lcom/android/settings_ex/applications/ApplicationsState;->access$200(Lcom/android/settings_ex/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    .line 917
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    move-object/from16 v0, p1

    # invokes: Lcom/android/settings_ex/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    invoke-static {v11, v0}, Lcom/android/settings_ex/applications/ApplicationsState;->access$100(Lcom/android/settings_ex/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->internalSize:J

    .line 918
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->internalSize:J

    # invokes: Lcom/android/settings_ex/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;
    invoke-static {v11, v14, v15}, Lcom/android/settings_ex/applications/ApplicationsState;->access$200(Lcom/android/settings_ex/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    .line 919
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    move-object/from16 v0, p1

    # invokes: Lcom/android/settings_ex/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    invoke-static {v11, v0}, Lcom/android/settings_ex/applications/ApplicationsState;->access$300(Lcom/android/settings_ex/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalSize:J

    .line 920
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-wide v14, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalSize:J

    # invokes: Lcom/android/settings_ex/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;
    invoke-static {v11, v14, v15}, Lcom/android/settings_ex/applications/ApplicationsState;->access$200(Lcom/android/settings_ex/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;

    .line 923
    const/4 v10, 0x1

    .line 925
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 926
    if-eqz v10, :cond_2

    .line 927
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v13, 0x4

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 929
    .local v3, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    invoke-virtual {v11, v3}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 932
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "externalCodeSize":J
    .end local v6    # "externalDataSize":J
    .end local v8    # "newSize":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 934
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    const/4 v13, 0x0

    iput-object v13, v11, Lcom/android/settings_ex/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 935
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 938
    :cond_4
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 939
    return-void

    .line 925
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v11

    .line 938
    .end local v2    # "entry":Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11
.end method
