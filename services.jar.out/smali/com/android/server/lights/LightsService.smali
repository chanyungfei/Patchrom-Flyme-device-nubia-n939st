.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$LightImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final MSG_BBL_TIMEOUT:I = 0x1

.field static final TAG:Ljava/lang/String; = "LightsService"


# instance fields
.field private mButtonBrightness:I

.field private mButtonLightTimeout:I

.field private mH:Landroid/os/Handler;

.field private final mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

.field private mLightHandler:Landroid/os/Handler;

.field final mLights:[Lcom/android/server/lights/LightsService$LightImpl;

.field private mNativePointer:J

.field private final mService:Lcom/android/server/lights/LightsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 195
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 36
    new-array v1, v4, [Lcom/android/server/lights/LightsService$LightImpl;

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 44
    iput-object v5, p0, Lcom/android/server/lights/LightsService;->mLightHandler:Landroid/os/Handler;

    .line 138
    new-instance v1, Lcom/android/server/lights/LightsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    .line 228
    new-instance v1, Lcom/android/server/lights/LightsService$3;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$3;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    .line 249
    new-instance v1, Lcom/android/server/lights/LightsService$4;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$4;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    .line 197
    invoke-static {}, Lcom/android/server/lights/LightsService;->init_native()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/lights/LightsService;->mButtonLightTimeout:I

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/lights/LightsService;->mButtonBrightness:I

    .line 205
    new-instance v1, Lcom/android/server/lights/LightsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLightHandler:Landroid/os/Handler;

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v2, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-direct {v2, p0, v0, v5}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$1;)V

    aput-object v2, v1, v0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/lights/LightsService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLightHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/lights/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/lights/LightsService;->mButtonBrightness:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/lights/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/lights/LightsService;->mButtonLightTimeout:I

    return v0
.end method

.method private static native finalize_native(J)V
.end method

.method private static native init_native()J
.end method

.method static native setLight_native(JIIIIII)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->finalize_native(J)V

    .line 242
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 243
    return-void
.end method

.method public getLight(I)Lcom/android/server/lights/Light;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 224
    const-string v0, "hardware"

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 225
    const-class v0, Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 226
    return-void
.end method
