.class final Lcom/android/server/BluetoothManagerService$Led;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private final BluetoothLight:Lcom/android/server/lights/Light;

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .prologue
    .line 898
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$Led;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    const/4 v0, 0x6

    invoke-virtual {p3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$Led;->BluetoothLight:Lcom/android/server/lights/Light;

    .line 900
    return-void
.end method


# virtual methods
.method public updateLights(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .prologue
    .line 903
    if-eqz p1, :cond_0

    .line 904
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$Led;->BluetoothLight:Lcom/android/server/lights/Light;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 907
    :goto_0
    return-void

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$Led;->BluetoothLight:Lcom/android/server/lights/Light;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    goto :goto_0
.end method
