.class public Lcom/android/server/BreathLedsService;
.super Lcom/android/server/SystemService;
.source "BreathLedsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BreathLedsService$1;,
        Lcom/android/server/BreathLedsService$BinderService;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_LEVEL:[I


# instance fields
.field private final BREATH_BLUE_COLOR:Ljava/lang/String;

.field private final BREATH_RED_COLOR:Ljava/lang/String;

.field private final GREEN_COLOR:Ljava/lang/String;

.field private final RED_COLOR:Ljava/lang/String;

.field private brightness:[I

.field public defaultBrihtness:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/BreathLedsService;->BRIGHTNESS_LEVEL:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x6
        0xa
        0xd
        0x12
        0x16
        0x1c
        0x21
        0x27
        0x2e
        0x35
        0x3d
        0x45
        0x4e
        0x56
        0x60
        0x6a
        0x74
        0x7e
        0x8a
        0x95
        0xa1
        0xad
        0xba
        0xc7
        0xd4
        0xe2
        0xf0
        0xff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, "Red"

    iput-object v0, p0, Lcom/android/server/BreathLedsService;->RED_COLOR:Ljava/lang/String;

    .line 42
    const-string v0, "Green"

    iput-object v0, p0, Lcom/android/server/BreathLedsService;->GREEN_COLOR:Ljava/lang/String;

    .line 44
    const-string v0, "BreathRed"

    iput-object v0, p0, Lcom/android/server/BreathLedsService;->BREATH_RED_COLOR:Ljava/lang/String;

    .line 45
    const-string v0, "BreathBlue"

    iput-object v0, p0, Lcom/android/server/BreathLedsService;->BREATH_BLUE_COLOR:Ljava/lang/String;

    .line 47
    const/16 v0, 0x55

    iput v0, p0, Lcom/android/server/BreathLedsService;->defaultBrihtness:I

    .line 48
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/BreathLedsService;->brightness:[I

    .line 52
    invoke-direct {p0}, Lcom/android/server/BreathLedsService;->init_native()V

    .line 53
    return-void

    .line 48
    nop

    :array_0
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/server/BreathLedsService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BreathLedsService;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/BreathLedsService;->brightness:[I

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/server/BreathLedsService;->BRIGHTNESS_LEVEL:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/BreathLedsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BreathLedsService;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/BreathLedsService;->set_brightness_native(I)V

    return-void
.end method

.method private native init_native()V
.end method

.method private native set_brightness_native(I)V
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 61
    const-string v0, "breath_leds"

    new-instance v1, Lcom/android/server/BreathLedsService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/BreathLedsService$BinderService;-><init>(Lcom/android/server/BreathLedsService;Lcom/android/server/BreathLedsService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/BreathLedsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 62
    return-void
.end method
