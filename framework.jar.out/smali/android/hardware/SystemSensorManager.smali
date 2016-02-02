.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$TriggerEventQueue;,
        Landroid/hardware/SystemSensorManager$SensorEventQueue;,
        Landroid/hardware/SystemSensorManager$BaseEventQueue;
    }
.end annotation


# static fields
.field private static LOCAL_SMARTSHOW_SENSOR_CONFIG:I

.field private static final sFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private static sSensorModuleInitialized:Z

.field private static final sSensorModuleLock:Ljava/lang/Object;


# instance fields
.field private final mMainLooper:Landroid/os/Looper;

.field private mMode:I

.field private mReset:Z

.field private final mSensorListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorEventListener;",
            "Landroid/hardware/SystemSensorManager$SensorEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetSdkLevel:I

.field private final mTriggerListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/TriggerEventListener;",
            "Landroid/hardware/SystemSensorManager$TriggerEventQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    sput-boolean v1, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sSensorModuleLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    .line 504
    sput v1, Landroid/hardware/SystemSensorManager;->LOCAL_SMARTSHOW_SENSOR_CONFIG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 56
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 58
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 66
    const/4 v3, -0x1

    iput v3, p0, Landroid/hardware/SystemSensorManager;->mMode:I

    .line 67
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/hardware/SystemSensorManager;->mReset:Z

    .line 72
    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v3, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    .line 74
    sget-object v4, Landroid/hardware/SystemSensorManager;->sSensorModuleLock:Ljava/lang/Object;

    monitor-enter v4

    .line 75
    :try_start_0
    sget-boolean v3, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    if-nez v3, :cond_2

    .line 76
    const/4 v3, 0x1

    sput-boolean v3, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 78
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 81
    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 82
    .local v0, "fullList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .line 84
    .local v1, "i":I
    :cond_0
    new-instance v2, Landroid/hardware/Sensor;

    invoke-direct {v2}, Landroid/hardware/Sensor;-><init>()V

    .line 85
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-static {v2, v1}, Landroid/hardware/SystemSensorManager;->nativeGetNextSensor(Landroid/hardware/Sensor;I)I

    move-result v1

    .line 86
    if-ltz v1, :cond_1

    .line 89
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v3, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 92
    :cond_1
    if-gtz v1, :cond_0

    .line 94
    .end local v0    # "fullList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v1    # "i":I
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_2
    monitor-exit v4

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method static synthetic access$000()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/SystemSensorManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;

    .prologue
    .line 46
    iget v0, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    return v0
.end method

.method static ft0Enabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 507
    sget-boolean v1, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-eqz v1, :cond_1

    .line 510
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Landroid/hardware/SystemSensorManager;->LOCAL_SMARTSHOW_SENSOR_CONFIG:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static ft1Enabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 513
    sget-boolean v1, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-eqz v1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Landroid/hardware/SystemSensorManager;->LOCAL_SMARTSHOW_SENSOR_CONFIG:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeGetNextSensor(Landroid/hardware/Sensor;I)I
.end method

.method private static native nativeGetSmartShowSensorConfig()I
.end method

.method private static native nativeSetPreProcessingAdjustment(II)I
.end method

.method private static native nativeUpdateRoute(IIII)I
.end method


# virtual methods
.method protected cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "disable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 205
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 223
    :goto_0
    return v1

    .line 208
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 209
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 210
    .local v0, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-eqz v0, :cond_3

    .line 212
    if-nez p2, :cond_2

    .line 213
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeAllSensors()Z

    move-result v1

    .line 217
    .local v1, "result":Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->hasSensors()Z

    move-result v2

    if-nez v2, :cond_1

    .line 218
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 221
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 224
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 215
    .restart local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_1

    .line 223
    .end local v1    # "result":Z
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected flushImpl(Landroid/hardware/SensorEventListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    const/4 v1, 0x0

    .line 228
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 231
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 232
    .local v0, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v0, :cond_1

    .line 233
    monitor-exit v2

    .line 235
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->flush()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 237
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .locals 5
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "delayUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "maxBatchReportLatencyUs"    # I
    .param p6, "reservedFlags"    # I

    .prologue
    const/4 v2, 0x0

    .line 109
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 110
    :cond_0
    const-string v3, "SensorManager"

    const-string/jumbo v4, "sensor or listener is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return v2

    .line 114
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 115
    const-string v3, "SensorManager"

    const-string v4, "Trigger Sensors should use the requestTriggerSensor."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_2
    if-ltz p5, :cond_3

    if-gez p3, :cond_4

    .line 119
    :cond_3
    const-string v3, "SensorManager"

    const-string/jumbo v4, "maxBatchReportLatencyUs and delayUs should be non-negative"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_4
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 128
    :try_start_0
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 129
    .local v1, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v1, :cond_8

    .line 130
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 131
    .local v0, "looper":Landroid/os/Looper;
    :goto_1
    new-instance v1, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-direct {v1, p1, v0, p0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;-><init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;)V

    .line 132
    .restart local v1    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-virtual {v1, p2, p3, p5, p6}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;III)Z

    move-result v4

    if-nez v4, :cond_6

    .line 133
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 134
    monitor-exit v3

    goto :goto_0

    .line 150
    .end local v0    # "looper":Landroid/os/Looper;
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 130
    .restart local v1    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :cond_5
    :try_start_1
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    goto :goto_1

    .line 136
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_6
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget v2, p0, Landroid/hardware/SystemSensorManager;->mMode:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    .line 140
    iget v2, p0, Landroid/hardware/SystemSensorManager;->mMode:I

    iget-boolean v4, p0, Landroid/hardware/SystemSensorManager;->mReset:Z

    invoke-virtual {v1, v2, v4}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->setPreProcessingMode(IZ)V

    .line 143
    :cond_7
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 146
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_8
    iget v2, p0, Landroid/hardware/SystemSensorManager;->mMode:I

    iget-boolean v4, p0, Landroid/hardware/SystemSensorManager;->mReset:Z

    invoke-virtual {v1, v2, v4}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->setPreProcessingMode(IZ)V

    .line 148
    invoke-virtual {v1, p2, p3, p5, p6}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;III)Z

    move-result v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    const/4 v1, 0x0

    .line 181
    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sensor cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_0
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 196
    :goto_0
    return v1

    .line 185
    :cond_1
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 186
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 187
    .local v0, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-nez v0, :cond_3

    .line 188
    new-instance v0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p1, v3, p0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;-><init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;)V

    .line 189
    .restart local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, p2, v3, v4, v5}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 190
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 191
    monitor-exit v2

    goto :goto_0

    .line 198
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 193
    .restart local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 196
    :cond_3
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, p2, v1, v3, v4}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;III)Z

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPreProcessingAdjustment(II)I
    .locals 1
    .param p1, "pid"    # I
    .param p2, "adjustment"    # I

    .prologue
    .line 534
    invoke-static {}, Landroid/hardware/SystemSensorManager;->ft0Enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    const/4 v0, 0x0

    .line 538
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Landroid/hardware/SystemSensorManager;->nativeSetPreProcessingAdjustment(II)I

    move-result v0

    goto :goto_0
.end method

.method public setPreProcessingMode(IZ)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "reset"    # Z

    .prologue
    .line 542
    invoke-static {}, Landroid/hardware/SystemSensorManager;->ft0Enabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iput p1, p0, Landroid/hardware/SystemSensorManager;->mMode:I

    .line 547
    iput-boolean p2, p0, Landroid/hardware/SystemSensorManager;->mReset:Z

    .line 549
    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v5

    .line 551
    :try_start_0
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 552
    .local v1, "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 553
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 554
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 555
    .local v3, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-virtual {v3, p1, p2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->setPreProcessingMode(IZ)V

    goto :goto_1

    .line 557
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local v3    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "iter":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    invoke-virtual {p0}, Landroid/hardware/SystemSensorManager;->peekLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v2

    .line 559
    .local v2, "legacy":Landroid/hardware/LegacySensorManager;
    if-eqz v2, :cond_0

    .line 560
    invoke-static {p1, p2}, Landroid/hardware/LegacySensorManager;->setPreProcessingMode(IZ)V

    goto :goto_0
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 157
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 176
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 162
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 163
    .local v0, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-eqz v0, :cond_1

    .line 165
    if-nez p2, :cond_2

    .line 166
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeAllSensors()Z

    move-result v1

    .line 170
    .local v1, "result":Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->hasSensors()Z

    move-result v2

    if-nez v2, :cond_1

    .line 171
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 175
    .end local v1    # "result":Z
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 168
    .restart local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, p2, v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_1
.end method

.method public updateRoute(IIII)I
    .locals 1
    .param p1, "command"    # I
    .param p2, "source"    # I
    .param p3, "pid"    # I
    .param p4, "flags"    # I

    .prologue
    .line 525
    invoke-static {}, Landroid/hardware/SystemSensorManager;->ft1Enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    const/4 v0, 0x0

    .line 528
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroid/hardware/SystemSensorManager;->nativeUpdateRoute(IIII)I

    move-result v0

    goto :goto_0
.end method
